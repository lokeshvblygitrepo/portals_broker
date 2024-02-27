# #!/bin/bash
# ENV=$1
# workers_list=$(bosh -e $ENV vms --json | grep node/ | tr -d "\",\ " | sed 's/instance://')
# echo "Recreating following workers: "
# echo "$workers_list"
# while read -r worker; do
# echo "processing $worker"
# echo "you will need to manully run bosh -e $ENV recreate -d concourse ${worker}"
# echo "y" | bosh -e $ENV recreate -d concourse ${worker}
# echo "finished $worker"
# done <<< "$workers_list"
# echo "completed recreate of workers $worker_list"
