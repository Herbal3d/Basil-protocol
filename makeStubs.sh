#! /bin/bash

THRIFT="thrift"
THRIFTINCLUDE="-I protocol"
THRIFTPARAM="--allow-64bit-consts"

THRIFTT="${THRIFT} ${THRIFTINCLUDE} ${THRIFTPARAM}"

# Do a generation for $1=thriftFile, $2=langSpec, $3=targetDir
function doGen() {
    mkdir -p "$3";
    ${THRIFTT} --gen $2 -out "$3" protocol/$1.thrift
}

# Basil-server
doGen BasilServer cpp           gen-Basil-server-cpp
doGen BasilType cpp             gen-Basil-server-cpp
doGen BasilServer js:jquery     gen-Basil-server-js
doGen BasilType js:jquery       gen-Basil-server-js

# Basil-client
doGen BasilClient cpp           gen-Basil-client-cpp
doGen BasilType cpp             gen-Basil-client-cpp
doGen BasilClient csharp        gen-Basil-client-cs
doGen BasilType csharp          gen-Basil-client-cs

# Pesto-server
doGen PestoServer js:node       gen-Pesto-server-node
doGen BasilType js:node         gen-Pesto-server-node

# Pesto-client
doGen PestoClient py            gen-Pesto-client-py
doGen BasilType py              gen-Pesto-client-py
doGen PestoClient cpp           gen-Pesto-client-cpp
doGen BasilType cpp             gen-Pesto-client-cpp
doGen PestoClient js:jquery     gen-Pesto-client-js
doGen BasilType js:jquery       gen-Pesto-client-js
doGen PestoClient csharp        gen-Pesto-client-cs
doGen BasilType csharp          gen-Pesto-client-cs
# doGen PestoClient go            gen-Pesto-client-go
# doGen BasilType go              gen-Pesto-client-go
doGen PestoClient java          gen-Pesto-client-java
doGen BasilType java            gen-Pesto-client-java
