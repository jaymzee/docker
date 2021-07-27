FROM ubuntu:latest

RUN apt-get -y update
RUN apt-get install -y openssh-server x11-apps
RUN apt-get install -y i3
RUN apt-get install -y vim
RUN apt-get install -y python-tk

RUN echo X11UseLocalHost no >> /etc/ssh/sshd_config
RUN mkdir /var/run/sshd

EXPOSE 22

CMD ["/usr/sbin/sshd", "-D"]
