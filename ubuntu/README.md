create a new container
```
docker run -d -v /c/Users/James/source/docker/ubuntu:/mnt/code -p 2222:22 -h ubuntu1 --name ubuntu1 ubuntu:x11
```
in the container create a user account to ssh with

on the host the environment should have a variable:
DISPLAY=localhost:0.0

ssh into the container using something like:
```
ssh -Y -p 2222 joe@192.168.99.102
