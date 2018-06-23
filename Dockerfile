FROM debian:jessie

MAINTAINER João Pedro Menegali Salvan Bitencourt (joao.ms@aluno.ifsc.edu.br)

RUN export DEBIAN_FRONTEND=noninteractive && \
    apt update && \
    apt -y -q upgrade && \
    apt -y -q install phpldapadmin && \
    apt-get clean && \
    apt-get clean cache && \
    unset DEBIAN_FRONTEND && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* /root/.bash_history

ENTRYPOINT service apache2 start && bash
