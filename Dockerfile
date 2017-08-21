# ubuntu-xenial-miniconda: latest
FROM ubuntu:xenial

RUN apt-get update -y; \
	apt-get upgrade -y;

RUN apt-get install -y wget; \
    apt-get install -y bzip2;

RUN wget -O /tmp/miniconda_latest.sh -c http://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh;

RUN chmod u+x /tmp/miniconda_latest.sh; \
	sync; \
	/tmp/miniconda_latest.sh -b;

ENV PATH /root/miniconda3/bin:$PATH
