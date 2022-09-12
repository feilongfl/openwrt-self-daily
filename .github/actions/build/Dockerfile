FROM ubuntu:22.04

# config system
# COPY ./sources.list /etc/apt/
RUN apt update -y && apt upgrade -y
RUN apt install -y build-essential wget \
    build-essential gawk gcc-multilib flex git gettext \
    libncurses5-dev libssl-dev python3-distutils rsync unzip zlib1g-dev
RUN apt install -y fish sudo vim

# config user
RUN useradd -ms /bin/bash feilong \
    && echo 'feilong:feilong' | chpasswd \
    && echo "feilong ALL=(ALL) NOPASSWD: ALL" >/etc/sudoers.d/feilong \
    && chmod 0440 /etc/sudoers.d/feilong
USER feilong:feilong
WORKDIR /home/feilong
