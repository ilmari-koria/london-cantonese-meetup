#!/bin/bash

DIR_TEX="./lib/tex"
DIR_PDF_OUTPUT="./publish"

SAXON="../xsl/saxon/saxon-he-12.4.jar"

XML_PROMPTS="./xml/prompts.xml"
XSL_CSV="../xsl/convert-to-csv.xsl"
XSL_HTML="../xsl/generate-html-prompts.xsl"
TEX_FILES=("beginner-tc.tex" "intermediate-tc.tex" "beginner-tc-english.tex" "intermediate-tc-english.tex")

# generate csv
java -cp $SAXON net.sf.saxon.Transform -t -s:"$XML_PROMPTS" -xsl:"$XSL_CSV"
java -cp $SAXON net.sf.saxon.Transform -t -s:"$XML_PROMPTS" -xsl:"$XSL_HTML" -o:"../index.html"

# cd "$TEX_DIR" || exit

# for FILE in "${FILES[@]}"; do
#     latexindent -w "$FILE"
#     xelatex -interaction=nonstopmode "$FILE"
# done

# mv *.pdf "$OUTPUT_DIR"
# rsync $OUTPUT_DIR/*.pdf ~/my-files/todo/meetup
# rm *.log *.out *.bak* *.aux

echo "Done."
