FROM ubuntu:latest

WORKDIR /script

COPY ortho.sh /bin/ortho
RUN chmod +x /bin/ortho

ENTRYPOINT ["ortho"]