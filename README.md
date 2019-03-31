# docker-serveo-server

## Usage

Server:

```bash
docker run \
  -it \
  -d \
  --name serveo-server \
  --net host \
  -e DOMAIN=<YOUR DOMAIN OR IP> \
  bxggs/serveo-server

# ex. to run serveo on a host accessible from "my-server.boggs.xyz"

docker run \
  -it \
  -d \
  --name serveo-server \
  --net host \
  -e DOMAIN=my-server.boggs.xyz \
  bxggs/serveo-server
```

Client:

```bash
ssh -p 2222 -R <REMOTE PORT>:localhost:<LOCAL PORT> <YOUR DOMAIN OR IP>

# ex. to make local machine's port 22 accessible from "my-server.boggs.xyz:9999"

ssh -p 2222 -R 9999:localhost:22 my-server.boggs.xyz
```

## Docs

* [Serveo Self-Host][serveo]

[serveo]: https://serveo.net/#self-host
