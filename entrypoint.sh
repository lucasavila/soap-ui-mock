#!/bin/bash

echo "Execute Entrypoint"

source $HOME/.sdkman/bin/sdkman-init.sh

bash /root/SoapUI-5.4.0/bin/mockservicerunner.sh -p 9090 "/project.xml"
