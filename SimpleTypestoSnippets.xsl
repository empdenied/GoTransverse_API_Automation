<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:MadCap="http://www.madcapsoftware.com/Schemas/MadCap.xsd" exclude-result-prefixes="xs" version="2.0">
    <xsl:output method="xml" indent="yes"/>
    <xsl:strip-space elements="*"/>
    <xsl:template match="//wsdl:definitions[1]/wsdl:types[1]/xs:schema[2]">
        <xsl:for-each select="xs:simpleType[@name]">
            <xsl:variable name="filename" select="@name"/>
            <xsl:result-document href="{$filename}.flsnp">
                <html>
                    <head>
                        <link href="../../Resources/TableStyles/PatternedRows.css" rel="stylesheet" MadCap:stylesheetType="table" />
                        <title>
                            <xsl:value-of select="@name"/>
                        </title>
                        <link href="../../Resources/Stylesheets/MainStyles.css" rel="stylesheet" type="text/css" />
                    </head>
                    <body>
                        
                            <xsl:for-each select="xs:restriction/xs:enumeration">
                               
                                    <xsl:value-of select="@value"/><br/>
                               
                            </xsl:for-each>
                    </body>
                </html>
            </xsl:result-document>
        </xsl:for-each>
    </xsl:template>
</xsl:stylesheet>