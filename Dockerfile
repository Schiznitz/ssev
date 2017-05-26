FROM ubuntu:yakkety

RUN apt-get update
RUN sudo apt-get install -y software-properties-common

RUN add-apt-repository -y ppa:max-c-lv/shadowsocks-libev
RUN apt-get update
RUN apt-get install -y shadowsocks-libev

ENTRYPOINT ["/usr/local/bin/ss-server"]