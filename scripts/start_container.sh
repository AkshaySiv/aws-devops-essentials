#!/bin/bash

docker pull akshaysiv/sample-html:latest

docker run -d -p 80:80 --name my-app akshaysiv/sample-html:latest