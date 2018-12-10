#! /bin/bash

# cd into the directory containing this build script
cd "$( cd "$(dirname "${BASH_SOURCE[0]}" )" && pwd )"
BASE=$(pwd)

PROTOBUF=/home/basil/protobuf

PROTOC=${PROTOBUF}/src/protoc

EXTRAJSOUT=import_style=commonjs,binary:

# Do a generation for $1=protoFile, $2=langTarget, $3=targetDir
function doGen() {
    # echo "doGen  1=$1, 2=$2, 3=$3"
    SRC=protocol/${1}.proto
    if [[ -e "$SRC" ]] ; then
        mkdir -p "$3"
        OUTPARAM=--${2}_out=${3}
        if [[ "$2" == "js" ]] ; then
            OUTPARAM=--js_out=import_style=commonjs,binary:${3}
        fi
        ${PROTOC} ${OUTPARAM} --proto_path=protocol/ "$SRC"
    else
        echo "No source file for $SRC"
    fi
}

# Base structs and tables
doGen BasilTypes cpp            gen-BasilTypes-cpp
doGen BasilTypes csharp         gen-BasilTypes-cs
doGen BasilTypes java           gen-BasilTypes-java

# Message transport
doGen BMessage cpp              gen-BasilMessage-cpp
doGen BMessage csharp           gen-BasilMessage-cs
doGen BMessage java             gen-BasilMessage-java

# Basil Server -- for talking to the Basil server
doGen BasilServer cpp           gen-BasilServer-cpp
doGen BasilServer csharp        gen-BasilServer-cs
doGen BasilServer java          gen-BasilServer-java

# Pesto Server
doGen PestoServer go            gen-PestoServer-go
doGen PestoServer csharp        gen-PestoServer-cs

# Pesto Client
doGen PestoClient cpp           gen-PestoClient-cpp
doGen PestoClient csharp        gen-PestoClient-cs
doGen PestoClient java          gen-PestoClient-java
doGen PestoClient python        gen-PestoClient-py
# doGen PestoClient go            gen-PestoClient

