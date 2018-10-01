#!/bin/bash
USERNAME="kkmann"
IMAGE="reproducibleresearchtutorial"
BUILDNAME=$USERNAME/$IMAGE

docker build -t $BUILDNAME .

docker push $BUILDNAME