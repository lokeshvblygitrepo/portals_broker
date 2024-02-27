# devops.concourseci 
Repository for Concourse CI

## Content of Repository
1. bosh - This is where the bosh build scripts and instructions are for building
a [Concourse CI](www.concourse-ci.org) cluster.
2. pipelines - These are all the Corvesta pipelines for building artifacts,
libraries, containers, jobs and deploying them to AWS, artifactory or
anywhere they should live.
3. scripts - These are scripts to be used to recreate concourse ci workers.


### Creating new pipelines
1. Create a new branch from master

2. Please add a new ECR repo for your new pipeline.  This can be found under
pipelines/repositories.  You will need to add an entry to the ecr.tf,
ecr_policies.tf and variables.tf files.  Please follow the pattern that has been established.  
The ECR name should match in your params.xml later.  The variables.tf entry is used by the 
aws_ecr_lifecycle_policy policy to remove untagged images after 7 days.

3. Find your respective folder under pipelines/ and create a new folder for
your pipeline and add a params.yml.
example `pipelines/service_build_deploy/helloworld/params.yml`.  Here you will
add your parameters for the pipeline.  You can reference
`pipelines/service_build_deploy/helloworld/params.yml` for these, depending on
your type of service will determine the params that you will need.  You should
be using the most current version of the devops.ci (CI_VERSION).  This can be
found at https://bitbucket.org/corvesta/devops.versions/src/master/ under the
message.

4. Now that you think your pipeline is ready you can create a pull request
from your new branch back to master.  Add all devops members as reviewers to
increase processing time.

Once the PR has been created a devops engineer will approve and merge.  This will
trigger pipeline to be created automatically.

If the repository exists for your service the pipeline will automatically try to
build and deploy your code.
