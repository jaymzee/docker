## Alpine Linux

This Dockerfile is based on the alpine image and adds gcc and`gdb

### Running the image in a new container
```
docker run -it -v LOCAL_PATH:/mnt/code -h alpine --name alpine IMAGE
```
