#!/bin/bash
# task 5
# SETUP
# Set environment variable with export MY_NAME='Your Name' and control it with printenv MY_NAME

# documentation
echo "$(date): $MY_NAME - $1" >> input_log.txt

# output
echo "Hello, $MY_NAME! $1"
