<?xml version="1.0"?>

<xsl:stylesheet
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    version="1.0">

 <xsl:import href="copyover.xsl"/>

 <xsl:variable name="bugzilla">http://nagoya.apache.org/bugzilla/show_bug.cgi?id=</xsl:variable>

 <xsl:template match="/">
  <xsl:apply-templates select="//changes"/>
 </xsl:template>
 
 <xsl:template match="changes">
  <document>
   <header>
    <title>History of Changes</title>
   </header>
   <body>
    <xsl:apply-templates/>
   </body>
  </document>
 </xsl:template>

 <xsl:template match="release">
  <section>
   <title>Version <xsl:value-of select="@version"/> (<xsl:value-of select="@date"/>)</title>
   <ul>
    <xsl:apply-templates/>
   </ul>
  </section>
 </xsl:template>

 <xsl:template match="action">
  <li>
   <icon src="images/{@type}.jpg" alt="{@type}"/>
   <xsl:apply-templates/>
   <xsl:text>(</xsl:text><xsl:value-of select="@dev"/><xsl:text>)</xsl:text>

   <xsl:if test="@due-to">
    <xsl:text> Thanks to </xsl:text>
    <xsl:variable name="email-name" select="substring-before(@due-to-email, '@')"/>
    <xsl:variable name="email-domain" select="substring-after(@due-to-email, '@')"/>
    <link href="mailto:{$email-name}.at.{$email-domain}"><xsl:value-of select="@due-to"/></link>
    <xsl:text>.</xsl:text>
   </xsl:if>

   <xsl:if test="@fixes-bug">
    <xsl:text> Fixes </xsl:text>
    <link href="{$bugzilla}{@fixes-bug}">
     <xsl:text>bug </xsl:text><xsl:value-of select="@fixes-bug"/>
    </link>
    <xsl:text>.</xsl:text>
   </xsl:if>
  </li>
 </xsl:template>

</xsl:stylesheet>
