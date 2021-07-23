## Ubuntu 20.04
This Dockerfile is based on `ubuntu:latest` and adds `ssh`, `vim`,
and `x11-apps`. The default command is the sshd daemon.

### Running the image in a new container
```
docker run -d -v PATH:/mnt/code -p PORT:22 -h ubuntu1 --name ubuntu1 IMAGE
```
In the running container, create a user account to ssh with. On the host, the environment should have a variable set `DISPLAY=localhost:0.0`.

### Start stopped container
```
docker start ubuntu1
```

### X11 forwarding
```
ssh -Y -p port machine_ip
