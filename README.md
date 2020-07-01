## Ubuntu Docker

1. Download this repo
2. cd src

## Dockerfile 

	This file contains essential instructions to build and create a docker image ( docker image is like a custom ubuntu iso file )


## build_image.sh [ Docker Image ]

	This script build the src/Dockerfile and creates a docker image ( It is like an ubuntu.iso file )

	Syntax	: ./build_image.sh < new docker image name >
	Example	: ./build_image.sh ubuntu_image

## create_container.sh
	
	This script creates a container using the docker image we created on the prev step [ Docker container is like a virtual machine with os installed ]

	Syntax	: ./create_container.sh < docker_image_name > < new container name>
	Example	: ./create_container.sh ubuntu_image ubuntu_laptop1
	Example	: ./create_container.sh ubuntu_image ubuntu_laptop2


## start_container.sh

	Start a docker container ( like turning on a virtual machine and running an operating system ) 

	Syntax	: ./start_container.sh < container name>
	Example	: ./start_container.sh ubuntu_laptop1
	Example	: ./start_container.sh ubuntu_laptop2


## stop_container.sh
	
	Stop a docker container ( like turning off a virtual machine / shutting down an operating system ) 

	Syntax	: ./stop_container.sh < container name>
	Example	: ./stop_container.sh ubuntu_laptop1
	Example	: ./stop_container.sh ubuntu_laptop2

## reset_docker.sh

	Clear/Delete all images, containers etc

	Syntax	: ./reset_docker.sh
	Example	: ./reset_docker.sh
