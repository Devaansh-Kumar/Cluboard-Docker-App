# Dockerized a Django application

Hi, this is Devaansh Kumar submitting my work to containerize the given Cluboard application using Docker. Below you will find the procedure to create the docker container step by step.

<h2> Steps </h2>

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

