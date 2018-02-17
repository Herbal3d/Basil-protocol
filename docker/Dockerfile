# Dockerfile for building the libraries for Basil.
# This image has protobuf and nanomsg and general build tools.
# The flow is to create an image with this Dockerfile that includes
#    all the current tools and then to run the image with a volume
#    mapped to a local directory to hold the created libraries.
#    These libraries include:
#       Basil-protocol stubs
#       node-nanomsg

# FROM alpine
FROM ubuntu:latest

ENV TARGET=Release
# ENV TARGET=Debug

# An account is created in the docker file for building and running the app.
# Set the real password in the calling environment. This is just a default.
ENV USER=basil
ENV USER_PASSWORD=basilbasilbasil

LABEL Version="0.1"
LABEL Description="Docker image for building libraries for Basil virtual world viewer"

# add the development environment and base tools
# build-essential include g++, gcc, libc, libc-dev, make
RUN apt-get update \
    && apt-get upgrade -y \
    && apt-get install -y \
        apt-transport-https \
        build-essential \
        autoconf \
        automake \
        libtool \
        unzip \
        cmake \
        curl \
        git \
        vim \
    && apt-get clean \
    && rm -rf /tmp/* var/tmp/* \
    && rm -rf /var/lib/apt/lists/*

# Add and switch to user
# (From https://stackoverflow.com/questions/27701930/add-user-to-docker-container)
RUN adduser --disabled-password --gecos 'Convoar user' ${USER} \
    && echo "${USER}:${USER_PASSWORD}" | chpasswd
WORKDIR /home/${USER}
USER ${USER}:${USER}

# Fetch and build protobuf compiler
RUN cd /home/${USER} \
    && git clone https://github.com/google/protobuf.git \
    && cd protobuf \
    && ./autogen.sh \
    && ./configure --prefix=/usr \
    && make \
    && make check

# Fetch 

# COPY run.opensim.sh /home/opensim

# exit

# The simulator defaults to port 9000
# All ports are usually over-ridden by the 'docker run' command parameters.
# EXPOSE 9000/tcp
# EXPOSE 9000/udp

# The configuration of the region can be supplied via the 'config' subdirectory
# VOLUME /home/opensim/opensim/bin/config
