../src/dk.build ../src/Dockerfile ubuntu.image.diso

if [ $? -eq 0 ]; then
    echo "[ success ] dk.build"
else
    echo "[ failure ] dk.build"
    rm *.dova; rm *.diso
	exit 1
fi


../src/dk.container.create ubuntu.image.diso ubuntu.container

if [ $? -eq 0 ]; then
    echo "[ success ] dk.container.create"
else
    echo "[ failure ] dk.container.create"
    rm *.dova; rm *.diso
	exit 1
fi


../src/dk.container.start ubuntu.container

if [ $? -eq 0 ]; then
    echo "[ success ] dk.container.start"
else
    echo "[ failure ] dk.container.start"
    rm *.dova; rm *.diso
	exit 1
fi


../src/dk.container.stop ubuntu.container

if [ $? -eq 0 ]; then
    echo "[ success ] dk.container.stop"
else
    echo "[ failure ] dk.container.stop"
    rm *.dova; rm *.diso
	exit 1
fi


../src/dk.container.export ubuntu.container ubuntu.appliance.dova

if [ $? -eq 0 ]; then
    echo "[ success ] dk.container.export"
else
    echo "[ failure ] dk.container.export"
    rm *.dova; rm *.diso
	exit 1
fi


../src/dk.container.import ubuntu.appliance.dova ubuntu.container.b

if [ $? -eq 0 ]; then
    echo "[ success ] dk.container.import"
else
    echo "[ failure ] dk.container.import"
    rm *.dova; rm *.diso
	exit 1
fi


../src/dk.container.start ubuntu.container.b

if [ $? -eq 0 ]; then
    echo "[ success ] dk.container.start"
else
    echo "[ failure ] dk.container.start"
    rm *.dova; rm *.diso
	exit 1
fi


../src/dk.container.stop ubuntu.container.b

if [ $? -eq 0 ]; then
    echo "[ success ] dk.container.stop"
else
    echo "[ failure ] dk.container.stop"
    rm *.dova; rm *.diso
	exit 1
fi

rm *.dova; rm *.diso


