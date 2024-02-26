#!/bin/bash
echo "Login into ECR"
aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin 083097232877.dkr.ecr.us-east-1.amazonaws.com
echo "Building Images"
docker build -t amardeep .
echo "Tagging Images"
docker tag amardeep:latest 083097232877.dkr.ecr.us-east-1.amazonaws.com/amardeep:latest
echo "Pushing Image."
docker push 083097232877.dkr.ecr.us-east-1.amazonaws.com/amardeep:latest
echo "Image pushed to ECR completed."