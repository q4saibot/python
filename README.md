# python
Python

## Build
```shell
docker builder build \
    --tag q4saibot/python \
    --pull \
    .
```
## Build from GitHub
```shell
docker builder build \
    --tag q4saibot/python \
    --pull \
    https://github.com/q4saibot/python.git#main
```
## Run interactive
```shell
docker container run \
    --interactive \
    --tty \
    --volume data:/data \
    --name="Python" \
    q4saibot/python
```
## Run background
```shell
docker container run \
    --detach \
    --volume data:/data \
    --name="Python" \
    q4saibot/python
```

```shell
    --detach
    --expose 80:80
    --hostname="python"
    --restart=always
    --rm
```
