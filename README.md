## Ubuntu Docker

1. Download this repo
2. cd src

## Dockerfile 

	This file contains essential instructions to build and create a docker image ( docker image is like a custom ubuntu iso file )


## docker_build [ Docker Image ]

	This script build the src/Dockerfile and creates a docker image ( It is like an ubuntu.iso file )

	Syntax	: ./docker_build <docker_file_name> <docker_image_name>
	Example	: ./docker_build Dockerfile ubuntu_image

## create_container
	
	This script creates a container using the docker image we created on the prev step [ Docker container is like a virtual machine with os installed ]

	Syntax	: ./create_container < docker_image.tar> <container_name>
	Example	: ./create_container ubuntu_image.tar ubuntu_laptop1
	Example	: ./create_container ubuntu_image.tar ubuntu_laptop2


## docker_container_start

	Start a docker container ( like turning on a virtual machine and running an operating system ) 

	Syntax	: ./docker_container_start < container name>
	Example	: ./docker_container_start ubuntu_laptop1
	Example	: ./docker_container_start ubuntu_laptop2


## docker_container_stop
	
	Stop a docker container ( like turning off a virtual machine / shutting down an operating system ) 

	Syntax	: ./docker_container_stop < container name>
	Example	: ./docker_container_stop ubuntu_laptop1
	Example	: ./docker_container_stop ubuntu_laptop2

## reset_docker.sh

	Clear/Delete all images, containers and volumes

	Syntax	: ./docker_factory_reset
	Example	: ./docker_factory_reset
