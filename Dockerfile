FROM debian:stretch

RUN apt-get update && apt-get install -y --no-install-recommends openssh-client

ADD https://storage.googleapis.com/serveo/download/2018-05-08/serveo-linux-amd64 /usr/local/bin/serveo

RUN chmod +x /usr/local/bin/serveo

ADD entrypoint /

ENV PORT=2222

EXPOSE 2222

ENTRYPOINT ["/entrypoint"]

CMD ["docker-start"]
