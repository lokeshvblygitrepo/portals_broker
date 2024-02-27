#!/bin/bash
PWD=`pwd`
ROOT_PATH="$PWD"
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
	           fly -t keyspring set-pipeline -p $PIPELINE_TO_DEPLOY -c $ROOT_PATH/$DEPLOY_TYPE/pipeline.yml -l $ROOT_PATH/$DEPLOY_TYPE/$PIPELINE_TO_DEPLOY/params.yml
             fly -t keyspring unpause-pipeline -p $PIPELINE_TO_DEPLOY
             fly -t keyspring expose-pipeline -p $PIPELINE_TO_DEPLOY

          fi
      done
done
