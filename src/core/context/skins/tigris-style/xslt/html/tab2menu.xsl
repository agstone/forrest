<?xml version="1.0"?>
<!--
This stylesheet generates 'tabs' at the top left of the Forrest skin.  Tabs are
visual indicators that a certain subsection of the URI space is being browsed.
For example, if we had tabs with paths:

Tab1:  ''
Tab2:  'community'
Tab3:  'community/howto'
Tab4:  'community/howto/xmlform/index.html'

Then if the current path was 'community/howto/foo', Tab3 would be highlighted.
The rule is: the tab with the longest path that forms a prefix of the current
path is enabled.

The output of this stylesheet is HTML of the form:
    <div class="tab">
      ...
    </div>

which is then merged by site2xhtml.xsl

$Id: tab2menu.xsl,v 1.2 2003/12/28 22:54:16 nicolaken Exp $
-->
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:import href="../../../common/xslt/html/tab2menu.xsl"/>
  
  <xsl:template match="tabs">
    <div class="tabs" id="toptabs">
     <table cellpadding="4" cellspacing="0" border="0">
       <tr>
          <xsl:call-template name="base-tabs"/>
        </tr>
      </table>
    </div>  
    <xsl:if test="tab[@dir=$longest-dir]/tab">
      <div class="level2tab">
        <xsl:call-template name="level2tabs"/>
      </div>
    </xsl:if>          
  </xsl:template>

  <xsl:template name="pre-separator">
  </xsl:template>

  <xsl:template name="post-separator">
  </xsl:template>

  <xsl:template name="separator">
  </xsl:template>

  <xsl:template name="level2-pre-separator">
  </xsl:template>

  <xsl:template name="level2-post-separator">
  </xsl:template>

  <xsl:template name="level2-separator">&#160;|&#160;</xsl:template>
  
  <xsl:template name="selected">
    <th>
      <xsl:call-template name="base-selected"/>
    </th>
  </xsl:template>

  <xsl:template name="not-selected">
    <td>        
      <xsl:call-template name="base-selected"/>
    </td>
  </xsl:template>

  <xsl:template name="level2-selected">
     <xsl:call-template name="base-selected"/>
  </xsl:template>

  <xsl:template name="level2-not-selected">
     <xsl:call-template name="base-not-selected"/> 
  </xsl:template>
  
</xsl:stylesheet>
