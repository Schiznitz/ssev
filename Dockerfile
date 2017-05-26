FROM ubuntu:yakkety

RUN add-apt-repository -y ppa:max-c-lv/shadowsocks-libev
RUN apt-get update
RUN apt install -y shadowsocks-libev

ENTRYPOINT ["/usr/local/bin/ss-server"]