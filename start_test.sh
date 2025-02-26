#!/bin/bash

START_MODE=$1
BACKEND_DIR="backend"

cd $BACKEND_DIR
# pipenv run ruff check
pipenv run ruff check  --fix
pipenv run ruff format

cd ..
git add .
git commit -m 'ruff check and ruff format'

