<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
							  xmlns:tns="http://www.elliemae.com/encompass/platform">
		
	 <!-- Add prefix "plat:" to all nodes-->
	 <xsl:template match="tns:*">
	 	<xsl:element name="ent:{local-name()}" namespace= "http://www.elliemae.com/services/entitlements">
	       <xsl:apply-templates select="node()|@*"/>		   
	  </xsl:element>
	 </xsl:template>
	 
</xsl:stylesheet>