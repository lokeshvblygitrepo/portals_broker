#!/bin/bash
export ENV="mgmt-dr"
export FLYPASSWORD="changeme"
if [ $ENV == "mgmt" ]; then
   echo "fly -t keyspring login --team-name developer --concourse-url http://10.90.36.18:8080 -u admin1 -p"
   PIPELINE_DIR="pipelines"
   fly -t keyspring login --team-name developer --concourse-url http://10.90.36.18:8080 -u admin1 -p ${FLYPASSWORD}   
elif [ $ENV == "mgmt-dr" ]; then
   PIPELINE_DIR="pipelines-dr"
   echo "fly -t keyspring login --team-name developer --concourse-url http://10.92.36.18:8080 -u admin1 -p"
   fly -t keyspring login --team-name developer --concourse-url http://10.92.36.18:8080 -u admin1 -p ${FLYPASSWORD}
else
   error_exit "$LINENO: Error code: $?"  "ENV should be either mgmt or mgmt-dr ,Don't know $ENV environment"
fi
  
if [ $? -ne 0 ]; then
   error_exit "$LINENO: Error code: $?" "Error while trying to log in"
fi
fly -t keyspring sync
echo "Change directories to have all the fly command available"
### grep file for all fly commands and print them out
cd devops.concourseci/$PIPELINE_DIR
echo "Looping through folders to create pipelines"
#!/bin/bash
PWD=`pwd`
ROOT_PATH="$PWD"
PIPELINE_ROOT_PATH="$PWD/../pipelines/"
echo "root path is " $ROOT_PATH
PWD=`pwd`
ROOT_PATH="$PWD/../pipelines/"
PIPELINE_ROOT_PATH="$PWD"
echo "root path is " $ROOT_PATH

for path in $ROOT_PATH/*; do
#    echo "PATH : $path"
#    echo "Where am I? :"
#    pwd

    [ -d "${path}" ] || continue # if not a directory, skip
    dirname="$(basename "${path}")"
    DEPLOY_TYPE=$dirname

    echo "*******************************"
    echo "*******************************"
    echo "                               "
#    echo "Deploy Type : $DEPLOY_TYPE"

      for pipeline in $ROOT_PATH/$DEPLOY_TYPE/*; do
#	  echo "PIPELINE : $pipeline"
#	  echo "Where am I?"
#         pwd
          [ -d "${pipeline}" ] || continue # if not a directory, skip

          pipelinename="$(basename "${pipeline}")"
          PIPELINE_TO_DEPLOY=$pipelinename

         echo "pipeline to deploy: $PIPELINE_TO_DEPLOY"
         echo "deploy type  : $DEPLOY_TYPE"
          #echo "fly -t keyspring set-pipeline -p $PIPELINE_TO_DEPLOY -c $ROOT_PATH/$DEPLOY_TYPE/pipeline.yml -l $ROOT_PATH/$DEPLOY_TYPE/$ROOT_PATH/$PIPELINE_TO_DEPLOY/params.yml"
          if [ $DEPLOY_TYPE != "repo_builds" ] && [ $DEPLOY_TYPE != "testing" ]; then
	           fly -t keyspring set-pipeline -p $PIPELINE_TO_DEPLOY -c $PIPELINE_ROOT_PATH/$DEPLOY_TYPE/pipeline.yml -l $ROOT_PATH/$DEPLOY_TYPE/$PIPELINE_TO_DEPLOY/params.yml
             fly -t keyspring unpause-pipeline -p $PIPELINE_TO_DEPLOY
             fly -t keyspring expose-pipeline -p $PIPELINE_TO_DEPLOY

          fi
      done
done
