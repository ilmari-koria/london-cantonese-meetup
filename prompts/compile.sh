#!/bin/bash

TEX_DIR="./tex"
OUTPUT_DIR="../publish"
FILES=("beginner-tc.tex" "intermediate-tc.tex" "beginner-tc-english.tex" "intermediate-tc-english.tex")

cd "$TEX_DIR" || exit

for FILE in "${FILES[@]}"; do
    latexindent -w "$FILE"
    xelatex -interaction=nonstopmode "$FILE"
done

mv *.pdf "$OUTPUT_DIR"
rsync $OUTPUT_DIR/*.pdf ~/my-files/todo/meetup
rm *.log *.out *.bak* *.aux

echo "Done."
