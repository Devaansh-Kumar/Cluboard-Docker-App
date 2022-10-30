FROM ubuntu
FROM python:3.9-alpine
FROM alpine

WORKDIR /code

RUN apk update  
RUN apk add --virtual build-deps gcc python-dev musl-dev
RUN apk add py-pip

COPY requirements.txt requirements.txt

RUN pip install -r requirements.txt

COPY . .

EXPOSE 80
