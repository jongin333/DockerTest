FROM ubuntu:16.04
MAINTAINER Jongin <jongin333@gmail.com>

RUN apt-get update

RUN apt-get install -y \
	  git \
	  cpanminus \
	  python \
	  gcc \
	  g++ \
	  make \
	  zlib1g-dev 

RUN cpanm Switch \
	  Parallel::ForkManager \
	  Sort::Key::Natural  

RUN git clone https://github.com/jkimlab/GMASS \
	  && cd GMASS
	  && perl setup.pl install


