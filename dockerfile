FROM ubuntu:latest
MAINTAINER AlexanderFournier
ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y python3.9 python3.9-dev \
    python3-pip \
    tree \
    vim
COPY requirements.txt .
RUN pip install -r requirements.txt


ENV PYTHONPATH=/usr/local/app:$PYTHONPATH

WORKDIR /usr/local/app/app


CMD ["main.py"]
ENTRYPOINT ["python3"]