FROM ubuntu
ENV DEBIAN_FRONTEND noninteractive
ENV TZ Etc/UTC
RUN apt -y update
RUN apt install -y git sudo software-property-common

WORKDIR /ansible
COPY . .

RUN ./ansible-install.sh

CMD ./ansible-run.sh
