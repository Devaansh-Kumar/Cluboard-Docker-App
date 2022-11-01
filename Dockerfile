FROM python:3.9-slim-buster
FROM ubuntu
# declaring working directory
WORKDIR /code

RUN apt-get update
RUN apt install -y python3-pip

COPY requirements.txt requirements.txt

RUN pip install -r requirements.txt

COPY . .
RUN python3 manage.py makemigrations
RUN python3 manage.py migrate

EXPOSE 8000

CMD ["python3", "manage.py", "runserver", "0.0.0.0:8000"]