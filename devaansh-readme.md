# Dockerized a Django application

Hi, this is Devaansh Kumar, Second Year CSE BTech student submitting my work to containerize the given Cluboard application using Docker. Below you will find the procedure to create the docker container step by step.

<h2> Guide to Run Application </h2>

<h3> Cloning the project </h3>

First fork the project and clone it to your local machine
```shell
git clone https://github.com/Devaansh-Kumar/Cluboard-Docker-App.git
```

<h3> Creating the Docker Image</h3>

Ensure that you have Docker installed on your system and are in the root directory of the project.
Then type in the following command in the command line to create the docker image

```shell
docker build -t devaansh-cluboard-image .
```

<h3> Running the container </h3>

Once the process is done you can use `docker images` command to check if the image is built.
You can now run the container using the following command
```shell
docker compose up

```

You can also use `docker run -it` command to start the container in interactive mode
```shell
docker run -it -p 8000:8000 cluboard-app
```

You can now go to `http://127.0.0.1:8000/` on your browser to access the app

<br>

<h2> Explainations </h2>

<h3> Dockerfile </h3>
Dockerfile is used to build the image for the given application.

The above Dockerfile uses two prebuild images imported from Dockerhub: `python:3.9-slim-buster` and `ubuntu`.
Django is a Python based web framework so a python image is necessary to run the container.
Ubuntu has also been used so that running additional commands for the app will become much easier instead of using the Python shell.

The working directory of the project is declared as `/code` and the container will automatically start at this directory.

The container proceeds to check for updates and installs `pip` which is the most used package management system for python.

Pip is then used to install all requirements mentioned in the `requirements.txt` file

Finally all the files are copied to the container from your local machine and necessary commands are run to start the application

<h3> Docker Compose</h3>

Docker Compose is a handly way to run containers from images especially if you have to run multiple containers on a single Docker Network. The docker-compose.yaml file describes how to parameterize a Docker image when it runs as a container.

Just by running the `docker compose up` command, we can start the container. You can now use the application from `http://127.0.0.1:8000/`