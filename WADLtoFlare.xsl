<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xpath-default-namespace="http://wadl.dev.java.net/2009/02" exclude-result-prefixes="xs" version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:MadCap="http://www.madcapsoftware.com/Schemas/MadCap.xsd">
	<xsl:output method="xml" indent="yes"/>
	<xsl:strip-space elements="*"/>
	<xsl:template match="/application/resources">
		<html class="API" xmlns:MadCap="http://www.madcapsoftware.com/Schemas/MadCap.xsd">
			<head>
				<link href="../../../../Resources/TableStyles/PatternedRows.css" rel="stylesheet" MadCap:stylesheetType="table"/>
				<title>REST Endpoints</title>
				<link href="../../../../Resources/Stylesheets/MainStyles.css" rel="stylesheet" type="text/css"/>
			</head>
			<body>
				<h1>REST Endpoints</h1>
				<xsl:for-each select="resource">
					<MadCap:dropDown>
						<MadCap:dropDownHead>
							<MadCap:dropDownHotspot>
								<b><xsl:value-of select="@path"/></b>
							</MadCap:dropDownHotspot>
						</MadCap:dropDownHead>
						<MadCap:dropDownBody>
							<table>
								<xsl:for-each select="method">
									<tr>
										<td><xsl:value-of select="@id"/></td>
										<td>
											<xsl:value-of select="@name"/>
										</td>
										
										
										<td>https://my.tractbilling.com/t/s/r/1.29<xsl:value-of select="../@path"/>
										
									
										</td>
									</tr>
								</xsl:for-each>
								<xsl:for-each select="resource/method">
									<tr>
										<td>
											<xsl:value-of select="@id"/>
										</td>
										<td>
											<xsl:value-of select="@name"/>
										</td>
										
										
										<td>https://my.tractbilling.com/t/s/r/1.29<xsl:value-of select="../../@path"/>/<xsl:value-of select="../@path"/>
										
										
										
									
										</td>
									</tr></xsl:for-each>
									
							</table>
						</MadCap:dropDownBody>
					</MadCap:dropDown>
					<br/>
				</xsl:for-each>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>
