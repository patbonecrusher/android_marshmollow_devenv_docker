FROM openjdk:7
RUN apt-get update && apt-get install -y \
  build-essential \
  libc6-dev-i386 \
  bison \
  gnupg \
  flex \
  gperf \
  zip \
  curl \
  zlib1g-dev \
  gcc-multilib \
  g++-multilib \
  libc6-dev-i386 \
  lib32ncurses5-dev \
  x11proto-core-dev \
  libx11-dev \
  lib32z-dev \
  libgl1-mesa-dev \
  libxml2-utils \
  xsltproc \
  unzip \
  gawk \
  bc \
  rsync \
  && rm -rf /var/lib/apt/lists/* \
  && cd /tmp \
  && wget https://www.python.org/ftp/python/3.6.3/Python-3.6.3.tgz \
  && tar -xvf Python-3.6.3.tgz \
  && cd Python-3.6.3 \
  && ./configure --enable-optimizations \
  && make -j8 && make install 

