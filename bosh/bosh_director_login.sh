#! /bin/sh

echo Run it like this: 'source bosh_director_login.sh'

bosh alias-env mgmt -e 10.90.36.6 --ca-cert <(bosh int ./creds.yml --path /director_ssl/ca)

# Log in to the Director
export BOSH_CLIENT=admin
export BOSH_CLIENT_SECRET=`bosh int ./creds.yml --path /admin_password`

# Query the Director for more info
bosh -e mgmt env
