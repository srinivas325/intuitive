FROM ubuntu:22.04

### Install the following dependenices in the docker image
# 
# curl iproute2 sshfs unzip less groff 
# Install kubectl from https://dl.k8s.io/release/v1.23.6/bin/linux/amd64/kubectl
#
# Install AWS CLI from https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip
# 
# Install the above tools, unpack and make it available in the PATH executable
###
LABEL end="dev"
LABEL maintainer="email@outlook.com"

RUN apt-get update && apt-get install -y \
    curl iproute2 sshfs unzip less groff

RUN apt-get clean

RUN curl -LO "https://dl.k8s.io/release/v1.23.6/bin/linux/amd64/kubectl" \
    && chmod +x ./kubectl \
    && mv ./kubectl /usr/local/bin/kubectl && kubectl version --client

RUN curl https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip -o /tmp/awscli-linux.zip \
    && cd /tmp && unzip awscli-linux.zip && ./aws/install && rm -rf ./aws

RUN useradd -ms /bin/bash builder
USER builder

CMD bash