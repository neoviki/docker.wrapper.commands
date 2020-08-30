## Ubuntu Docker

1. Download this repo
2. cd src

## Dockerfile 

	This file contains essential instructions to build and create a docker image ( docker image is like a custom ubuntu iso file )


## dk_build [ Docker Image ]

	This script build the src/Dockerfile and creates a docker image ( It is like an ubuntu.iso file )

	Syntax	: ./dk_build <docker_file_name> <docker_image_name.diso>
	Example	: ./dk_build Dockerfile ubuntu_image.diso

	[ .diso ] : Docker ISO image

## dk_container_create
	
	This script creates a container using the docker image we created on the prev step [ Docker container is like a virtual machine with os installed ]

	Syntax	: ./dk_container_create < docker_image.diso> <container_name>
	Example	: ./dk_container_create ubuntu_image.diso ubuntu_laptop1
	Example	: ./dk_container_create ubuntu_image.diso ubuntu_laptop2

	[ .diso ] : Docker ISO image

## dk_container_start

	Start a docker container ( like turning on a virtual machine and running an operating system ) 

	Syntax	: ./dk_container_start < container name>
	Example	: ./dk_container_start ubuntu_laptop1
	Example	: ./dk_container_start ubuntu_laptop2


## dk_container_stop
	
	Stop a docker container ( like turning off a virtual machine / shutting down an operating system ) 

	Syntax	: ./dk_container_stop < container name>
	Example	: ./dk_container_stop ubuntu_laptop1
	Example	: ./dk_container_stop ubuntu_laptop2

## dk_container_export

	Export a docker container ( like exporting virtual machine appliance to an .ova file)

	Syntax	: ./dk_container_export <container_name> <output_file.dova>
	Example	: ./dk_container_export ubuntu_container ubuntu.dova

	[ .dova ] : Docker OVA File
	

## dk_container_import

	Importa a docker container appliance -> .dova file ( like exporting virtual machine appliance to an .ova file)

	Syntax	: ./dk_container_import <container_appliance.dova> <container_name>
	Example	: ./dk_container_import ubuntu.dova ubuntu_container

	[ .dova ] : Docker OVA File
	
	Note: 

	Again start container using dk_container_start

## dk_factory_reset

	Clear/Delete all images, containers and volumes

	Syntax	: ./dk_factory_reset
	Example	: ./dk_factory_reset

## dk_delete_all_containers

	Delete all containers ( including running containers )

	Syntax  : ./dk_delete_all_containers

## dk_delete_all_images
	
	Delete all containers ( including running images )

	Syntax  : ./dk_delete_all_images

