FROM ubuntu
FROM python:3.9-alpine
FROM alpine

WORKDIR /code

RUN apk update
RUN apk add python3
# RUN apk add python3-pip
RUN pip --version

COPY requirements.txt requirements.txt

RUN pip install -r requirements.txt

COPY . .

EXPOSE 80
