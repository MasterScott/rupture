#!/bin/bash

BASEDIR=$(dirname -- "$(readlink -f -- "${BASH_SOURCE}")")

echo "[-] Populating victims..."
if $BASEDIR/env/bin/python $BASEDIR/populate_victims.py; then
    echo "[*] Victims have been set."
else
    echo "[!] Victim setup was interrupted."
fi
