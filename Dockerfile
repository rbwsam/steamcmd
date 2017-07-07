FROM debian:stretch-slim
MAINTAINER rbwsam <rbwsam@gmail.com>
RUN apt update && apt install -y lib32gcc1 curl
RUN mkdir -p /opt/steamcmd
WORKDIR /opt/steamcmd
RUN curl -sqL "https://steamcdn-a.akamaihd.net/client/installer/steamcmd_linux.tar.gz" | tar zxvf -
ENTRYPOINT ["./steamcmd.sh"]
