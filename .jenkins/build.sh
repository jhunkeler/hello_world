#!/bin/bash
source ${WORKSPACE}/.jenkins/use_conda.sh

python --version

python setup.py install
