FROM golang:1.9

RUN go get -u github.com/moby/tool/cmd/moby
RUN go get -u github.com/linuxkit/linuxkit/src/cmd/linuxkit

RUN mkdir -p /src/github.com/hairyhenderson
RUN mkdir -p /src/github.com/DieterReuter
RUN mkdir -p /src/github.com/hypriot

RUN git clone https://github.com/hairyhenderson/image-builder-raw.git /src/github.com/hypriot/image-builder-raw
RUN git clone https://github.com/DieterReuter/image-builder-rpi64.git /src/github.com/DieterReuter/image-builder-rpi64
RUN git clone https://github.com/DieterReuter/rpi64-kernel.git /src/github.com/DieterReuter/rpi64-kernel
RUN git clone https://github.com/hypriot/os-rootfs.git /src/github.com/hypriot/os-rootfs