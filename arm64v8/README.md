# exploring arm processor architecture

## To enable other exec formats in docker containers run:
```
$ docker run --rm --privileged multiarch/qemu-user-static --reset -p yes
```


## start a new container for Alpine Linux on arm64v8
```
$ docker run -it -v /c/Users/James/source/docker/arm64v8:/mnt/code -h arm1 arm64v8/alpine
```
