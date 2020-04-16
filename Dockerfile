ARG UBUNTU_VERSION=latest
FROM ubuntu:${UBUNTU_VERSION}

COPY install-srslte.sh /opt
RUN chmod +x /opt/install-srslte.sh
RUN /opt/install-srslte.sh

