
FROM docker AS docker-source
FROM debian:stretch

COPY --from=docker-source /usr/local/bin/docker /usr/local/bin/docker

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
    wget https://github.com/instrumenta/kubeval/releases/latest/download/kubeval-linux-amd64.tar.gz && \
    tar xf kubeval-linux-amd64.tar.gz && \
    cp kubeval /usr/local/bin && \
    rm -f kubeval-linux-amd64.tar.gz LICENSE README.md && \
    curl https://releases.hashicorp.com/terraform/0.12.21/terraform_0.12.21_linux_amd64.zip \
      -o terraform.zip && \
    unzip terraform.zip -d /bin && \
    rm -f terraform.zip && \
    pip3 install --upgrade pip && \
    pip3 install -U \
      ansible \
      crcmod && \
    export CLOUD_SDK_REPO="cloud-sdk-$(lsb_release -c -s)" && \
    echo "deb https://packages.cloud.google.com/apt $CLOUD_SDK_REPO main" > \
      /etc/apt/sources.list.d/google-cloud-sdk.list && \
    curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key add - && \
    apt-get update && \
    apt-get install -y \
      google-cloud-sdk-app-engine-go=281.0.0-0 \
      google-cloud-sdk-app-engine-java=281.0.0-0 \
      google-cloud-sdk-app-engine-python-extras=281.0.0-0 \
      google-cloud-sdk-app-engine-python=281.0.0-0 \
      google-cloud-sdk-bigtable-emulator=281.0.0-0 \
      google-cloud-sdk-cbt=281.0.0-0 \
      google-cloud-sdk-datalab=281.0.0-0 \
      google-cloud-sdk-datastore-emulator=281.0.0-0 \
      google-cloud-sdk-pubsub-emulator=281.0.0-0 \
      google-cloud-sdk=281.0.0-0 \
      kubectl && \
    gcloud config set component_manager/disable_update_check true && \
    gcloud config set core/disable_usage_reporting true && \
    gcloud config set metrics/environment github_docker_image && \
    gcloud --version && \
    docker --version && \
    kubectl version --client && \
    kubeval --version && \
    ansible --version && \
    terraform version

WORKDIR /manager

CMD [ "bash" ]
