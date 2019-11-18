FROM debian:buster-slim

RUN apt-get update \
  && apt-get install -y --no-install-recommends openssh-client curl \
  && rm -rf /var/lib/apt/lists/* \
  && curl -o /usr/local/bin/serveo https://storage.googleapis.com/serveo/download/2018-05-08/serveo-linux-amd64 \
  && chmod +x /usr/local/bin/serveo

COPY entrypoint /entrypoint

ENV PORT=2222

EXPOSE 2222

ENTRYPOINT ["/entrypoint"]

CMD ["docker-start"]
