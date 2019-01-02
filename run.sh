#!/bin/bash

docker stop soap-ui-mock
docker rm soap-ui-mock

docker run --name soap-ui-mock -p 8082:9090 -v /home/usuario/proyectos/mockSoapUI/entrypoint.sh:/entrypoint.sh --entrypoint=/entrypoint.sh -d  soap-ui-mock
