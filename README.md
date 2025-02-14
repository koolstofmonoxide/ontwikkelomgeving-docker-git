Building the docker container:
docker build . -t hello_world

Running the docker container:
docker run --rm hello_world

The Dockerfile creates an environment to build and run a C++ application inside an Ubuntu based container.