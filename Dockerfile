FROM ubuntu:jammy

ARG DEBIAN_FRONTEND=noninteractive
RUN \
  apt-get update && \
  apt-get -y install \
    boinc-client \
  && \
  apt-get clean && \
  rm -rf /var/lib/apt/lists/

WORKDIR /var/lib/boinc-client/

EXPOSE 31416

ENTRYPOINT [ "boinc", "--allow_remote_gui_rpc" ]
CMD [ "--help" ]
