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
Stylesheet which strips everything outside the <body> and replaces it with <div
class="content">, making raw HTML suitable for merging with the Forrest tabs
and menu.
-->

<xsl:stylesheet
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  version="1.0">

  <xsl:import href="copyover.xsl"/>
  <xsl:template match="/*[local-name()='html']">
	  <xsl:apply-templates select="*[local-name()='body']"/>
  </xsl:template>

  <xsl:template match="/*[local-name()='html']/*[local-name()='body']">
    <div class="content">
      <xsl:apply-templates/>
    </div>
  </xsl:template>

</xsl:stylesheet>

