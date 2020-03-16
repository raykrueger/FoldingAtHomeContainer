FROM nvidia/cuda:10.2-base

ENV DEBIAN_FRONTEND=noninteractive

ARG BASE=v7.4
ARG VERSION=7.4.4

RUN apt-get update \
	&& apt-get install -y curl ocl-icd-opencl-dev nvidia-opencl-dev \
	&& rm -rf /var/lib/apt/lists/* \
	&& curl --silent --fail -o /fahclient.deb https://download.foldingathome.org/releases/public/release/fahclient/debian-testing-64bit/${BASE}/fahclient_${VERSION}_amd64.deb \
	&& dpkg -x ./fahclient.deb / \
	&& rm /fahclient.deb

WORKDIR /var/lib/fahclient

ADD config.xml /etc/fahclient/config.xml

CMD ["/usr/bin/FAHClient", "/etc/fahclient/config.xml"]
