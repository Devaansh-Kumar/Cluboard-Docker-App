FROM python:3.9-slim-buster
FROM ubuntu

# declaring working directory
WORKDIR /code

# updating and installing pip
RUN apt-get update
RUN apt install -y python3-pip

# installing required dependencies
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

COPY . .

EXPOSE 8000
# running the server
CMD ["python3", "manage.py", "makemigrations", "&&", "python3", "manage.py", "migrate", "&&", "python3", "manage.py", "runserver", "0.0.0.0:8000"]