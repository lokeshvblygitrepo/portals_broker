# The following script forces ConcourseCI to check all workers for problematic resources.
# The script is very basic and can be improved upon, but iterates through all pipelines

# Use case:
# Using this script allows manually checking resources for the programmed pipeline types. In cases of static versioning in
# the pipeline configuration (see 'terraform_deploy' in service_build_deploy or node_build_deploy pipelines) it is required
# to force check the resource after the change for it to begin working. 
# The script WILL halt until timeout (which is 5 min in most cases) if a resource is failing to check.

for i in $(ls -d ../pipelines/*/*/); 
    do
        # Split path string
        IFS='/'
        read -a strarr <<< "$i"
        PIPELINE=${strarr[3]}

        echo Trying: ${PIPELINE%%/};
        fly -t keyspring check-resource --resource ${PIPELINE%%/}/terraform_deploy
        fly -t keyspring check-resource --resource ${PIPELINE%%/}/resource-build-java
        fly -t keyspring check-resource --resource ${PIPELINE%%/}/resource-devops.ci
        fly -t keyspring check-resource --resource ${PIPELINE%%/}/resource-build-nomad
    done