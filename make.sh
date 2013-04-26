#!/bin/bash

if [ $# -ne 1 ]; then
  echo " please u enter the name of file expected to be compiled! "
  echo " and no suffix~ "
  exit 1
fi

./clean.sh
pdflatex $1
bibtex $1
pdflatex $1
pdflatex $1

