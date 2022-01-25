FROM ubuntu:latest
MAINTAINER AlexanderFournier
ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y python3.9 python3.9-dev \
    python3-pip \
    tree \
    vim
COPY requirements.txt .
RUN pip install -r requirements.txt

COPY /app /usr/local/app

ENV PYTHONPATH=usr/local/app/pyarrow:usr/local/app/pyarrow/pyarrow:$PYTHONPATH