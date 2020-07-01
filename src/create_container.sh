if [ -z $1 ]; then
    echo "[ usage ] create_container.sh <docker_image_name> <new_docker_container_name>"
    exit 1
fi

if [ -z $2 ]; then
    echo "[ usage ] create_container.sh <docker_image_name> <new_docker_container_name>"
    exit 1
fi

mkdir -p ~/docker_share
docker create -t -i  -v ~/docker_share:/home/share --name $2 $1 bash
