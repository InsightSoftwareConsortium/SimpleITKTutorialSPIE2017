#!/bin/sh

./downloaddata.py ./Data ./Data/manifest.json
docker build -t insighttoolkit/simpleitk-notebooks:2017-spie .
docker save -o 2017-SPIE-MI-ITK-Course-Notebooks.tar insighttoolkit/simpleitk-notebooks:2017-spie
