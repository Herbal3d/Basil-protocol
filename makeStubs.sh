#! /bin/bash

# cd into the directory containing this build script
cd "$( cd "$(dirname "${BASH_SOURCE[0]}" )" && pwd )"
BASE=$(pwd)

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

# Basil Server -- for talking to the Basil server
doGen BasilServer cpp           gen-BasilServer-cpp
doGen BasilServer js            gen-BasilServer-js
doGen BasilServer csharp        gen-BasilServer-cs
doGen BasilServer java          gen-BasilServer-java

# Basil Client -- for talking to a Basil client
doGen BasilClient cpp           gen-BasilClient-cpp
doGen BasilClient js            gen-BasilClient-js
doGen BasilClient csharp        gen-BasilClient-cs

# Pesto Server
doGen PestoServer js            gen-PestoServer-node

# Pesto Client
doGen PestoClient python        gen-PestoClient-py
doGen PestoClient cpp           gen-PestoClient-cpp
doGen PestoClient js            gen-PestoClient-js
doGen PestoClient csharp        gen-PestoClient-cs
doGen PestoClient java          gen-PestoClient-java
# doGen PestoClient go            gen-PestoClient-go

