FROM ubuntu:20.04
ENV DEBIAN_FRONTEND noninteractive
RUN export DEBIAN_FRONTEND="noninteractive"
RUN apt-get update && apt-get install -y \
  python3 \
  python3-dev \
  python3-pip \
  python-is-python3 \
  git \
  libpq-dev \
  libffi-dev \
  libjpeg-dev \
  zlib1g-dev \
  build-essential \
  libssl-dev \
  cargo \
  pkg-config \
  && rm -rf /var/lib/apt/lists/*

COPY . /root/trackdirect

RUN pip install --upgrade pip
RUN pip install -r /root/trackdirect/requirements.txt
