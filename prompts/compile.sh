#!/bin/bash

cd ./tex
xelatex \\nonstopmode\\input beginner.tex
xelatex \\nonstopmode\\input intermediate.tex
mv *.pdf ../publish

echo "Done."
