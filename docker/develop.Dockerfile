FROM ubuntu:20.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update; apt-get install -y git python3 python3-pip

RUN pip3 install ipython jupyter black isort flake8