if [ -z $1 ]; then
    echo "[ usage ] provide container name to start"
    exit 1
fi

docker start -ai $1
