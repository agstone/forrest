<?xml version="1.0"?>
<!--
  Copyright 2002-2004 The Apache Software Foundation

  Licensed under the Apache License, Version 2.0 (the "License");
  you may not use this file except in compliance with the License.
  You may obtain a copy of the License at

      http://www.apache.org/licenses/LICENSE-2.0

  Unless required by applicable law or agreed to in writing, software
  distributed under the License is distributed on an "AS IS" BASIS,
  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
  See the License for the specific language governing permissions and
  limitations under the License.
-->
<!--
Stylesheet for generating an XDoc from an RSS 1.0 feed.
-->

<xsl:stylesheet version="1.0" 
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  

  <xsl:output method="xml" version="1.0" encoding="UTF-8"
    doctype-public="-//APACHE//DTD Documentation V2.0//EN" 
    doctype-system="http://apache.org/forrest/dtd/document-v20.dtd"/>

  <xsl:include href="rss20ToXdoc.xsl"/>
    
  <xsl:template match="/">
      <xsl:apply-templates/>
  </xsl:template>
  
  <xsl:template match="channel">
    <section>
      <title><xsl:value-of select="title"/></title>
      <xsl:apply-templates select="item"/>
    </section>
  </xsl:template>
</xsl:stylesheet>
