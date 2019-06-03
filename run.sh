#!/bin/bash

docker stop soap-ui-mock
docker rm soap-ui-mock

#docker run --name soap-ui-mock -p 7070:9090 -v /webapps/redbee/soap-ui-mock/entrypoint.sh:/entrypoint.sh --entrypoint=/entrypoint.sh -d saascolon/soap-ui-mock
#docker run --name soap-ui-mock -p 7070:9090 -v /home/lucas/proyectos/soap-ui-mock/project.xml:/project.xml	-v /home/lucas/proyectos/soap-ui-mock/entrypoint.sh:/entrypoint.sh --entrypoint=/entrypoint.sh -d saascolon/soap-ui-mock

docker run --name soap-ui-mock -p 7070:9090 -v /webapps/redbee/soap-ui-mock/project.xml:/project.xml -v /webapps/redbee/soap-ui-mock/entrypoint.sh:/entrypoint.sh --entrypoint=/entrypoint.sh -d saascolon/soap-ui-mock
