aws ecs create-cluster --cluster-name rishav --capacity-providers FARGATE
aws ecs register-task-definition --cli-input-json file://fargate-task-definition.json
aws ecs run-task --cluster rishav-cluster --task-definition rishav-td
aws ecs create-service --cluster rishav --service-name rishav-service --task-definition rishav-td --launch-type FARGATE --desired-count 1 --network-configuration "awsvpcConfiguration={subnets=[subnet-xxxxxxxxxxxxxxxxx],securityGroups=[sg-xxxxxxxxxxxxxxxxx],assignPublicIp=ENABLED}"
