<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                version="3.0">

  <xsl:strip-space elements="*"/>

  <xsl:output method="text"
              encoding="UTF-8"
              indent="no"
              omit-xml-declaration="yes"/>

  <xsl:template match="/prompts">

    <xsl:text>
      \input{./lib/tex/preamble}
      \begin{document}
      \input{./lib/tex/meta}
      \begin{tcolorbox}[sharp corners]
      \begin{center}
    </xsl:text>

    <!-- prompt level -->
    <xsl:text>\textbf{\large </xsl:text>
    <xsl:choose>
      <xsl:when test="/prompts//beginner">
        <text>初級</text>
      </xsl:when>
      <xsl:when test="/prompts/intermediate">
        <text>中級</text>
      </xsl:when>
      <xsl:otherwise>
        <text>ERROR</text>
      </xsl:otherwise>
    </xsl:choose>
    <xsl:text>}</xsl:text>
    <!-- end prompt level -->

    <xsl:text>
      \end{center}
      \end{tcolorbox}
      \newpage
      \begin{center}
      \section*{「我可唔可以問幾個問題呀？」}
      \end{center}
      \begin{spacing}{1.5}
    </xsl:text>

    <!-- prompt color per level -->
    <xsl:text>
      \begin{tcolorbox}
      [
      enhanced,
      breakable,
      skin first=enhanced,
      skin middle=enhanced,
      skin last=enhanced,
      boxrule=0.5mm,
    </xsl:text>
    <xsl:choose>
      <xsl:when test="/prompts/beginner">
        <xsl:text>colback=LightGreen!20!white,</xsl:text>
        <xsl:text>colframe=Green!50!black</xsl:text>
      </xsl:when>
      <xsl:when test="/prompts/intermediate">
        <xsl:text>colback=LightYellow!20!white,</xsl:text>
        <xsl:text>colframe=Yellow!50!black</xsl:text>
      </xsl:when>
      <xsl:otherwise>
        <xsl:text>colback=white,</xsl:text>
        <xsl:text>colframe=black</xsl:text>
      </xsl:otherwise>
    </xsl:choose>
    <xsl:text>]</xsl:text>
    <!-- end prompt color -->

    <xsl:text>
      \vspace{10pt}
      \begin{enumerate-with-translation}
    </xsl:text>

    <!-- sentences -->
    <xsl:for-each select="//entry">
      <xsl:text>\largeitem{</xsl:text>
      <!-- TODO should this be a function, it feels kinda hacky -->
      <xsl:variable name="cjk" select="for $x in string-to-codepoints(cantonese/text()) return codepoints-to-string($x)" />
      <xsl:variable name="pinyin" select="tokenize(replace(jyutping/text(), '\?', ' ?'), '\s+')" />
      <xsl:for-each select="1 to count($cjk)">
        <xsl:variable name="index" select="." />
        <xsl:value-of select="concat('\C{',$cjk[$index],'}{',$pinyin[$index],'}')"/>
      </xsl:for-each>
      <xsl:text>}</xsl:text>
      <xsl:text>\smallitem{</xsl:text>
      <xsl:value-of select="english"/>
      <xsl:text>}</xsl:text>
      <xsl:text>
      </xsl:text>
    </xsl:for-each>
    <!-- end sentences -->

    <xsl:text>
      \end{enumerate-with-translation}
      \end{tcolorbox}
      \end{spacing}
      \end{document}
    </xsl:text>

  </xsl:template>
</xsl:stylesheet>
