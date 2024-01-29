#! /bin/bash

DOCUMENT=ms_paper

# Create output directory
mkdir output

# Initial compile
pdflatex -output-directory=output $DOCUMENT

# Compile bibliography
cp bibliography.bib output
cd output
bibtex $DOCUMENT
cd ..

# Compile final pdf
pdflatex -output-directory=output $DOCUMENT
