#!/bin/bash
FILENAME=${1:-"thesis_contents"}
pdflatex "$FILENAME".tex
# bibtex "$FILENAME"
# pdflatex "$FILENAME".tex
# pdflatex "$FILENAME".tex
mv *.* build/
cp build/*.tex ./
cp build/*.pdf ./
cp build/*.bib ./
cp build/*.cls ./
cp build/*.bst ./
mv build/*.md ./
