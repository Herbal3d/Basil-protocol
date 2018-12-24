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
doGen BasilTypes python         gen-BasilTypes-py

# Basil Server -- for talking to the Basil server
doGen BasilServer cpp           gen-BasilServer-cpp
doGen BasilServer csharp        gen-BasilServer-cs
doGen BasilServer java          gen-BasilServer-java
doGen BasilServer python        gen-BasilServer-py

# Space Server -- for talking to the Space server
doGen SpaceServer cpp           gen-SpaceServer-cpp
doGen SpaceServer csharp        gen-SpaceServer-cs
doGen SpaceServer java          gen-SpaceServer-java
doGen SpaceServer python        gen-SpaceServer-py

# Common messages
doGen AliveCheck cpp           gen-AliveCheck-cpp
doGen AliveCheck csharp        gen-AliveCheck-cs
doGen AliveCheck java          gen-AliveCheck-java
doGen AliveCheck python        gen-AliveCheck-py

# Basil to SpaceServer stream messages
doGen BasilSpaceStream cpp      gen-BasilSpaceStream-cpp
doGen BasilSpaceStream csharp   gen-BasilSpaceStream-cs
doGen BasilSpaceStream java     gen-BasilSpaceStream-java
doGen BasilSpaceStream python   gen-BasilSpaceStream-py

# Pesto Server
doGen PestoServer go            gen-PestoServer-go
doGen PestoServer csharp        gen-PestoServer-cs

# Pesto Client
doGen PestoClient cpp           gen-PestoClient-cpp
doGen PestoClient csharp        gen-PestoClient-cs
doGen PestoClient java          gen-PestoClient-java
doGen PestoClient python        gen-PestoClient-py
# doGen PestoClient go            gen-PestoClient
