FROM ubuntu
FROM python:3.9-alpine

WORKDIR /code

RUN apt-get update
RUN apt-get install -y python3
RUN apt install -y python3-pip

COPY requirements.txt requirements.txt

RUN pip install -r requirements.txt

COPY . .

EXPOSE 80
