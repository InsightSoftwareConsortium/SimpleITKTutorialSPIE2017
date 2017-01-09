FROM thewtex/jupyter-notebook-debian
MAINTAINER Insight Software Consortium <community@itk.org>

USER root

RUN apt-get update && apt-get install -y \
  git \
  python3 \
  python3-matplotlib \
  python3-numpy \
  python3-scipy \
  wget

RUN wget https://bootstrap.pypa.io/get-pip.py && python3 get-pip.py

ADD requirements.txt ./
ADD README.rst ./
ADD "*.ipynb" ./
ADD "*.py" ./
ADD Data ./Data
ADD Output ./Output
RUN sudo pip3 install -r requirements.txt
RUN sudo chown -R jovyan.jovyan ./*
