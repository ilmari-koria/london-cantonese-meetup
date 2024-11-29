<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="@* | node()">
    <xsl:copy>
      <xsl:apply-templates select="@* | node()"/>
    </xsl:copy>
  </xsl:template>
  <xsl:template match="/prompts">
    <xsl:result-document href="./tmp/split/beginner.xml">
      <prompts>
        <xsl:copy-of select="beginner"/>
      </prompts>
    </xsl:result-document>
    <xsl:result-document href="./tmp/split/intermediate.xml">
      <prompts>
        <xsl:copy-of select="intermediate"/>
      </prompts>
    </xsl:result-document>
  </xsl:template>
</xsl:stylesheet>
