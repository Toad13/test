FROM ubuntu:latest

ENV DEBIAN_FRONTEND=noninteractive

USER root

RUN apt update && \
  apt install bash && \
  apt install nano && \
  apt install ansible -y && \
  apt install awscli -y

ENV ANSIBLE_GATHERING smart
ENV ANSIBLE_HOST_KEY_CHECKING false
ENV ANSIBLE_RETRY_FILES_ENABLED false
ENV ANSIBLE_SSH_PIPELINING True
ENV PYTHONPATH /ansible/lib
ENV PATH /ansible/bin:$PATH
ENV ANSIBLE_LIBRARY /ansible/library
 
WORKDIR /root/playbook


