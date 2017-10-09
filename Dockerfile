FROM golang:1.9

RUN go get -u github.com/moby/tool/cmd/moby
RUN go get -u github.com/linuxkit/linuxkit/src/cmd/linuxkit

RUN mkdir -p /src/github.com/hypriot \
  && git clone https://github.com/hypriot/image-builder-raw.git

