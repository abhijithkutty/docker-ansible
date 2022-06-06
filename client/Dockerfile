FROM ubuntu:latest
RUN apt-get update
RUN apt-get install python2 openssh-server vim -y
RUN sed -i 's/#PasswordAuthentication yes/PasswordAuthentication no/' /etc/ssh/sshd_config
RUN service ssh restart
RUN sleep 10
COPY ./id_rsa.pub /root/.ssh/
RUN touch /root/.ssh/authorized_keys
RUN cat /root/.ssh/id_rsa.pub >> /root/.ssh/authorized_keys
RUN chmod 600 /root/.ssh/authorized_keys
RUN chmod 700 /root/.ssh/
EXPOSE 22
CMD ["/bin/bash"]
