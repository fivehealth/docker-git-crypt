FROM python:3.6-stretch
MAINTAINER Yanchuan Sim <yanchuan@outlook.com>

RUN apt update && apt install -y openssl libssl-dev xsltproc && \
    git clone https://github.com/AGWA/git-crypt && \
    cd git-crypt && \
    make && make install && \
    cd .. && \
    rm -rf git-crypt

CMD ["/bin/bash"]
