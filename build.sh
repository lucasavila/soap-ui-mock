#!/bin/bash

docker stop soap-ui-mock
docker rm soap-ui-mock
docker rmi saascolon/soap-ui-mock

docker build -t saascolon/soap-ui-mock .
