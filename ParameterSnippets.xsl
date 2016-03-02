<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:MadCap="http://www.madcapsoftware.com/Schemas/MadCap.xsd" exclude-result-prefixes="xs" version="2.0">
    <xsl:output method="xml" indent="yes"/>
    <xsl:strip-space elements="*"/>
    <xsl:template match="//wsdl:definitions[1]/wsdl:types[1]/xs:schema[2]">
        <xsl:for-each select="xs:complexType[@name]">
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
                        <MadCap:dropDown>
                            <MadCap:dropDownHead>
                                <MadCap:dropDownHotspot>Parameters</MadCap:dropDownHotspot>
                            </MadCap:dropDownHead>
                            <MadCap:dropDownBody>
                                <p>Extends:
                                  <xsl:value-of disable-output-escaping="yes" select="concat('&lt;','a href=','&quot;../../../C_Developer Center/Entities/129/', xs:complexContent/xs:extension/substring-after(@base,':'), '.htm&quot;','&gt;', xs:complexContent/xs:extension/substring-after(@base,':'), '&lt;/a', '&gt;')"/>
                                   
                                </p>
                                <xsl:if test="xs:complexContent/xs:extension/xs:sequence/xs:element[@name] | xs:complexContent/xs:extension/xs:sequence/xs:element[@ref] | xs:complexContent/xs:extension/xs:sequence/xs:choice">
                                    <h3>Elements</h3>
                                    <table style="mc-table-style: url('../../../Resources/TableStyles/PatternedRows.css');" class="TableStyle-PatternedRows" cellspacing="0">
                                        <!-- Table Head -->
                                        <thead>
                                            <tr>
                                                <td>
                                                    <b>Element</b>
                                                </td>
                                                <td>
                                                    <b>Type</b>
                                                </td>
                                                <td>
                                                    <b>Required?</b>
                                                </td>
                                                <td>
                                                    <b>Description</b>
                                                </td>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <xsl:if test="xs:complexContent/xs:extension/xs:sequence/xs:choice[xs:element] | xs:complexContent/xs:extension/xs:sequence/xs:element">
                                                <xsl:for-each select="xs:complexContent/xs:extension/xs:sequence/xs:choice[xs:element]">
                                                    <tr>
                                                        <!-- Element -->
                                                        <td>
                                                            <xsl:text>CHOICE:</xsl:text>
                                                            <ul>
                                                                <xsl:for-each select="xs:element">
                                                                    <li>
                                                                        <xsl:choose>
                                                                            <xsl:when test="@ref">
                                                                                <xsl:value-of select="substring-after(@ref,':')"/>
                                                                            </xsl:when>
                                                                            <xsl:when test="@name">
                                                                                <xsl:value-of select="@name"/>
                                                                            </xsl:when>
                                                                        </xsl:choose>
                                                                    </li>
                                                                </xsl:for-each>
                                                            </ul>
                                                        </td>
                                                        <!-- Type -->
                                                        <td>
                                                            <xsl:for-each select="xs:element">
                                                                <xsl:choose>
                                                                    <xsl:when test="@ref">
                                                                        <xsl:value-of select="substring-after(@ref,':')"/>
                                                                        <br/>
                                                                    </xsl:when>
                                                                    <xsl:when test="@name">
                                                                        <xsl:value-of select="@name"/>
                                                                        <br/>
                                                                    </xsl:when>
                                                                </xsl:choose>
                                                            </xsl:for-each>
                                                        </td>
                                                        <!-- Required? -->
                                                        <td>
                                                            <xsl:if test="@minOccurs">
                                                                <xsl:text>Y</xsl:text>
                                                            </xsl:if>
                                                        </td>
                                                        <!-- Description -->
                                                        <td></td>
                                                    </tr>
                                                </xsl:for-each>
                                                <xsl:for-each select="xs:complexContent/xs:extension/xs:sequence/xs:element">
                                                    <tr>
                                                        <!-- Element -->
                                                        <td>
                                                            <xsl:choose>
                                                                <xsl:when test="@ref">
                                                                    <xsl:value-of select="substring-after(@ref,':')"/>
                                                                </xsl:when>
                                                                <xsl:when test="@name">
                                                                    <xsl:value-of select="substring-after(@name,'')"/>
                                                                </xsl:when>
                                                            </xsl:choose>
                                                        </td>
                                                        <!-- Type -->
                                                        <td>
                                                            <xsl:choose>
                                                                <xsl:when test="@ref">
                                                                    <xsl:value-of select="substring-after(@ref,':')"/>
                                                                </xsl:when>
                                                                <xsl:when test="@type">
                                                                    <xsl:value-of select="substring-after(@type,':')"/>
                                                                </xsl:when>
                                                            </xsl:choose>
                                                        </td>
                                                        <!-- Required? -->
                                                        <td>
                                                            <xsl:if test="not(@minOccurs)">
                                                                <xsl:text>Y</xsl:text>
                                                            </xsl:if>
                                                        </td>
                                                        <!-- Description -->
                                                        <td></td>
                                                    </tr>
                                                </xsl:for-each>
                                            </xsl:if>
                                        </tbody>
                                    </table>
                                </xsl:if>
                                <xsl:if test="xs:complexContent/xs:extension/xs:attribute[@name]">
                                    <h3>Attributes</h3>
                                    <table style="mc-table-style: url('../../../Resources/TableStyles/PatternedRows.css');" class="TableStyle-PatternedRows" cellspacing="0">
                                        <thead>
                                            <tr>
                                                <td>
                                                    <b>Attribute</b>
                                                </td>
                                                <td>
                                                    <b>Required?</b>
                                                </td>
                                                <td>
                                                    <b>Datatype</b>
                                                </td>
                                                <td>
                                                    <b>Description</b>
                                                </td>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <xsl:for-each select="xs:complexContent/xs:extension/xs:attribute[@name]">
                                                <tr>
                                                    <!-- Attribute -->
                                                    <td>
                                                        <xsl:if test="@name">
                                                            <xsl:value-of select="@name"/>
                                                        </xsl:if>
                                                    </td>
                                                    <!-- Required? -->
                                                    <td>
                                                        <xsl:if test="@use">
                                                            <xsl:text>Y</xsl:text>
                                                        </xsl:if>
                                                    </td>
                                                    <!-- DataType? -->
                                                    <td>
                                                        <xsl:if test="@type">
                                                            <xsl:value-of select="substring-after(@type,':')"/>
                                                        </xsl:if>
                                                    </td>
                                                    <!-- Description? -->
                                                    <td> <xsl:if test="@type[contains(.,'tns')]">
                                                
                                                        <xsl:value-of disable-output-escaping="yes" select="concat('&lt;','MadCap:snippetBlock src=','&quot;../../../Resources/Snippets/SimpleTypes/', substring-after(@type,':'), '.flsnp&quot;/','&gt;')" /> 
                                                    </xsl:if></td>
                                                </tr>
                                            </xsl:for-each>
                                        </tbody>
                                    </table>
                                </xsl:if>
                            </MadCap:dropDownBody>
                        </MadCap:dropDown>
                       </body>
                    </html>
                </xsl:result-document>
            </xsl:for-each>
        </xsl:template>
    </xsl:stylesheet>