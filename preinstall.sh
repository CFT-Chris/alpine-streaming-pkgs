#!/bin/sh

if [ "$(cat /etc/os-release | grep ^ID= | cut -d= -f2)" = "alpine" ] && [ "$(id -u)" = "0" ]; then
    apk add --no-cache \
        python3 \
        py3-pip \
        libuv \
        openssl-dev \
        libc-dev \
        libgcc \
        libstdc++ \
        make \
        gcc \
        g++ \
        automake \
        autoconf \
        libtool \
        nasm \
        gstreamer \
        gst-plugins-base \
        gst-plugins-good \
        gst-plugins-ugly \
        gst-plugins-bad \
        gst-libav \
        ffmpeg
fi
