FROM ubuntu:16.04
COPY . .
USER root
RUN apt-get update && apt-get install -y --no-install-recommends \
    binutils \
    build-essential \
    sysstat \
    strace \
    zsh \
    gnuplot \
    vim \
    sudo \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*
