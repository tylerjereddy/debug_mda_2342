FROM ubuntu:18.04

RUN apt-get update && apt-get install -y \
    git

RUN git clone https://github.com/MDAnalysis/mdanalysis.git
