FROM alpine:3.13.1

RUN apk update &&\
    apk add alpine-sdk

RUN curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y

RUN echo 'nameserver 8.8.8.8' > /etc/resolv.conf &&\
    . $HOME/.cargo/env &&\
    cargo install --git https://github.com/Fluidex/plonkit

RUN plonkit --version
