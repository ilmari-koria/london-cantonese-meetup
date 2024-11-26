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
      \textbf{\large 中級到高級（繁體版）}
      \end{center}
      \end{tcolorbox}
      \newpage
      \begin{center}
      \section*{「我可唔可以問幾個問題呀？」}
      \end{center}
    </xsl:text>
    <xsl:apply-templates />
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
    \subsection*{中高級}
    \vspace{10pt}
    \begin{enumerate-with-translation}
    \largeitem{\C{聽}{teng1}\C{見}{gin3}\C{話}{waa6}\C{學}{hok6}\C{中}{zung1}\C{文}{man4}\C{嘅}{ge3}\C{外}{ngoi6}\C{國}{gwok3}\C{人}{jan4}\C{多}{do1}\C{數}{sou3}\C{都}{dou1}\C{學}{hok6}\C{國}{gwok3}\C{語}{jyu5}。\C{係}{hai6}\C{唔}{m4}\C{係}{hai6}\C{真}{zan1}\C{㗎}{gaa3}？}
    \smallitem{I heard that most foreigners learning Chinese are (actually) studying Mandarin. Is that true?}
    \end{enumerate-with-translation}
    \end{tcolorbox}
  </xsl:template>
</xsl:stylesheet>

