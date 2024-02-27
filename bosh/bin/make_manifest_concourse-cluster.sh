#!/bin/bash
#
#  Please set the following environment variables:
#  $DB_PASSWORD
#  $CONCOURSE_URL
#  $GITHUB_ORG
#  $GITHUB_CLIENT_ID
#  $GITHUB_CLIENT_SECRET

DIRECTOR_UUID="405153b1-1ef8-4876-a6c2-fe3791dca558"

echo "director_uuid = $DIRECTOR_UUID"
echo "concourse url = $CONCOURSE_URL"

cat >concourse.yml <<YAML
---
name: concourse

director_uuid: $DIRECTOR_UUID

releases:
- name: concourse
  version: 3.6.0
- name: garden-runc
  version: latest
- name: postgres
  version: "22"

stemcells:
- alias: trusty
  os: ubuntu-trusty
  version: latest

instance_groups:
- name: web
  instances: 1
  vm_type: concourse_web
  stemcell: trusty
  azs: [z1]
  networks: [{name: ops_services}]
  jobs:
  - name: atc
    release: concourse
    properties:
      # replace with your CI's externally reachable URL e.g https://blah
      external_url: $CONCOURSE_URL
      postgresql_database: &atc_db atc
      basic_auth_password: "admin"
      basic_auth_username: "admin"
  - name: tsa
    release: concourse
    properties: {}

- name: db
  instances: 1
  vm_type: concourse_db
  stemcell: trusty
  persistent_disk_type: default
  azs: [z1]
  networks: [{name: ops_services}]
  jobs:
  - name: postgres
    release: postgres
    properties:
     databases:
      port: 5432
      databases:
      - name: atc
        roles:
        - name: atc
          password: $DB_PASSWORD

- name: worker
  instances: 1
  vm_type: concourse_worker
  stemcell: trusty
  azs: [z1]
  networks: [{name: ops_services}]
  jobs:
  - name: groundcrew
    release: concourse
    properties: {}
  - name: baggageclaim
    release: concourse
    properties: {}
  - name: garden
    release: garden-runc
    properties:
      garden:
        listen_network: tcp
        listen_address: 0.0.0.0:7777

update:
  canaries: 1
  max_in_flight: 1
  serial: false
  canary_watch_time: 1000-60000
  update_watch_time: 1000-60000
