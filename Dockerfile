FROM Ubuntu:16.04

RUN add-apt-repository ppa:max-c-lv/shadowsocks-libev
RUN apt-get update
RUN apt install shadowsocks-libev

ENTRYPOINT ["/usr/local/bin/ss-server"]