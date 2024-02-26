#!/bin/bash

AWS_REGION="us-east-1"
ECR_REPO="amardeep"
EC2_INSTANCE_IP="54.196.22.176"
EC2_USER="amardeep"
aws ecr get-login-password --region $AWS_REGION | docker login --username AWS --password-stdin 083097232877.dkr.ecr.us-east-1.amazonaws.com
docker pull 083097232877.dkr.ecr.us-east-1.amazonaws.com/amardeep:latest
docker stop amardeep || true
docker rm amardeep|| true
docker run -d --name amardeep -p 80:80 083097232877.dkr.ecr.us-east-1.amazonaws.com/amardeep:latest
echo "Deployment complete."
