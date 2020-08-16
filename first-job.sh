#!/bin/bash
aws ecr get-login-password --region us-east-2 | docker login --username AWS --password-stdin 331819426341.dkr.ecr.us-east-2.amazonaws.com

docker build -t petclinic .

docker tag petclinic:latest 331819426341.dkr.ecr.us-east-2.amazonaws.com/petclinic:latest

docker push 331819426341.dkr.ecr.us-east-2.amazonaws.com/petclinic:latest




