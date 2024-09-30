<?xml version="1.0" encoding="utf-8"?>

<xsl:stylesheet version="2.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:output method="html"
              indent="yes"
              omit-xml-declaration="yes" />

  <xsl:variable name="dir" select="'../anki'" />
  <xsl:variable name="audio"><xsl:value-of select="../audio-alt"/></xsl:variable>

  <xsl:template match="/">
    <html>
      <h1>Cantonese Language Meetup Prompts</h1>
      <h2>Beginner</h2>
      <table>
        <xsl:for-each select="prompts/beginner/entry/cantonese">
          <tr>
            <td><xsl:value-of select="."/></td>
            <td><xsl:value-of select="../jyutpinyin"/></td>
            <td><xsl:value-of select="../translation-en"/></td>
            <td><xsl:value-of select="../audio"/></td>
            <td><audio src="../audio/{$audio}" type="audio/mpeg">Your browser does not support the audio element.</audio></td> 
          </tr>
        </xsl:for-each>
      </table>
      <h2>Intermediate</h2>
      <table>
        <xsl:for-each select="prompts/intermediate/entry/cantonese">
          <tr>
            <td><xsl:value-of select="."/></td>
            <td><xsl:value-of select="../jyutpinyin"/></td>
            <td><xsl:value-of select="../translation-en"/></td>
            <td><xsl:value-of select="../audio"/></td>
            <td><xsl:value-of select="../audio-alt"/></td>
          </tr>
        </xsl:for-each>
      </table>
    </html>
  </xsl:template>
</xsl:stylesheet>
