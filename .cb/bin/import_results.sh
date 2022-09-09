#!/bin/bash

curl -H "Content-Type: multipart/form-data" -u admin:admin -F "file=@output.xml" "http://192.168.56.102/rest/raven/1.0/import/execution/robot?projectKey=ROB&testPlanKey=ROB-12&testEnvironments=$BROWSER"
