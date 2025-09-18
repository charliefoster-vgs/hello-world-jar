#!/bin/bash

curl -F "workerName=OpenPGPSigner" -F "file=@$1" $2 > "$1.asc"
