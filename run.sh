#!/usr/local/bin/bash
# A shell script to compile into a PDF and open it

if ! /Library/TeX/texbin/latexmk -xelatex; then
    echo "LaTeX compilation failed."
    exit "2"
fi

open jidicula-resume.pdf

# Cleanup
/Library/TeX/texbin/latexmk -c

exit
