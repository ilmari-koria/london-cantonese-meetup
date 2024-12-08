#!/bin/bash
DIR_TEX="./lib/tex"
DIR_PUBLISH="./publish"
DIR_TMP="./tmp"
SAXON="./bin/saxon/saxon-he-12.4.jar"
XML_PROMPTS="./lib/xml/prompts.xml"
XSL_SPLIT="./lib/xsl/split-xml.xsl"
XSL_TEX="./lib/xsl/prompt-xml-to-tex.xsl"

# split xml beginner and intermediate
java -cp $SAXON net.sf.saxon.Transform -t -xsl:"$XSL_SPLIT" -s:"$XML_PROMPTS"

# generate tex
java -cp $SAXON net.sf.saxon.Transform -t -s:"$DIR_TMP/split/beginner.xml" -xsl:"$XSL_TEX" -o:"$DIR_TMP/tex/beginner.tex"
java -cp $SAXON net.sf.saxon.Transform -t -s:"$DIR_TMP/split/intermediate.xml" -xsl:"$XSL_TEX" -o:"$DIR_TMP/tex/intermediate.tex"

# generate pdf
latexindent -w "$DIR_TMP/tex/beginner.tex"
latexindent -w "$DIR_TMP/tex/intermediate.tex"
xelatex -output-directory=$DIR_PUBLISH -interaction=nonstopmode "$DIR_TMP/tex/beginner.tex"
xelatex -output-directory=$DIR_PUBLISH -interaction=nonstopmode "$DIR_TMP/tex/intermediate.tex"

# mv and rm tmp files
rm $DIR_TMP/*.tex $DIR_TMP/*.log $DIR_TMP/*.out $DIR_TMP/*.bak* $DIR_TMP/*.aux
