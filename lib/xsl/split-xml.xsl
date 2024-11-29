<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="@* | node()">
    <xsl:copy>
      <xsl:apply-templates select="@* | node()"/>
    </xsl:copy>
  </xsl:template>
  <xsl:template match="/prompts">
    <xsl:result-document href="./tmp/split/beginner.xml">
      <xsl:copy-of select="beginner"/>
    </xsl:result-document>
    <xsl:result-document href="./tmp/split/intermediate.xml">
      <xsl:copy-of select="intermediate"/>
    </xsl:result-document>
  </xsl:template>
</xsl:stylesheet>
