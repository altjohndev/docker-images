
FROM debian:stretch

RUN apt-get -qqy update && \
    apt-get install -qqy \
      apt-transport-https \
      curl \
      gcc \
      git \
      gnupg \
      jq \
      lsb-release \
      openssh-client \
      openssl \
      python3-dev \
      python3-pip \
      python3-setuptools \
      unzip \
      wget && \
    pip3 install --upgrade pip && \
    pip3 install -U \
      ansible \
      crcmod && \
    ansible --version

WORKDIR /manager/ansible

CMD [ "sleep", "infinity" ]
