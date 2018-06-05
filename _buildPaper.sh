#!/bin/sh
pdflatex 00_Article_Merge.tex
bibtex 01_Article_MainText
bibtex 02_Article_Methods
bibtex 03_Article_Supplementary
pdflatex 00_Article_Merge.tex
pdflatex 00_Article_Merge.tex

rm -rf out
mkdir out
cp -rf *.aux *.out *.log *.xwm *.bbl *.blg *.dvi *.pdf out
rm -rf *.aux *.out *.log *.xwm *.bbl *.blg *.dvi *.pdf
cp -f out/00_Article_Merge.pdf out/Almada_Pereira_et_al_bioRxiv_2018.pdf
