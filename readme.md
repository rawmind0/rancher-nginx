rancher-nginx
=============

rancher-nginx image based in rancher-base

To build

```
docker build -t <repo>/rancher-nginx:<version> .
```

To run:

```
docker run -it <repo>/rancher-nginx:<version> 
```

# How it works

* The docker has the entrypoint /usr/bin/start.sh, that check rancher-metadata server connectivity, starts nginx.
