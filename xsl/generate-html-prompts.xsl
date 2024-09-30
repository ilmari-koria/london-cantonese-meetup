<?xml version="1.0" encoding="utf-8"?>

<xsl:stylesheet version="2.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:output method="html"
              indent="yes"
              omit-xml-declaration="yes" />

  <xsl:variable name="dir" select="'../anki'" />

  <xsl:template match="/">
    <html>
      <h1>Cantonese Language Meetup Prompts (HTML Test)</h1>
      <p><xsl:value-of select="format-dateTime(current-dateTime(), '[Y0001]-[M01]-[D01] [H01]:[m01]:[s01]')"/></p>
      <h2>Beginner</h2>
      <table>
        <xsl:for-each select="prompts/beginner/entry/cantonese">
          <tr>
            <td><xsl:value-of select="."/></td>
            <td><xsl:value-of select="../jyutpinyin"/></td>
            <td><xsl:value-of select="../translation-en"/></td>
            <td>
              <audio controls="controls">
                <source>
                  <xsl:attribute name="src">
                    <xsl:text>./prompts/audio/</xsl:text>
                    <xsl:value-of select="../audio"/> 
                  </xsl:attribute>
                  <xsl:attribute name="type">
                    <xsl:text>audio/mpeg</xsl:text>
                  </xsl:attribute>
                  <xsl:text>Your browser does not support the audio element.</xsl:text>
                </source>
              </audio>
            </td>
            <td>
              <audio controls="controls">
                <source>
                  <xsl:attribute name="src">
                    <xsl:text>./prompts/audio/</xsl:text>
                    <xsl:value-of select="../audio-alt"/> 
                  </xsl:attribute>
                  <xsl:attribute name="type">
                    <xsl:text>audio/mpeg</xsl:text>
                  </xsl:attribute>
                  <xsl:text>Your browser does not support the audio element.</xsl:text>
                </source>
              </audio>
            </td> 
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
            <td>
              <audio controls="controls">
                <source>
                  <xsl:attribute name="src">
                    <xsl:text>./prompts/audio/</xsl:text>
                    <xsl:value-of select="../audio"/> 
                  </xsl:attribute>
                  <xsl:attribute name="type">
                    <xsl:text>audio/mpeg</xsl:text>
                  </xsl:attribute>
                  <xsl:text>Your browser does not support the audio element.</xsl:text>
                </source>
              </audio>
            </td>
            <td>
              <audio controls="controls">
                <source>
                  <xsl:attribute name="src">
                    <xsl:text>./prompts/audio/</xsl:text>
                    <xsl:value-of select="../audio-alt"/> 
                  </xsl:attribute>
                  <xsl:attribute name="type">
                    <xsl:text>audio/mpeg</xsl:text>
                  </xsl:attribute>
                  <xsl:text>Your browser does not support the audio element.</xsl:text>
                </source>
              </audio>
            </td> 
          </tr>
        </xsl:for-each>
      </table>
    </html>
  </xsl:template>
</xsl:stylesheet>
