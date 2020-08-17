FROM docker:19.03.12

RUN apk add --no-cache \
        curl \
        gcc \
        git \
        libc-dev \
        libffi-dev \
        make \
        openssl-dev \
        py-pip \
        python3 \
        python3-dev \
    && pip3 install --upgrade pip setuptools \
    && pip3 install \
          --no-cache-dir \
          --ignore-installed \
          docker-compose==1.26.2
