#!/bin/bash

# your paths will be different
proj_path=${WORKSPACE}/python

# change working dir
cd ${proj_path}

# click and Python 3,
# from http://click.pocoo.org/5/python3/
export LC_ALL=en_US.utf-8
export LANG=en_US.utf-8

# create virtual environment
virtualenv -p python3 .venv

# activate virtual environment
source .venv/bin/activate

# install prerequisite
pip install pytest pytest-cov

# install project
pip install -e .

# run tests
pytest --junit-xml=results.xml

# deactivate virtual environment
deactivate
