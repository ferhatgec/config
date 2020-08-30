#!/bin/sh

# OS Detection but,
# I use only FreeBSD.
OS=$(uname -s)

if [ "${OS}" = "FreeBSD" ]; then
	pkg install git gcc firefox krita gmake redshift
    OSSTR="${OS}"
#elif [ "${OS}" = "Linux" ]; then
#   KERNEL=$(uname -r)
#    if [ -f /etc/debian_version ]; then
#      debianID=$(cat /etc/os-release |egrep -vi 'pretty|code' |grep -i name |cut -c6-50 |tr -d '"' |awk '{print $1}')
#      if [ "${debianID}" = "Ubuntu" ]; then
#      elif [ "${debianID}" = "Debian" ]; then
#      fi
#    OSSTR="${OS} ${DIST} ${REV}(${PSUEDONAME} ${KERNEL} ${MACH})"
fi

if [ "$(whoami)" == "root" ] ; then
    echo Nice.
else
    echo Do not use this with user permission status. Exit.
	exit 1
fi


# Change directory
cd ..

# Scrift

echo Clone Scrift.

git clone https://github.com/ferhatgec/scrift.git

# FlaScript

echo Clone FlaScript.

git clone https://github.com/ferhatgec/flascript.git

# Fsplusplus

echo Clone FileSystemPlusPlus

git clone https://github.com/ferhatgec/fsplusplus.git

# Fetcheya

echo Clone Fetcheya

git clone https://github.com/ferhatgec/fetcheya.git

# Colorized

echo Clone Colorized

git clone https://github.com/ferhatgec/colorized.git

# Flatcheya

echo Clone Flatcheya

git clone https://github.com/ferhatgec/flatcheya.git

# StringTools

echo Clone StringTools

git clone https://github.com/ferhatgec/stringtools.git

# FFind

echo Clone FFind

git clone https://github.com/ferhatgec/ffind.git

# Gemini

echo Clone Gemini

git clone https://github.com/ferhatgec/geminiterm.git

# Copyboard

echo Clone Copyboard

git clone https://github.com/ferhatgec/copyboard.git

cd init && sh build.sh
