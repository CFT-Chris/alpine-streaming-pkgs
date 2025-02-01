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
        nasm
    apk add --no-cache \
        gstreamer \
        gst-plugins-base \
        gst-plugins-good \
        gst-plugins-ugly \
        gst-plugins-bad \
        gst-libav \
        gst-alsa \
        gst-gl \
        gst-gtk3 \
        gst-qt5 \
        gst-pulseaudio \
        gst-tools \
        gst-dev \
        gst-plugins-base-dev \
        gst-plugins-good-dev \
        gst-plugins-ugly-dev \
        gst-plugins-bad-dev \
    apk add --no-cache ffmpeg
fi
