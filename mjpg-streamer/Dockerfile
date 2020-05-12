# got this from https://hub.docker.com/r/badsmoke/mjpg-streamer
# MAINTAINER badsmoke <dockerhub@badcloud.eu>
FROM ubuntu:18.04

WORKDIR /mjpg-streamer/mjpg-streamer-experimental
RUN apt-get update \
  && apt-get install -y git cmake make build-essential libjpeg-dev imagemagick subversion libv4l-dev checkinstall libjpeg8-dev libv4l-0 \
  && git clone https://github.com/jacksonliam/mjpg-streamer.git \
  && cd mjpg-streamer/mjpg-streamer-experimental \
  && make USE_LIBV4L2=true clean all \
  && make install \
  && cat docker-start.sh \
  && chmod +x docker-start.sh
COPY ./entrypoint.sh /
EXPOSE 8080/TCP
ENTRYPOINT ["/entrypoint.sh"]
