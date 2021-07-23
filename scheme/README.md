## MIT Scheme

This Dockerfile builds a container capable of executing the `mechanics` (also
called `scmutils`) library that Wisdom and Sussman use in their course at MIT:
Classical Mechanics: A Computational Approach.

This Dockerfile is based on the `sritchie/mechanics` image by Sam Ritchie and
adds `ssh` and `vim`.

### Running the image in a new container
```
docker run -it -v /c/Users/James/source/docker/scheme/src:/mnt/code -h scheme --name scheme -p PORT:22 IMAGE
```

### X11 forwarding
Make sure the environment has the variable `DISPLAY=localhost:0.0` set.
Create a user in the running container using `exec`, then ssh into it with:
```
ssh -Y -p PORT MACHINE_IP
```
