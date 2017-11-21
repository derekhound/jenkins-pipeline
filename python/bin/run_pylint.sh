#!/bin/bash -e

# create virtual environment
if [ ! -d .venv ]; then
    virtualenv -p python3 .venv
fi

# activate virtual environment
source .venv/bin/activate

# install prerequisite
pip install pylint

# run pylint
pylint --rcfile=.pylint --reports=n --disable=all src | tee pylint.out

# deactivate virtual environment
deactivate
