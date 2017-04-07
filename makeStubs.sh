#! /bin/bash

BASE=/home/basil/Basil-protocol-git

cd $BASE

FLATBUFFER=/home/basil/flatbuffers

FLATC=${FLATBUFFER}/flatc

# Do a generation for $1=fbsFile, $2=langSpec, $3=targetDir
function doGen() {
    # echo "doGen  1=$1, 2=$2, 3=$3"
    SRC=protocol/${1}.fbs
    if [[ -e "$SRC" ]] ; then
        mkdir -p "$3"
        ${FLATC} -I protocol --$2 -o "$3" "$SRC"
    else
        echo "No source file for $SRC"
    fi
}

# Basil-server
doGen BasilServer cpp           gen-Basil-server-cpp
doGen BasilServer js            gen-Basil-server-js

# Basil-client
doGen BasilClient cpp           gen-Basil-client-cpp
doGen BasilClient csharp        gen-Basil-client-cs

# Pesto-server
doGen PestoServer js            gen-Pesto-server-node

# Pesto-client
doGen PestoClient python        gen-Pesto-client-py
doGen PestoClient cpp           gen-Pesto-client-cpp
doGen PestoClient js            gen-Pesto-client-js
doGen PestoClient csharp        gen-Pesto-client-cs
# doGen PestoClient go            gen-Pesto-client-go
doGen PestoClient java          gen-Pesto-client-java

