## Ubuntu Docker

## src/Dockerfile 

	This file contains essential instructions to build and create a docker image ()


## src/docker_build.sh [ Docker Image ]

	This script build the src/Dockerfile and creates a docker image ( It is like an ubuntu.iso file )

## src/docker_create_container.sh
	
	This script creates a container from the docker image we created on the prev step [ Docker container is like a virtual machine with os installed ]


## src/docker_start.sh

	Start a docker container ( like turning on a virtual machine and running an operating system ) 

## src/docker_stop.sh
	
	Stop a docker container ( like turning off a virtual machine / shutting down an operating system ) 
