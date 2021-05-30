# This script installs Jenkins.
# Mostafa Hassani
# Based on the official documentation found at: https://www.jenkins.io/doc/book/installing/docker/

# Create a bridge network in Docker using docker network create command:
docker network create jenkins

# To to execute Docker commands inside Jenkins nodes, download and run the docker:dind Docker image using docker run command:
docker run \
  --name jenkins-docker \  #Specifies the Docker container name to use for running the image. By default, Docker will generate a unique name for the container.
  --rm \  #Automatically removes the Docker container (the instance of the Docker image) when it is shut down.
  --detach \  #Runs the Docker container in the background. This instance can be stopped later by running docker stop jenkins-docker.
  --privileged \  #Running Docker in Docker currently requires privileged access to function properly. 
  --network jenkins \  #This corresponds with the network created in the earlier step.
  --network-alias docker \  #Makes the Docker in Docker container available as the hostname docker within the jenkins network.
  --env DOCKER_TLS_CERTDIR=/certs \  #	Enables the use of TLS in the Docker server. Due to the use of a privileged container, this is recommended, though it requires the use of the shared volume
  --volume jenkins-docker-certs:/certs/client \  #Maps the /certs/client directory inside the container to a Docker volume named jenkins-docker-certs as created above.
  --volume jenkins-data:/var/jenkins_home \  #Maps the /var/jenkins_home directory inside the container to the Docker volume named jenkins-data. This will allow for other Docker containers controlled by this Docker container’s Docker daemon to mount data from Jenkins.
  --publish 2376:2376 \  #Exposes the Docker daemon port on the host machine. This is useful for executing docker commands on the host machine to control this inner Docker daemon.
  docker:dind \  #The docker:dind image itself. This image can be downloaded before running by using the command: docker image pull docker:dind.
  --storage-driver overlay2  #The storage driver for the Docker volume.
