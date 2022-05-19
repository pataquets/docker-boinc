FROM ubuntu:jammy

ARG DEBIAN_FRONTEND=noninteractive
RUN \
  apt-get update && \
  apt-get -y install \
    boinc-client \
  && \
  apt-get clean && \
  rm -rf /var/lib/apt/lists/

COPY docker-entrypoint.sh /docker-entrypoint.sh

WORKDIR /var/lib/boinc-client/

EXPOSE 31416

ENTRYPOINT [ "/docker-entrypoint.sh", "boinc", "--allow_remote_gui_rpc" ]
CMD [ "--help" ]
