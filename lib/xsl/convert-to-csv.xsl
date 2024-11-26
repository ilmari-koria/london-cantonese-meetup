<?xml version="1.0" encoding="utf-8"?>

<xsl:stylesheet version="2.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:output method="text"
              indent="yes"
              omit-xml-declaration="yes" />

  <xsl:variable name="dir" select="'../anki'" />

  <xsl:template match="/">
    <xsl:result-document href="{$dir}/cantonese-prompts-beginner.csv">
      <xsl:text>cantonese,jyutpinyin,translation-en,audio,audio-alt</xsl:text>
      <xsl:text>&#xa;</xsl:text>
      <xsl:for-each select="prompts/beginner/entry/cantonese">
        <xsl:value-of select="."/>
        <xsl:text>,</xsl:text>
        <xsl:value-of select="../jyutpinyin"/>
        <xsl:text>,</xsl:text>
        <xsl:value-of select="../translation-en"/>
        <xsl:text>,</xsl:text>
        <xsl:value-of select="../audio"/>
        <xsl:text>,</xsl:text>
        <xsl:value-of select="../audio-alt"/>
        <xsl:text>&#xa;</xsl:text>
      </xsl:for-each>
    </xsl:result-document>
    <xsl:result-document href="{$dir}/cantonese-prompts-intermediate.csv">
      <xsl:text>cantonese,jyutpinyin,translation-en,audio</xsl:text>
      <xsl:text>&#xa;</xsl:text>
      <xsl:for-each select="prompts/intermediate/entry/cantonese">
        <xsl:value-of select="."/>
        <xsl:text>,</xsl:text>
        <xsl:value-of select="../jyutpinyin"/>
        <xsl:text>,</xsl:text>
        <xsl:value-of select="../translation-en"/>
        <xsl:text>,</xsl:text>
        <xsl:value-of select="../audio"/>
        <xsl:text>,</xsl:text>
        <xsl:value-of select="../audio-alt"/>
        <xsl:text>&#xa;</xsl:text>
      </xsl:for-each>
    </xsl:result-document>
  </xsl:template>

</xsl:stylesheet>
