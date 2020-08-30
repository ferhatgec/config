#!/bin/sh

# Build Scrift

cd ../scrift && gmake

# Build FlaScript

cd ../flascript && sh make.sh

# Build FFind

cd ../ffind && sh make.sh

# Build Gemini

cd ../geminiterm && sh make.sh

# Build Copyboard

cd ../copyboard && sh make.sh

