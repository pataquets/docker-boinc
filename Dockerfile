FROM pataquets/ubuntu:latest

RUN \
	apt-get update && \
	DEBIAN_FRONTEND=noninteractive \
		apt-get -y install \
			boinc-client \
	&& \
	apt-get clean && \
	rm -rf /var/lib/apt/lists/

WORKDIR /var/lib/boinc-client/

EXPOSE 31416

ENTRYPOINT [ "boinc" ]
CMD [ "--help" ]
