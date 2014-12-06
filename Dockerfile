FROM pataquets/ubuntu:latest

RUN DEBIAN_FRONTEND=noninteractive \
	apt-get update && \
	apt-get -y install \
		boinc-client \
	&& \
	apt-get clean && \
	rm -rf /var/lib/apt/lists/

WORKDIR /var/lib/boinc-client/

ENTRYPOINT [ "boinc" ]
CMD [ "--help" ]
