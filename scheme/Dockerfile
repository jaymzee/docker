FROM sritchie/mechanics

RUN apt-get -y update
RUN apt-get install -y openssh-server x11-apps vim
RUN echo X11UseLocalHost no >> /etc/ssh/sshd_config

EXPOSE 22
