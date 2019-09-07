FROM i386/ubuntu:bionic

RUN apt-get update && apt-get install -y \
    git \
    python3 \
    python3-pip

RUN git clone https://github.com/MDAnalysis/mdanalysis.git
