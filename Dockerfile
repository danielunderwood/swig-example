FROM debian:10

RUN apt-get update && \
    apt-get install -y build-essential cmake swig python-dev python-pip

COPY . /app

WORKDIR /app
RUN mkdir build && \
    cd build && \
    cmake .. && \
    make -j "$(nproc)" && \
    make install && \
    make install-python