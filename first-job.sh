#!/bin/bash
aws ecr get-login-password --region us-east-2 | docker login --username AWS --password-stdin 331819426341.dkr.ecr.us-east-2.amazonaws.com

docker build -t tf-repo-petclinic .


docker tag tf-repo-petclinic:latest 331819426341.dkr.ecr.us-east-2.amazonaws.com/tf-repo-petclinic:latest


docker push 331819426341.dkr.ecr.us-east-2.amazonaws.com/tf-repo-petclinic:latest





