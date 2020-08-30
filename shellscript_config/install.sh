#!/bin/sh

if [ "$(whoami)" == "root" ] ; then
    echo Nice.
else
    echo Do not use this with user permission status. Exit.
	exit 1
fi

# Build Scrift & Install

cd ../../scrift && gmake allp

# Build FlaScript & Install

cd ../../flascript && sh install.sh

# Build FFind

cd ../../ffind && sh install.sh

# Build Gemini

cd ../../geminiterm && sh make.sh

# Build Copyboard

cd ../../copyboard && sh make.sh
