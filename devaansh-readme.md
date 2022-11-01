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

<h3> Running the container </h3>

Once the process is done you can use `docker images` command to check if the image is built.
You can now run the container using the following command
```shell
docker run -p 8000:8000 cluboard-app
```

You can also simply type in `docker compose up` to start the container
```shell
docker compose up
```

You can now go to `http://127.0.0.1:8000/` on your browser to access the app