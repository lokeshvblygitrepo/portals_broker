# #!/bin/bash
# echo Usage: ./restart-worker-workers.sh mgmt
# ENV=$1
# echo ENV=$ENV
# workers_list=$(bosh -e $ENV vms --json | grep worker/ | tr -d "\",\ " | sed 's/instance://')
# echo "Restarting following workers: "
# echo "$workers_list"
# while read -r worker; do
# echo "processing $worker"
# echo "you will need to manully run bosh -e $ENV restart -d concourse ${worker}"
# echo "y" | bosh -e $ENV restart -d concourse ${worker}
# echo "finished $worker"
# done <<< "$workers_list"
# echo "completed restart of workers $worker_list"
