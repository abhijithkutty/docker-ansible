FROM ubuntu:latest
RUN apt-get update && apt-get install -y openssh-server
COPY ./id_rsa.pub /root/.ssh/
RUN touch /root/.ssh/authorized_keys
RUN cat /root/.ssh/id_rsa.pub >> /root/.ssh/authorized_keys
RUN chmod 600 /root/.ssh/authorized_keys
RUN chmod 700 /root/.ssh/
EXPOSE 22
CMD ["/usr/sbin/sshd", "-D"]
