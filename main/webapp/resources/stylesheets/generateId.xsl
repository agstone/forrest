<?xml version="1.0"?>
<!--
  Copyright 2002-2005 The Apache Software Foundation or its licensors,
  as applicable.

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
This stylesheet contains templates for converting documentv11 to HTML.  See the
imported document2html.xsl for details.
-->
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <!-- Template that generates an id -->
  <xsl:include href="lm://transform.xml.replaceCharsInString"/>
  <xsl:template name="generate-id">
    <xsl:choose>
      <xsl:when test="@id">
        <xsl:call-template name="replaceCharsInString">
          <xsl:with-param name="stringIn" select="@id"/>
          <xsl:with-param name="charsIn" select="' '"/>
          <xsl:with-param name="charsOut" select="'-'"/>
        </xsl:call-template>
      </xsl:when>
      <xsl:when test="@title">
        <xsl:call-template name="replaceCharsInString">
          <xsl:with-param name="stringIn" select="@title"/>
          <xsl:with-param name="charsIn" select="' '"/>
          <xsl:with-param name="charsOut" select="'-'"/>
        </xsl:call-template>
      </xsl:when>
      <xsl:otherwise>
        <xsl:value-of select="generate-id(.)"/>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>
</xsl:stylesheet>