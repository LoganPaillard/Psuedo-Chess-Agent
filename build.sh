#!/usr/bin/env bash

build() {
  # Clean up the environment
  if [[ "$1" == "clean" ]]; then
    echo "Cleaning environment..."
    if [[ -n "$VIRTUAL_ENV" ]]; then
      deactivate
    fi
    rm -rf temp
  else
    echo "Building environment..."
    python3 -m venv temp --clear
    echo "Sourcing virtual environment..."
    echo "Installing dependencies..."
    ./temp/bin/pip install numpy
    chmod +x ./temp/bin/activate
    source ./temp/bin/activate
    ./temp/bin/activate
  fi
}

build "$1"
