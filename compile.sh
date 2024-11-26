#!/bin/bash

DIR_TEX="./lib/tex"
DIR_PDF_OUTPUT="./publish"
DIR_TMP="./tmp"
SAXON="./bin/saxon/saxon-he-12.4.jar"
XML_PROMPTS="./lib/xml/prompts.xml"
XSL_SPLIT="./lib/split-xml.xsl"
XSL_TEX="./lib/prompt-xml-to-tex.xsl"

# split xml beginner and intermediate
java -cp $SAXON net.sf.saxon.Transform -t -s:"$XML_PROMPTS" -xsl:"$XSL_SPLIT" -o:"$DIR_TMP/out"

# generate tex
java -cp $SAXON net.sf.saxon.Transform -t -s:"$XML_BEGINNER" -xsl:"$XSL_TEX" -o:"$DIR_TMP/beginner.tex"
java -cp $SAXON net.sf.saxon.Transform -t -s:"$XML_INTERMEDIATE" -xsl:"$XSL_TEX" -o:"$DIR_TMP/intermediate.tex"

# generate pdf
latexindent -w "$DIR_TMP/beginner.tex"
latexindent -w "$DIR_TMP/intermediate.tex"
xelatex -interaction=nonstopmode "$DIR_TMP/beginner.tex"
xelatex -interaction=nonstopmode "$DIR_TMP/intermediate.tex"

# mv and rm tmp files
mv $DIR_TMP/*.pdf "$DIR_PDF_OUTPUT"
rm $DIR_TMP/*.tex $DIR_TMP/*.log $DIR_TMP/*.out $DIR_TMP/*.bak* $DIR_TMP/*.aux
