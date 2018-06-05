#!/usr/bin/env bash
# note that this is supposed to run in the "out" directory
cp ../*.bst ../*.bib ./
bibtex 01_Article_MainText
bibtex 02_Article_Methods
bibtex 03_Article_Supplementary
rm -rvf *.bst *.bib