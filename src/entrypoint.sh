#!/bin/sh

python --version

while true; do
  python main.py
  sleep $DELAY
done