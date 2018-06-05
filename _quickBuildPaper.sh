#!/usr/bin/env bash

pdflatex 00_Article_Merge.tex

mkdir out
cp -rvf *.aux *.out *.log *.xwm *.bbl *.blg *.dvi *.pdf out
rm -rvf *.aux *.out *.log *.xwm *.bbl *.blg *.dvi *.pdf
cp -f out/00_Article_Merge.pdf out/Almada_Pereira_et_al_bioRxiv_2018.pdf
