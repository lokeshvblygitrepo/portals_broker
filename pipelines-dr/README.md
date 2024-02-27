# HOW TO USE

# Structure
 1. Top level is the type of build pipeline you want to use.
 2. Following subdirectories will have the params for their particular pipeline.
 If you don't see a top level that fits a pipeline you are trying to build,
 it is time YOU create one. :)

# Directories and structure
 1. java_lib_builds - this pipeline is for building .JAR files that will live
 in Artifactory and will be consumed by other code bases.  You can think of these
 as core libraries.
 2. node_build_deploy - this pipeline is for building node js portal code and
 deploying service to AWS.
 3. postgres_db_deploys - this pipeline is for deploying postgres databases to
 AWS RDS.
 4. proxy_build_deploy - this pipeline is for building mule containers and
 deploying service to AWS
 5. repo_builds - this pipeline is for building bitbucket repositories and
 versioning them.  This will be mainly used by DEVOPS team. These do not
 automatically build and must be maintained manually and ran with fly commands.
 4. resource-images - this pipeline is for building other resource images for
 concourse to used with other builds.
 5. service_deployments - this pipeline is for deploying services to AWS.
 6. testing - this is used to test out new pipeline functionality or try new
 things.
 7. java_container_job_builds - this pipeline is for building thin containers which will run java code to be used as nomad jobs. These containers will not be launched in ECS, they will just be stored in the container registry
 8. mule_build_deploy - this pipeline is for building and deploying to the mule cluster.  
 This will be to replace the current `proxy_build_deploy`.
 9. talend_build_deploy - this pipeline is for building containers and registering
 nomad jobs.
 10. lambda_deploy - this pipeline is for deploying lambda jobs to AWS.
 11. tools_build_deploy - this pipeline is for deploying to the MGMT tools cluster.
 12. terraform_deploy - this pipeline is used for devops.infra.* code deploys.
