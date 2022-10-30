FROM ubuntu
FROM python:3.9-alpine
FROM alpine

WORKDIR /code

RUN apk update
RUN apk install python3
RUN apk install python3-pip

COPY requirements.txt requirements.txt

RUN pip install -r requirements.txt

COPY . .

EXPOSE 80
