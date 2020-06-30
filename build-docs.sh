#!/usr/bin/env bash

set -eo pipefail

cd docs
pip install -r requirements.txt
make html
