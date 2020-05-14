FROM ubuntu:16.04
COPY . .
RUN apt-get update && apt-get install -y --no-install-recommends\
    binutils \
    build-essential \
    sysstat \
    strace \
    zsh \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*
