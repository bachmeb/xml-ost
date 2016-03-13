<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:output method="html" 
    media-type="text/html" 
    doctype-public="HTML"
    doctype-system="SYSTEM"
    cdata-section-elements="script style"
    indent="yes" omit-xml-declaration="yes"
    encoding="utf-8"/>


<xsl:template match="/">
   
<html>

<head>
<title>My Phone Book</title>   
<meta http-equiv="Content-Type" content="text/html;charset=utf-8" />
</head>
  
<body>

    <h4>My Phone Book</h4>
    <xsl:apply-templates select="//Listing" />
    </body>
</html>

</xsl:template>
<xsl:template match="Listing">
    <div>
	    <span style="color: green">
	        <xsl:apply-templates select="Last"/>
	        <xsl:apply-templates select="First"/>
	    </span>
	    <span style="color: red;"><xsl:apply-templates select="Phone"/></span>
    </div>
</xsl:template>
<xsl:template match="First">
    <xsl:apply-templates/>&#160;
</xsl:template>
<xsl:template match="Last">
    <xsl:apply-templates/>, &#160;
</xsl:template>
<xsl:template match="Phone">
    <xsl:apply-templates/>&#160;
</xsl:template>
</xsl:stylesheet>
