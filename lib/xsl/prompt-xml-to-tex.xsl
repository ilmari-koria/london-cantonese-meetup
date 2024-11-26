<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                version="2.0">

  <xsl:strip-space elements="*"/>

  <xsl:output method="text"
              encoding="UTF-8"
              indent="no"
              omit-xml-declaration="yes"/>

  <xsl:template match="/">
    <xsl:text>
      \input{preamble}
      \begin{document}
      \input{meta}
      \begin{tcolorbox}[sharp corners]
      \begin{center}
      \textbf{\large 中級}
      \end{center}
      \end{tcolorbox}
      \newpage
      \begin{center}
      \section*{「我可唔可以問幾個問題呀？」}
      \end{center}
    </xsl:text>
    <xsl:apply-templates name="sentences"/>
    <xsl:text>
      \end{enumerate-with-translation}
      \end{tcolorbox}
      \end{spacing}
      \end{document}
    </xsl:text>
  </xsl:template>

  <xsl:template name="sentences">
    \begin{spacing}{1.5}
    \begin{tcolorbox}[enhanced, breakable, skin first=enhanced, skin middle=enhanced, skin last=enhanced,colback=LightYellow!20!white, colframe=Yellow!50!black, boxrule=0.5mm]
    \vspace{10pt}
    \begin{enumerate-with-translation}
    \largeitem{}
    \smallitem{}
    \end{enumerate-with-translation}
    \end{tcolorbox}
  </xsl:template>
</xsl:stylesheet>

