#!/bin/bash

apt install python3.12-venv python3 python3-pip -y
python3 -m venv path/to/venv
path/to/venv/bin/pip install -r requirements.txt
