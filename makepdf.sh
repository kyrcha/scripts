#!/bin/bash
latex $1
bibtex $1
latex $1
latex $1
if [ "$2" = "letter" ]; then
echo "Letter"
dvips -t letter $1.dvi
else
echo "A4"
dvips -t a4 $1.dvi
fi
ps2pdf $1.ps
