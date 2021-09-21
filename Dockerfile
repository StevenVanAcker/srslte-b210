ARG UBUNTU_VERSION=latest
FROM ubuntu:${UBUNTU_VERSION}

ARG INSTALL_SCRIPT=install-srslte.sh

COPY ${INSTALL_SCRIPT} /opt/install-srslte.sh
RUN chmod +x /opt/install-srslte.sh
RUN /opt/install-srslte.sh

COPY data/epc.conf data/enb.conf data/user_db.csv data/ue.conf /root/.config/srsran/
