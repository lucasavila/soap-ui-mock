FROM ubuntu:14.04

RUN  apt-get update && apt-get install -y wget

RUN apt-get -y install zip && apt-get -y install curl

RUN curl -s "https://get.sdkman.io" | bash

RUN /bin/bash -c "source $HOME/.sdkman/bin/sdkman-init.sh"

RUN /bin/bash -c "source $HOME/.bashrc"

RUN /bin/bash -c "source $HOME/.sdkman/bin/sdkman-init.sh && echo -n | sdk install java 8.0.212-zulu"

RUN /bin/bash -c "wget https://s3.amazonaws.com/downloads.eviware/soapuios/5.4.0/SoapUI-5.4.0-linux-bin.tar.gz"

RUN tar -xzf SoapUI-5.4.0-linux-bin.tar.gz -C /root/

RUN ls /root/

#ADD project.xml /project.xml

ADD entrypoint.sh /entrypoint.sh

#ENTRYPOINT ["/entrypoint.sh"]
