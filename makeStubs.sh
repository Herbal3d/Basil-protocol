#! /bin/bash

THRIFT="thrift-0.9.3.exe"
THRIFTINCLUDE="-I protocol"
THRIFTPARAM="--allow-64bit-consts"

THRIFTT="${THRIFT} ${THRIFTINCLUDE} ${THRIFTPARAM}"

# Do a generation for $1=thriftFile, $2=langSpec, $3=targetDir
function doGen() {
    mkdir -p "$3";
    ${THRIFTT} --gen $2 -out "$3" protocol/$1.thrift
}

doGen Basil-server cpp          gen-Basil-server-cpp
doGen Basil-server js:jquery    gen-Basil-server-js

doGen Basil-client cpp          gen-Basil-client-cpp
doGen Basil-client csharp       gen-Basil-client-cs

doGen Pesto-server py:new_style gen-Pesto-server-py

doGen Pesto-client py:new_style gen-Pesto-client-py
doGen Pesto-client cpp          gen-Pesto-client-cpp
doGen Pesto-client js:jquery    gen-Pesto-client-js
doGen Pesto-client csharp       gen-Pesto-client-cs
# doGen Pesto-client go           gen-Pesto-client-go
doGen Pesto-client java         gen-Pesto-client-java
