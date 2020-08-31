../src/dk_build ../src/Dockerfile ubuntu_image.diso

if [ $? -eq 0 ]; then
    echo "[ success ] dk_build"
else
    echo "[ failure ] dk_build"
    rm *.dova; rm *.diso
	exit 1
fi


../src/dk_container_create ubuntu_image.diso ubuntu_container

if [ $? -eq 0 ]; then
    echo "[ success ] dk_container_create"
else
    echo "[ failure ] dk_container_create"
    rm *.dova; rm *.diso
	exit 1
fi


../src/dk_container_start ubuntu_container

if [ $? -eq 0 ]; then
    echo "[ success ] dk_container_start"
else
    echo "[ failure ] dk_container_start"
    rm *.dova; rm *.diso
	exit 1
fi


../src/dk_container_stop ubuntu_container

if [ $? -eq 0 ]; then
    echo "[ success ] dk_container_stop"
else
    echo "[ failure ] dk_container_stop"
    rm *.dova; rm *.diso
	exit 1
fi


../src/dk_container_export ubuntu_container ubuntu_appliance.dova

if [ $? -eq 0 ]; then
    echo "[ success ] dk_container_export"
else
    echo "[ failure ] dk_container_export"
    rm *.dova; rm *.diso
	exit 1
fi


../src/dk_container_import ubuntu_appliance.dova ubuntu_container_b

if [ $? -eq 0 ]; then
    echo "[ success ] dk_container_import"
else
    echo "[ failure ] dk_container_import"
    rm *.dova; rm *.diso
	exit 1
fi


../src/dk_container_start ubuntu_container_b

if [ $? -eq 0 ]; then
    echo "[ success ] dk_container_start"
else
    echo "[ failure ] dk_container_start"
    rm *.dova; rm *.diso
	exit 1
fi


../src/dk_container_stop ubuntu_container_b

if [ $? -eq 0 ]; then
    echo "[ success ] dk_container_stop"
else
    echo "[ failure ] dk_container_stop"
    rm *.dova; rm *.diso
	exit 1
fi

rm *.dova; rm *.diso


