#!/bin/sh

# Check super user permission
if [ "$(whoami)" == "root" ] ; then
    echo Nice.
else
    echo Do not use this with user permission status. Exit.
	exit 1
fi

echo get_source

sh get_source.sh

echo build

sh build.sh

exit 1
