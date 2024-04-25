#!/bin/bash

# shellcheck disable=SC2164
pdflatex -interaction=nonstopmode main.tex
bibtex main
pdflatex -interaction=nonstopmode main.tex
pdflatex -interaction=nonstopmode main.tex
mv -f main.aux main.bbl main.blg main.log  main.pdf out/
# shellcheck disable=SC2103
cd ..
