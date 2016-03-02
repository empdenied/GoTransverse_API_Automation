<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xs="http://www.w3.org/2001/XMLSchema" xpath-default-namespace="http://www.springframework.org/schema/beans" xmlns:MadCap="http://www.madcapsoftware.com/Schemas/MadCap.xsd" version="2.0">
    <xsl:output method="xml" indent="yes"/>
    <xsl:strip-space elements="*"/>
    <xsl:template match="//spring:beans[1]/bean[1]/property[1]/map[1]" xmlns:spring="http://www.springframework.org/schema/beans" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation=" http://www.springframework.org/schema/beans http://www.springframework.org/schema/beans/spring-beans-3.1.xsd">
        <!-- Complex Table Head -->
        <xsl:apply-templates/>
        <xsl:for-each select="entry">
            <xsl:variable name="filename" select="@key" />
            <xsl:result-document href="{$filename}.flsnp">
                <html xmlns:MadCap="http://www.madcapsoftware.com/Schemas/MadCap.xsd">
                    <head>
                        <link href="../../Resources/TableStyles/PatternedRows.css" rel="stylesheet" MadCap:stylesheetType="table" />
                        <link href="../../Resources/Stylesheets/MainStyles.css" rel="stylesheet" type="text/css" />
                    </head>
                    <body>
                        <h2>Query Keys</h2>
                        <table style="mc-table-style: url('../../Resources/TableStyles/PatternedRows.css');" class="TableStyle-PatternedRows" cellspacing="0">
                            <thead><tr>
                                <td>Key</td>
                                <td>Type</td>
                            </tr></thead>
                            <xsl:for-each select="bean/property[@name='fieldDefinitions']/map/entry">
                                <tr>
                                    <td>
                                        <xsl:value-of select="@key"/>
                                        
                                    </td>
                                    <td>
                                        <xsl:value-of select="bean/property[@name='fieldClass']/@value"/>
                                    </td>
                                </tr>
                            </xsl:for-each>
                            <tr/>
                        </table>
                        <xsl:if test="bean/property[@name='validParameterSets']/list/value[contains(.,',')]">
                            <p>*Required parameter pairings:
                        
                                <xsl:for-each select="bean/property[@name='validParameterSets']/list/value[contains(.,',')]">
                                   <xsl:value-of select="../value[contains(.,',')]"/>
                               </xsl:for-each>
                            </p>
                        </xsl:if>
                    </body>
                </html>
            </xsl:result-document>
        </xsl:for-each>
    </xsl:template>
</xsl:stylesheet>