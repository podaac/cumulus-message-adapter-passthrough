#!/bin/sh
rm -Rf venv build;mkdir venv

poetry export -f requirements.txt --output requirements.txt --without-hashes
pip3 install -r requirements.txt  --target ./venv
cp ./*.py ./venv
cd venv; zip -r ../artifact.zip .
