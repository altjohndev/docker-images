FROM docker:19.03.6

RUN apk add --no-cache \
        curl \
        gcc \
        git \
        libc-dev \
        libffi-dev \
        make \
        openssl-dev \
        py-pip \
        python-dev \
    && pip install --upgrade pip \
    && pip install \
          --no-cache-dir \
          --ignore-installed \
          docker-compose==1.25.4
