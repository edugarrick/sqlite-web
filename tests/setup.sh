#!/bin/bash
# Setup the virtual environment
# to run pytest.py

SCRIPT_PATH=`dirname $0`
SCRIPT_NAME=`basename $0`
REPOSITORY_ROOT=$SCRIPT_PATH/..
VENV_PATH="$REPOSITORY_ROOT/.venv"

# Install Modules
# Expected Python version is 3.9
/usr/bin/python3  -m venv $VENV_PATH
source $VENV_PATH/bin/activate
pip install --upgrade pip
pip install -r $REPOSITORY_ROOT/requirements.txt