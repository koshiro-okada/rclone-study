FROM quay.io/centos/centos:stream8

RUN yum update -y && \
    yum install -y openssh-clients && \
    yum install epel-release -y && \
    yum install sudo -y && \
    yum install unzip -y && \
    yum install p7zip -y

# install rclone
RUN sudo -v ; curl https://rclone.org/install.sh | sudo bash

COPY id_rsa /root/id_rsa_sftp_server
RUN chmod 600 /root/id_rsa_sftp_server

WORKDIR /root
