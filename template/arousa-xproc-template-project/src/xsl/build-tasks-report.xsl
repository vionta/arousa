<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet
    version="3.0" 
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" 
    xmlns:xsd="http://www.w3.org/2001/XMLSchema"
    >
  
  <xsl:output method="html" indent="yes" ></xsl:output>

  <xsl:template match="/">
    <html>
      <head>
      </head>
      <body>
	<h1>
	  <xsl:value-of select="string(/*/@name)" />
	</h1>
	<ul>
	  <xsl:apply-templates select="//target" />
	</ul>
      </body>
    </html>
  </xsl:template>
  
  <xsl:template match="target">
    <li>
      <b><xsl:value-of select="string(@name)" /> </b>
      <xsl:if test="@desc" >
      <p>
	<xsl:value-of select="string(@desc)" />
      </p>
      </xsl:if>
    </li>
  </xsl:template>
  
</xsl:stylesheet>
