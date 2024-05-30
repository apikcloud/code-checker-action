#!/bin/bash

echo "Execute pre-commit actions"

if ! command -v pre-commit &> /dev/null
then
  echo "pre-commit is not installed. Installing..."
  pip install pre-commit
fi

pre-commit run --all-files