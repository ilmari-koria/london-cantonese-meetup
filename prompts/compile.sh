#!/bin/bash

TEX_DIR="./tex"
OUTPUT_DIR="../publish"
FILES=("beginner.tex" "intermediate.tex")

cd "$TEX_DIR" || exit

for FILE in "${FILES[@]}"; do
    xelatex -interaction=nonstopmode "$FILE"
done

mv *.pdf "$OUTPUT_DIR"

echo "Done."
