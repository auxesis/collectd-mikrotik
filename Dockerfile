FROM ubuntu:xenial

# Build dependencies
RUN apt-get update
RUN apt-get install -y build-essential
RUN apt-get install -y wget
RUN apt-get install -y git
RUN apt-get install -y automake autoconf
RUN apt-get install -y libltdl7 libtool libtool-bin
RUN apt-get install -y libgcrypt20-dev libltdl-dev
RUN apt-get install -y libgcrypt20

# Ruby dependencies
RUN apt-get install -y ruby ruby-dev rubygems
RUN gem install --no-ri --no-rdoc fpm

# Copy the project
COPY . /build
WORKDIR /build

# Build
RUN make
