if [ -z $1 ]; then
    echo "[ usage ] provide container name to stop"
    exit 1
fi

docker stop $1
