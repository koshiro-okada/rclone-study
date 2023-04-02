FROM quay.io/centos/centos:stream8

RUN yum update -y && \
    yum install -y openssh-server

RUN sed -ri 's/^#PasswordAuthentication yes/PasswordAuthentication no/' /etc/ssh/sshd_config \
 && echo 'root:password' | chpasswd

COPY sftp-server/.ssh/ /root/.ssh/
RUN chmod 700 /root/.ssh
RUN chmod 644 /root/.ssh/authorized_keys

COPY sftp-server/SAMPLE /root/SAMPLE

WORKDIR /root

EXPOSE 22
CMD ["/usr/sbin/sshd", "-D"]
