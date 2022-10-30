FROM ubuntu

WORKDIR /code

RUN apt-get update
RUN apt-get install python3
RUN apt install python3-pip

COPY requirements.txt requirements.txt

RUN pip install -r requirements.txt

COPY . .

EXPOSE 80
