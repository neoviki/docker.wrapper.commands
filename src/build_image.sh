if [ -z $1 ]; then
    echo "[ usage ] provide output docker image name"
    exit 1
fi

docker build -t $1 .

