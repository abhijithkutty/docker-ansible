FROM ubuntu
RUN apt-get update
RUN apt-get install python2 ansible openssh-client vim sshpass iputils-ping -y
RUN mkdir /etc/ansible
RUN echo "host ansible_host=remote-host" > /etc/ansible/hosts
RUN echo "[defaults]\n host_key_checking = False\n inventory = /etc/ansible/hosts" > /etc/ansible/ansible.cfg
COPY ./client/id_rsa.pub /root/.ssh/
COPY ./client/id_rsa /root/.ssh/
CMD ["/bin/bash"]
