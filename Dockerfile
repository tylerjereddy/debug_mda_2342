FROM i386/ubuntu:bionic

RUN apt-get update && apt-get install -y \
    git \
    libfreetype6-dev \
    python3 \
    python3-pip

ENV PATH=/root/.local/bin:$PATH
RUN python3 -m pip install --user --upgrade pip setuptools
RUN python3 -m pip install --user --upgrade pytest pytest-xdist
RUN python3 -m pip install --user --upgrade cython


RUN git clone https://github.com/MDAnalysis/mdanalysis.git
RUN python3 -m pip install --user --upgrade numpy scipy
RUN python3 -m pip install --user --upgrade hypothesis

# install develop branch / a few more deps
# then container is ready for testing cycles
RUN cd mdanalysis/package && \
    python3 setup.py install --user
