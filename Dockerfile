FROM python:3.9-alpine
FROM alpine

WORKDIR /code

RUN apk update && apk upgrade -y && apk install gcc
RUN apk add py-pip

COPY requirements.txt requirements.txt

RUN pip install -r requirements.txt

COPY . .

EXPOSE 80
