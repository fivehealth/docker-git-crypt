FROM python:3.8-buster
MAINTAINER 5 Health Inc <hello@botmd.io>

RUN apt update && apt install -y openssl libssl-dev xsltproc && \
    git clone https://github.com/AGWA/git-crypt && \
    cd git-crypt && \
    make && make install && \
    cd .. && \
    rm -rf git-crypt

CMD ["/bin/bash"]
