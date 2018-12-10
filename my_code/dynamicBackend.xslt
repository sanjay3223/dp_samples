<xsl:stylesheet version="1.0" extension-element-prefixes="dp" exclude-result-prefixes="dp" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:soapenv="http://schemas.xmlsoap.org/soap/envelope/" xmlns:dp="http://www.datapower.com/extensions" add other required namespaces>
   <xsl:output method="xml" indent="yes"/>
   <xsl:template match="/">
      <xsl:variable name="endpointURI" select="dp:variable('var://service/URI')"/>
      <xsl:choose>
         <xsl:when test="contains($endpointURI,'/test1/test2/something')">
            <dp:set-variable name="'var://service/routing-url'" value="'https://endpoint1.com'"/>
         </xsl:when>
         <xsl:otherwise>
            <dp:set-variable name="'var://service/routing-url'" value="'https://endpoint2.com'"/>
         </xsl:otherwise>
      </xsl:choose>
   </xsl:template>
</xsl:stylesheet>