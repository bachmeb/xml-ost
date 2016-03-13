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
    <xsl:apply-templates/>
</xsl:template>
<xsl:template match="First">
    <p>First: <xsl:apply-templates/></p>
</xsl:template>
<xsl:template match="Last">
    <p>Last: <xsl:apply-templates/></p>
</xsl:template>
<xsl:template match="Phone">
    <p>Phone: <xsl:apply-templates/></p>
</xsl:template>
</xsl:stylesheet>
