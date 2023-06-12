FROM ubuntu:22.04

RUN mkdir -p /workdir/sqsym_aeg
WORKDIR /workdir/sqsym_aeg
COPY . /workdir/sqsym_aeg

RUN chmod +x setup.sh
RUN ./setup.sh
