#!/bin/bash

PGP_PUBLIC_KEY_FILE="./OpenPGPSigner-signer00003.asc"

echo $PGP_PUBLIC_KEY

if [ -f "$PGP_PUBLIC_KEY_FILE" ]; then
    gpg --import "$PGP_PUBLIC_KEY_FILE"
    echo "PGP Public key from $PGP_KEY_FILE imported successfully."

    gpg --verify $1 $2
else
    echo "Error: Key file $PGP_PBULIC_KEY_FILE not found."
fi
