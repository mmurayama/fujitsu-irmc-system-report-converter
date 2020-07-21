<?xml version="1.0" encoding="utf-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:altova="http://www.altova.com" xmlns:altovaext="http://www.altova.com/xslt-extensions" xmlns:clitype="clitype" xmlns:fn="http://www.w3.org/2005/xpath-functions" xmlns:iso4217="http://www.xbrl.org/2003/iso4217" xmlns:ix="http://www.xbrl.org/2008/inlineXBRL" xmlns:java="java" xmlns:link="http://www.xbrl.org/2003/linkbase" xmlns:map="http://www.w3.org/2005/xpath-functions/map" xmlns:math="http://www.w3.org/2005/xpath-functions/math" xmlns:sps="http://www.altova.com/StyleVision/user-xpath-functions" xmlns:xbrldi="http://xbrl.org/2006/xbrldi" xmlns:xbrli="http://www.xbrl.org/2003/instance" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" exclude-result-prefixes="altova altovaext clitype fn iso4217 ix java link map math sps xbrldi xbrli xlink xs xsi">
	<xsl:output version="4.0" method="html" indent="no" encoding="UTF-8" doctype-public="-//W3C//DTD HTML 4.01 Transitional//EN" doctype-system="http://www.w3.org/TR/html4/loose.dtd"/>
	<xsl:param name="SV_OutputFormat" select="'HTML'"/>
	<xsl:variable name="XML" select="/"/>
	<xsl:variable name="altova:nPxPerIn" select="96"/>
	<xsl:template match="/">
		<html>
			<head>
        <title>PRIMERGY PCSysScan Report</title>
				<!-- <meta http-equiv="X-UA-Compatible" content="IE=7"/> -->
				<style type="text/css">
					<xsl:comment>
            body {
            padding: 5px 10px;
            background-color:white;
            font-family:Verdana, Arial, Helvetica, sans-serif;
            font-size:small;
            }
            h2 { font-size:medium;
            }
            h1 { color:#d70000;
            font-size:large;
            font-weight:bold;
            }
            h3 { font-size:small;
            }
            h4 { font-size:small;
            }
            table {
            border-spacing:0;
            border-collapse: collapse;
            background-color:white;
            empty-cells:show;
            }
            thead {
            background-color:#cfcfcf;
            color:black;
            font-weight:bold;
            text-align:center;
            }
            .TableWithoutBorder {
            background-color:transparent;
            border: 0;
            padding:2;
            }
            pre { font-size:small;
            }
          </xsl:comment>
				</style>
				<xsl:comment>[if IE]&gt;&lt;STYLE type=&quot;text/css&quot;&gt;.altova-rotate-left-textbox{filter: progid:DXImageTransform.Microsoft.BasicImage(rotation=3)} .altova-rotate-right-textbox{filter: progid:DXImageTransform.Microsoft.BasicImage(rotation=1)} &lt;/STYLE&gt;&lt;![endif]</xsl:comment>
				<xsl:comment>[if !IE]&gt;&lt;!</xsl:comment>
				<style type="text/css">.altova-rotate-left-textbox{-webkit-transform: rotate(-90deg) translate(-100%, 0%); -webkit-transform-origin: 0% 0%;-moz-transform: rotate(-90deg) translate(-100%, 0%); -moz-transform-origin: 0% 0%;-ms-transform: rotate(-90deg) translate(-100%, 0%); -ms-transform-origin: 0% 0%;}.altova-rotate-right-textbox{-webkit-transform: rotate(90deg) translate(0%, -100%); -webkit-transform-origin: 0% 0%;-moz-transform: rotate(90deg) translate(0%, -100%); -moz-transform-origin: 0% 0%;-ms-transform: rotate(90deg) translate(0%, -100%); -ms-transform-origin: 0% 0%;}</style>
				<xsl:comment>&lt;![endif]</xsl:comment>
				<style type="text/css">@page { margin-left:0.6in; margin-right:0.6in; margin-top:0.79in; margin-bottom:0.79in } @media print { br.altova-page-break { page-break-before: always; } }</style>
			</head>
			<body>
				<xsl:for-each select="$XML">
					<a>
						<xsl:attribute name="name">
							<xsl:value-of select="&apos;Top&apos;"/>
						</xsl:attribute>
					</a>
					<h1 align="left">
						<span>
							<xsl:text>PRIMERGY Diagnostics Report V</xsl:text>
						</span>
						<xsl:for-each select="Root">
							<xsl:for-each select="@Version">
								<span>
									<xsl:value-of select="string(.)"/>
								</span>
							</xsl:for-each>
						</xsl:for-each>
					</h1>
					<br/>
					<h2>
						<span>
							<xsl:text>Report Summary</xsl:text>
						</span>
					</h2>
					<table border="0" class="TableWithoutBorder" width="100%">
						<xsl:variable name="altova:CurrContextGrid_0" select="."/>
						<tbody>
							<tr>
								<td width="150">
									<span>
										<xsl:text>Created:</xsl:text>
									</span>
								</td>
								<td>
									<xsl:for-each select="Root">
										<xsl:for-each select="Summary">
											<xsl:for-each select="Created">
												<xsl:for-each select="Date">
													<xsl:apply-templates/>
												</xsl:for-each>
											</xsl:for-each>
										</xsl:for-each>
									</xsl:for-each>
									<span>
										<xsl:text> (</xsl:text>
									</span>
									<xsl:for-each select="Root">
										<xsl:for-each select="Summary">
											<xsl:for-each select="Created">
												<xsl:for-each select="BuildDuration">
													<xsl:apply-templates/>
												</xsl:for-each>
											</xsl:for-each>
											<span>
												<xsl:text> seconds)</xsl:text>
											</span>
										</xsl:for-each>
									</xsl:for-each>
								</td>
							</tr>
							<tr>
								<td width="150">
									<span>
										<xsl:text>Computer</xsl:text>
									</span>
									<span style="font-size:small; ">
										<xsl:text>:</xsl:text>
									</span>
								</td>
								<td>
									<xsl:for-each select="Root">
										<xsl:for-each select="Summary">
											<xsl:for-each select="Created">
												<xsl:for-each select="Computer">
													<xsl:apply-templates/>
												</xsl:for-each>
											</xsl:for-each>
										</xsl:for-each>
									</xsl:for-each>
									<br/>
								</td>
							</tr>
							<tr>
								<td width="150">
									<span>
										<xsl:text>Operating System:</xsl:text>
									</span>
								</td>
								<td>
									<xsl:for-each select="Root">
										<xsl:for-each select="Summary">
											<xsl:for-each select="Created">
												<xsl:for-each select="OS">
													<xsl:apply-templates/>
												</xsl:for-each>
											</xsl:for-each>
										</xsl:for-each>
									</xsl:for-each>
								</td>
							</tr>
							<tr>
								<td width="150">
									<span>
										<xsl:text>Domain:</xsl:text>
									</span>
								</td>
								<td>
									<xsl:for-each select="Root">
										<xsl:for-each select="Summary">
											<xsl:for-each select="Created">
												<xsl:for-each select="Domain">
													<xsl:apply-templates/>
												</xsl:for-each>
											</xsl:for-each>
										</xsl:for-each>
									</xsl:for-each>
								</td>
							</tr>
							<tr>
								<td width="150">
									<span>
										<xsl:text>Administrator Account:</xsl:text>
									</span>
								</td>
								<td>
									<xsl:choose>
										<xsl:when test="(  Root/Summary/Created/IsAdmin ) = true()">
											<span>
												<xsl:text>yes</xsl:text>
											</span>
										</xsl:when>
										<xsl:otherwise>
											<span>
												<xsl:text>no</xsl:text>
											</span>
										</xsl:otherwise>
									</xsl:choose>
								</td>
							</tr>
						</tbody>
					</table>
					<br/>
					<table border="0" class="TableWithoutBorder" width="100%">
						<xsl:variable name="altova:CurrContextGrid_1" select="."/>
						<tbody>
							<tr>
								<td width="150">
									<span style="color:red; font-weight:bold; ">
										<xsl:text>Errors:</xsl:text>
									</span>
								</td>
								<td>
									<xsl:for-each select="Root">
										<xsl:for-each select="Summary">
											<xsl:for-each select="Errors">
												<xsl:for-each select="@Count">
													<span style="color:red; font-weight:bold; ">
														<xsl:value-of select="string(.)"/>
													</span>
												</xsl:for-each>
											</xsl:for-each>
										</xsl:for-each>
									</xsl:for-each>
									<span style="color:red; font-weight:bold; ">
										<xsl:text> Message(s)</xsl:text>
									</span>
								</td>
							</tr>
						</tbody>
					</table>
					<table border="0" class="TableWithoutBorder" width="100%">
						<xsl:variable name="altova:CurrContextGrid_2" select="."/>
						<tbody>
							<tr>
								<td valign="top" width="127"/>
								<td>
									<xsl:for-each select="Root">
										<xsl:for-each select="Summary">
											<xsl:for-each select="Errors">
												<xsl:for-each select="SNMP">
													<xsl:for-each select="Message">
														<ul style="margin-bottom:0; margin-top:0; ">
															<li style="color:red; ">
																<span style="color:red; ">
																	<xsl:apply-templates/>
																</span>
															</li>
														</ul>
													</xsl:for-each>
												</xsl:for-each>
											</xsl:for-each>
										</xsl:for-each>
									</xsl:for-each>
								</td>
							</tr>
						</tbody>
					</table>
					<table border="0" class="TableWithoutBorder" width="100%">
						<xsl:variable name="altova:CurrContextGrid_3" select="."/>
						<tbody>
							<tr>
								<td valign="top" width="128"/>
								<td>
									<xsl:for-each select="Root">
										<xsl:for-each select="Summary">
											<xsl:for-each select="Errors">
												<xsl:for-each select="ServerView">
													<xsl:for-each select="Message">
														<ul style="margin-bottom:0; margin-top:0; ">
															<li style="color:red; ">
																<span style="color:red; ">
																	<xsl:apply-templates/>
																</span>
															</li>
														</ul>
													</xsl:for-each>
												</xsl:for-each>
											</xsl:for-each>
										</xsl:for-each>
									</xsl:for-each>
									<xsl:for-each select="Root">
										<xsl:for-each select="Summary">
											<xsl:for-each select="Errors">
												<ul style="margin-bottom:0; margin-top:0; " type="disc">
													<xsl:for-each select="SMBIOS">
														<li style="color:red; ">
															<a>
																<xsl:choose>
																	<xsl:when test="not(string(&apos;#SMBIOS&apos;))">
																		<xsl:attribute name="href">
																			<xsl:text>#</xsl:text>
																		</xsl:attribute>
																	</xsl:when>
																	<xsl:when test="substring(string(&apos;#SMBIOS&apos;), 1, 1) = '#'">
																		<xsl:attribute name="href">
																			<xsl:value-of select="&apos;#SMBIOS&apos;"/>
																		</xsl:attribute>
																	</xsl:when>
																	<xsl:otherwise>
																		<xsl:attribute name="href">
																			<xsl:if test="substring(string(&apos;#SMBIOS&apos;), 2, 1) = ':'">
																				<xsl:text>file:///</xsl:text>
																			</xsl:if>
																			<xsl:value-of select="translate(string(&apos;#SMBIOS&apos;), '&#x5c;', '/')"/>
																		</xsl:attribute>
																	</xsl:otherwise>
																</xsl:choose>
																<span style="color:red; ">
																	<xsl:apply-templates/>
																</span>
															</a>
														</li>
													</xsl:for-each>
												</ul>
											</xsl:for-each>
										</xsl:for-each>
									</xsl:for-each>
									<xsl:for-each select="Root">
										<xsl:for-each select="Summary">
											<xsl:for-each select="Errors">
												<ul style="margin-bottom:0; margin-top:0; " type="disc">
													<xsl:for-each select="Eventlog">
														<li style="color:red; ">
															<a>
																<xsl:choose>
																	<xsl:when test="not(string(&apos;#OS Eventlog&apos;))">
																		<xsl:attribute name="href">
																			<xsl:text>#</xsl:text>
																		</xsl:attribute>
																	</xsl:when>
																	<xsl:when test="substring(string(&apos;#OS Eventlog&apos;), 1, 1) = '#'">
																		<xsl:attribute name="href">
																			<xsl:value-of select="&apos;#OS Eventlog&apos;"/>
																		</xsl:attribute>
																	</xsl:when>
																	<xsl:otherwise>
																		<xsl:attribute name="href">
																			<xsl:if test="substring(string(&apos;#OS Eventlog&apos;), 2, 1) = ':'">
																				<xsl:text>file:///</xsl:text>
																			</xsl:if>
																			<xsl:value-of select="translate(string(&apos;#OS Eventlog&apos;), '&#x5c;', '/')"/>
																		</xsl:attribute>
																	</xsl:otherwise>
																</xsl:choose>
																<span style="color:red; ">
																	<xsl:apply-templates/>
																</span>
															</a>
														</li>
													</xsl:for-each>
												</ul>
											</xsl:for-each>
										</xsl:for-each>
									</xsl:for-each>
									<ul style="color:red; ">
										<xsl:for-each select="Root">
											<xsl:for-each select="Summary">
												<xsl:for-each select="Errors">
													<xsl:for-each select="SystemEventlog">
														<li>
															<a>
																<xsl:choose>
																	<xsl:when test="not(string(&apos;#System Eventlog&apos;))">
																		<xsl:attribute name="href">
																			<xsl:text>#</xsl:text>
																		</xsl:attribute>
																	</xsl:when>
																	<xsl:when test="substring(string(&apos;#System Eventlog&apos;), 1, 1) = '#'">
																		<xsl:attribute name="href">
																			<xsl:value-of select="&apos;#System Eventlog&apos;"/>
																		</xsl:attribute>
																	</xsl:when>
																	<xsl:otherwise>
																		<xsl:attribute name="href">
																			<xsl:if test="substring(string(&apos;#System Eventlog&apos;), 2, 1) = ':'">
																				<xsl:text>file:///</xsl:text>
																			</xsl:if>
																			<xsl:value-of select="translate(string(&apos;#System Eventlog&apos;), '&#x5c;', '/')"/>
																		</xsl:attribute>
																	</xsl:otherwise>
																</xsl:choose>
																<span style="color:red; ">
																	<xsl:apply-templates/>
																</span>
															</a>
														</li>
													</xsl:for-each>
												</xsl:for-each>
											</xsl:for-each>
										</xsl:for-each>
									</ul>
									<ul style="color:red; ">
										<xsl:for-each select="Root">
											<xsl:for-each select="Summary">
												<xsl:for-each select="Errors">
													<xsl:for-each select="InternalEventlog">
														<li>
															<a>
																<xsl:choose>
																	<xsl:when test="not(string(&apos;#Internal Eventlog&apos;))">
																		<xsl:attribute name="href">
																			<xsl:text>#</xsl:text>
																		</xsl:attribute>
																	</xsl:when>
																	<xsl:when test="substring(string(&apos;#Internal Eventlog&apos;), 1, 1) = '#'">
																		<xsl:attribute name="href">
																			<xsl:value-of select="&apos;#Internal Eventlog&apos;"/>
																		</xsl:attribute>
																	</xsl:when>
																	<xsl:otherwise>
																		<xsl:attribute name="href">
																			<xsl:if test="substring(string(&apos;#Internal Eventlog&apos;), 2, 1) = ':'">
																				<xsl:text>file:///</xsl:text>
																			</xsl:if>
																			<xsl:value-of select="translate(string(&apos;#Internal Eventlog&apos;), '&#x5c;', '/')"/>
																		</xsl:attribute>
																	</xsl:otherwise>
																</xsl:choose>
																<span style="color:red; ">
																	<xsl:apply-templates/>
																</span>
															</a>
														</li>
													</xsl:for-each>
												</xsl:for-each>
											</xsl:for-each>
										</xsl:for-each>
									</ul>
								</td>
							</tr>
						</tbody>
					</table>
					<table border="0" class="TableWithoutBorder" width="100%">
						<xsl:variable name="altova:CurrContextGrid_4" select="."/>
						<tbody>
							<tr>
								<td width="150">
									<span style="font-weight:bold; ">
										<xsl:text>Warnings:</xsl:text>
									</span>
								</td>
								<td>
									<xsl:for-each select="Root">
										<xsl:for-each select="Summary">
											<xsl:for-each select="Warnings">
												<xsl:for-each select="@Count">
													<span style="font-weight:bold; ">
														<xsl:value-of select="string(.)"/>
													</span>
												</xsl:for-each>
											</xsl:for-each>
										</xsl:for-each>
									</xsl:for-each>
									<span style="font-weight:bold; ">
										<xsl:text> Message(s)</xsl:text>
									</span>
								</td>
							</tr>
						</tbody>
					</table>
					<table border="0" class="TableWithoutBorder" width="100%">
						<xsl:variable name="altova:CurrContextGrid_5" select="."/>
						<tbody>
							<tr>
								<td width="128"/>
								<td>
									<xsl:for-each select="Root">
										<xsl:for-each select="Summary">
											<xsl:for-each select="Warnings">
												<xsl:for-each select="SNMP">
													<xsl:for-each select="Message">
														<ul style="margin-bottom:0; margin-top:0; ">
															<li>
																<xsl:apply-templates/>
															</li>
														</ul>
													</xsl:for-each>
												</xsl:for-each>
											</xsl:for-each>
										</xsl:for-each>
									</xsl:for-each>
								</td>
							</tr>
						</tbody>
					</table>
					<table border="0" class="TableWithoutBorder" width="100%">
						<xsl:variable name="altova:CurrContextGrid_6" select="."/>
						<tbody>
							<tr>
								<td width="128"/>
								<td>
									<xsl:for-each select="Root">
										<xsl:for-each select="Summary">
											<xsl:for-each select="Warnings">
												<xsl:for-each select="ServerView">
													<xsl:for-each select="Message">
														<ul style="margin-bottom:0; margin-top:0; ">
															<li>
																<xsl:apply-templates/>
															</li>
														</ul>
													</xsl:for-each>
												</xsl:for-each>
											</xsl:for-each>
										</xsl:for-each>
									</xsl:for-each>
									<xsl:for-each select="Root">
										<xsl:for-each select="Summary">
											<xsl:for-each select="Warnings">
												<ul style="margin-bottom:0; margin-top:0; " type="disc">
													<xsl:for-each select="SMBIOS">
														<li>
															<a>
																<xsl:choose>
																	<xsl:when test="not(string(&apos;#SMBIOS&apos;))">
																		<xsl:attribute name="href">
																			<xsl:text>#</xsl:text>
																		</xsl:attribute>
																	</xsl:when>
																	<xsl:when test="substring(string(&apos;#SMBIOS&apos;), 1, 1) = '#'">
																		<xsl:attribute name="href">
																			<xsl:value-of select="&apos;#SMBIOS&apos;"/>
																		</xsl:attribute>
																	</xsl:when>
																	<xsl:otherwise>
																		<xsl:attribute name="href">
																			<xsl:if test="substring(string(&apos;#SMBIOS&apos;), 2, 1) = ':'">
																				<xsl:text>file:///</xsl:text>
																			</xsl:if>
																			<xsl:value-of select="translate(string(&apos;#SMBIOS&apos;), '&#x5c;', '/')"/>
																		</xsl:attribute>
																	</xsl:otherwise>
																</xsl:choose>
																<xsl:apply-templates/>
															</a>
														</li>
													</xsl:for-each>
												</ul>
											</xsl:for-each>
										</xsl:for-each>
									</xsl:for-each>
									<xsl:for-each select="Root">
										<xsl:for-each select="Summary">
											<xsl:for-each select="Warnings">
												<ul style="margin-bottom:0; margin-top:0; " type="disc">
													<xsl:for-each select="Eventlog">
														<li>
															<a>
																<xsl:choose>
																	<xsl:when test="not(string(&apos;#OS Eventlog&apos;))">
																		<xsl:attribute name="href">
																			<xsl:text>#</xsl:text>
																		</xsl:attribute>
																	</xsl:when>
																	<xsl:when test="substring(string(&apos;#OS Eventlog&apos;), 1, 1) = '#'">
																		<xsl:attribute name="href">
																			<xsl:value-of select="&apos;#OS Eventlog&apos;"/>
																		</xsl:attribute>
																	</xsl:when>
																	<xsl:otherwise>
																		<xsl:attribute name="href">
																			<xsl:if test="substring(string(&apos;#OS Eventlog&apos;), 2, 1) = ':'">
																				<xsl:text>file:///</xsl:text>
																			</xsl:if>
																			<xsl:value-of select="translate(string(&apos;#OS Eventlog&apos;), '&#x5c;', '/')"/>
																		</xsl:attribute>
																	</xsl:otherwise>
																</xsl:choose>
																<xsl:apply-templates/>
															</a>
														</li>
													</xsl:for-each>
												</ul>
											</xsl:for-each>
										</xsl:for-each>
									</xsl:for-each>
									<ul>
										<xsl:for-each select="Root">
											<xsl:for-each select="Summary">
												<xsl:for-each select="Warnings">
													<xsl:for-each select="SystemEventlog">
														<li>
															<a>
																<xsl:choose>
																	<xsl:when test="not(string(&apos;#System Eventlog&apos;))">
																		<xsl:attribute name="href">
																			<xsl:text>#</xsl:text>
																		</xsl:attribute>
																	</xsl:when>
																	<xsl:when test="substring(string(&apos;#System Eventlog&apos;), 1, 1) = '#'">
																		<xsl:attribute name="href">
																			<xsl:value-of select="&apos;#System Eventlog&apos;"/>
																		</xsl:attribute>
																	</xsl:when>
																	<xsl:otherwise>
																		<xsl:attribute name="href">
																			<xsl:if test="substring(string(&apos;#System Eventlog&apos;), 2, 1) = ':'">
																				<xsl:text>file:///</xsl:text>
																			</xsl:if>
																			<xsl:value-of select="translate(string(&apos;#System Eventlog&apos;), '&#x5c;', '/')"/>
																		</xsl:attribute>
																	</xsl:otherwise>
																</xsl:choose>
																<xsl:apply-templates/>
															</a>
														</li>
													</xsl:for-each>
												</xsl:for-each>
											</xsl:for-each>
										</xsl:for-each>
									</ul>
									<ul>
										<xsl:for-each select="Root">
											<xsl:for-each select="Summary">
												<xsl:for-each select="Warnings">
													<xsl:for-each select="InternalEventlog">
														<li>
															<a>
																<xsl:choose>
																	<xsl:when test="not(string(&apos;#Internal Eventlog&apos;))">
																		<xsl:attribute name="href">
																			<xsl:text>#</xsl:text>
																		</xsl:attribute>
																	</xsl:when>
																	<xsl:when test="substring(string(&apos;#Internal Eventlog&apos;), 1, 1) = '#'">
																		<xsl:attribute name="href">
																			<xsl:value-of select="&apos;#Internal Eventlog&apos;"/>
																		</xsl:attribute>
																	</xsl:when>
																	<xsl:otherwise>
																		<xsl:attribute name="href">
																			<xsl:if test="substring(string(&apos;#Internal Eventlog&apos;), 2, 1) = ':'">
																				<xsl:text>file:///</xsl:text>
																			</xsl:if>
																			<xsl:value-of select="translate(string(&apos;#Internal Eventlog&apos;), '&#x5c;', '/')"/>
																		</xsl:attribute>
																	</xsl:otherwise>
																</xsl:choose>
																<xsl:apply-templates/>
															</a>
														</li>
													</xsl:for-each>
												</xsl:for-each>
											</xsl:for-each>
										</xsl:for-each>
									</ul>
								</td>
							</tr>
						</tbody>
					</table>
					<br/>
					<h2>
						<span>
							<xsl:text>Report Content</xsl:text>
						</span>
					</h2>
					<span style="font-weight:bold; ">
						<xsl:text>System Components</xsl:text>
					</span>
					<br/>
					<br/>
					<xsl:choose>
						<xsl:when test="count (Root/System/BIOS)">
							<ul style="margin-bottom:0; margin-top:0; " type="square">
								<li>
									<a>
										<xsl:choose>
											<xsl:when test="not(string(&apos;#System BIOS&apos;))">
												<xsl:attribute name="href">
													<xsl:text>#</xsl:text>
												</xsl:attribute>
											</xsl:when>
											<xsl:when test="substring(string(&apos;#System BIOS&apos;), 1, 1) = '#'">
												<xsl:attribute name="href">
													<xsl:value-of select="&apos;#System BIOS&apos;"/>
												</xsl:attribute>
											</xsl:when>
											<xsl:otherwise>
												<xsl:attribute name="href">
													<xsl:if test="substring(string(&apos;#System BIOS&apos;), 2, 1) = ':'">
														<xsl:text>file:///</xsl:text>
													</xsl:if>
													<xsl:value-of select="translate(string(&apos;#System BIOS&apos;), '&#x5c;', '/')"/>
												</xsl:attribute>
											</xsl:otherwise>
										</xsl:choose>
										<span>
											<xsl:text>SM BIOS</xsl:text>
										</span>
									</a>
								</li>
								<li>
									<a>
										<xsl:choose>
											<xsl:when test="not(string(&apos;#System PCI Devices&apos;))">
												<xsl:attribute name="href">
													<xsl:text>#</xsl:text>
												</xsl:attribute>
											</xsl:when>
											<xsl:when test="substring(string(&apos;#System PCI Devices&apos;), 1, 1) = '#'">
												<xsl:attribute name="href">
													<xsl:value-of select="&apos;#System PCI Devices&apos;"/>
												</xsl:attribute>
											</xsl:when>
											<xsl:otherwise>
												<xsl:attribute name="href">
													<xsl:if test="substring(string(&apos;#System PCI Devices&apos;), 2, 1) = ':'">
														<xsl:text>file:///</xsl:text>
													</xsl:if>
													<xsl:value-of select="translate(string(&apos;#System PCI Devices&apos;), '&#x5c;', '/')"/>
												</xsl:attribute>
											</xsl:otherwise>
										</xsl:choose>
										<span>
											<xsl:text>PCI Configuration</xsl:text>
										</span>
									</a>
								</li>
								<li>
									<a>
										<xsl:choose>
											<xsl:when test="not(string(&apos;#System IDPROMs&apos;))">
												<xsl:attribute name="href">
													<xsl:text>#</xsl:text>
												</xsl:attribute>
											</xsl:when>
											<xsl:when test="substring(string(&apos;#System IDPROMs&apos;), 1, 1) = '#'">
												<xsl:attribute name="href">
													<xsl:value-of select="&apos;#System IDPROMs&apos;"/>
												</xsl:attribute>
											</xsl:when>
											<xsl:otherwise>
												<xsl:attribute name="href">
													<xsl:if test="substring(string(&apos;#System IDPROMs&apos;), 2, 1) = ':'">
														<xsl:text>file:///</xsl:text>
													</xsl:if>
													<xsl:value-of select="translate(string(&apos;#System IDPROMs&apos;), '&#x5c;', '/')"/>
												</xsl:attribute>
											</xsl:otherwise>
										</xsl:choose>
										<span>
											<xsl:text>IDPROM Data</xsl:text>
										</span>
									</a>
								</li>
								<li>
									<a>
										<xsl:choose>
											<xsl:when test="not(string(&apos;#System Data Records&apos;))">
												<xsl:attribute name="href">
													<xsl:text>#</xsl:text>
												</xsl:attribute>
											</xsl:when>
											<xsl:when test="substring(string(&apos;#System Data Records&apos;), 1, 1) = '#'">
												<xsl:attribute name="href">
													<xsl:value-of select="&apos;#System Data Records&apos;"/>
												</xsl:attribute>
											</xsl:when>
											<xsl:otherwise>
												<xsl:attribute name="href">
													<xsl:if test="substring(string(&apos;#System Data Records&apos;), 2, 1) = ':'">
														<xsl:text>file:///</xsl:text>
													</xsl:if>
													<xsl:value-of select="translate(string(&apos;#System Data Records&apos;), '&#x5c;', '/')"/>
												</xsl:attribute>
											</xsl:otherwise>
										</xsl:choose>
										<span>
											<xsl:text>Sensor Data Records</xsl:text>
										</span>
									</a>
								</li>
								<li>
									<a>
										<xsl:choose>
											<xsl:when test="not(string(&apos;#System Processors&apos;))">
												<xsl:attribute name="href">
													<xsl:text>#</xsl:text>
												</xsl:attribute>
											</xsl:when>
											<xsl:when test="substring(string(&apos;#System Processors&apos;), 1, 1) = '#'">
												<xsl:attribute name="href">
													<xsl:value-of select="&apos;#System Processors&apos;"/>
												</xsl:attribute>
											</xsl:when>
											<xsl:otherwise>
												<xsl:attribute name="href">
													<xsl:if test="substring(string(&apos;#System Processors&apos;), 2, 1) = ':'">
														<xsl:text>file:///</xsl:text>
													</xsl:if>
													<xsl:value-of select="translate(string(&apos;#System Processors&apos;), '&#x5c;', '/')"/>
												</xsl:attribute>
											</xsl:otherwise>
										</xsl:choose>
										<span>
											<xsl:text>Processors</xsl:text>
										</span>
									</a>
								</li>
								<li>
									<a>
										<xsl:choose>
											<xsl:when test="not(string(&apos;#System Voltages&apos;))">
												<xsl:attribute name="href">
													<xsl:text>#</xsl:text>
												</xsl:attribute>
											</xsl:when>
											<xsl:when test="substring(string(&apos;#System Voltages&apos;), 1, 1) = '#'">
												<xsl:attribute name="href">
													<xsl:value-of select="&apos;#System Voltages&apos;"/>
												</xsl:attribute>
											</xsl:when>
											<xsl:otherwise>
												<xsl:attribute name="href">
													<xsl:if test="substring(string(&apos;#System Voltages&apos;), 2, 1) = ':'">
														<xsl:text>file:///</xsl:text>
													</xsl:if>
													<xsl:value-of select="translate(string(&apos;#System Voltages&apos;), '&#x5c;', '/')"/>
												</xsl:attribute>
											</xsl:otherwise>
										</xsl:choose>
										<span>
											<xsl:text>Voltages</xsl:text>
										</span>
									</a>
								</li>
								<li>
									<a>
										<xsl:choose>
											<xsl:when test="not(string(&apos;#System Fans&apos;))">
												<xsl:attribute name="href">
													<xsl:text>#</xsl:text>
												</xsl:attribute>
											</xsl:when>
											<xsl:when test="substring(string(&apos;#System Fans&apos;), 1, 1) = '#'">
												<xsl:attribute name="href">
													<xsl:value-of select="&apos;#System Fans&apos;"/>
												</xsl:attribute>
											</xsl:when>
											<xsl:otherwise>
												<xsl:attribute name="href">
													<xsl:if test="substring(string(&apos;#System Fans&apos;), 2, 1) = ':'">
														<xsl:text>file:///</xsl:text>
													</xsl:if>
													<xsl:value-of select="translate(string(&apos;#System Fans&apos;), '&#x5c;', '/')"/>
												</xsl:attribute>
											</xsl:otherwise>
										</xsl:choose>
										<span>
											<xsl:text>Fans</xsl:text>
										</span>
									</a>
								</li>
								<li>
									<a>
										<xsl:choose>
											<xsl:when test="not(string(&apos;#System Temperatures&apos;))">
												<xsl:attribute name="href">
													<xsl:text>#</xsl:text>
												</xsl:attribute>
											</xsl:when>
											<xsl:when test="substring(string(&apos;#System Temperatures&apos;), 1, 1) = '#'">
												<xsl:attribute name="href">
													<xsl:value-of select="&apos;#System Temperatures&apos;"/>
												</xsl:attribute>
											</xsl:when>
											<xsl:otherwise>
												<xsl:attribute name="href">
													<xsl:if test="substring(string(&apos;#System Temperatures&apos;), 2, 1) = ':'">
														<xsl:text>file:///</xsl:text>
													</xsl:if>
													<xsl:value-of select="translate(string(&apos;#System Temperatures&apos;), '&#x5c;', '/')"/>
												</xsl:attribute>
											</xsl:otherwise>
										</xsl:choose>
										<span>
											<xsl:text>Temperature Sensors</xsl:text>
										</span>
									</a>
								</li>
								<li>
									<a>
										<xsl:choose>
											<xsl:when test="not(string(&apos;#System Power Supplies&apos;))">
												<xsl:attribute name="href">
													<xsl:text>#</xsl:text>
												</xsl:attribute>
											</xsl:when>
											<xsl:when test="substring(string(&apos;#System Power Supplies&apos;), 1, 1) = '#'">
												<xsl:attribute name="href">
													<xsl:value-of select="&apos;#System Power Supplies&apos;"/>
												</xsl:attribute>
											</xsl:when>
											<xsl:otherwise>
												<xsl:attribute name="href">
													<xsl:if test="substring(string(&apos;#System Power Supplies&apos;), 2, 1) = ':'">
														<xsl:text>file:///</xsl:text>
													</xsl:if>
													<xsl:value-of select="translate(string(&apos;#System Power Supplies&apos;), '&#x5c;', '/')"/>
												</xsl:attribute>
											</xsl:otherwise>
										</xsl:choose>
										<span>
											<xsl:text>Power Supplies</xsl:text>
										</span>
									</a>
								</li>
								<li>
									<a>
										<xsl:choose>
											<xsl:when test="not(string(&apos;#System Memory&apos;))">
												<xsl:attribute name="href">
													<xsl:text>#</xsl:text>
												</xsl:attribute>
											</xsl:when>
											<xsl:when test="substring(string(&apos;#System Memory&apos;), 1, 1) = '#'">
												<xsl:attribute name="href">
													<xsl:value-of select="&apos;#System Memory&apos;"/>
												</xsl:attribute>
											</xsl:when>
											<xsl:otherwise>
												<xsl:attribute name="href">
													<xsl:if test="substring(string(&apos;#System Memory&apos;), 2, 1) = ':'">
														<xsl:text>file:///</xsl:text>
													</xsl:if>
													<xsl:value-of select="translate(string(&apos;#System Memory&apos;), '&#x5c;', '/')"/>
												</xsl:attribute>
											</xsl:otherwise>
										</xsl:choose>
										<span>
											<xsl:text>Memory Modules</xsl:text>
										</span>
									</a>
								</li>
								<li>
									<a>
										<xsl:choose>
											<xsl:when test="not(string(&apos;#System Network&apos;))">
												<xsl:attribute name="href">
													<xsl:text>#</xsl:text>
												</xsl:attribute>
											</xsl:when>
											<xsl:when test="substring(string(&apos;#System Network&apos;), 1, 1) = '#'">
												<xsl:attribute name="href">
													<xsl:value-of select="&apos;#System Network&apos;"/>
												</xsl:attribute>
											</xsl:when>
											<xsl:otherwise>
												<xsl:attribute name="href">
													<xsl:if test="substring(string(&apos;#System Network&apos;), 2, 1) = ':'">
														<xsl:text>file:///</xsl:text>
													</xsl:if>
													<xsl:value-of select="translate(string(&apos;#System Network&apos;), '&#x5c;', '/')"/>
												</xsl:attribute>
											</xsl:otherwise>
										</xsl:choose>
										<span>
											<xsl:text>Network Adapters</xsl:text>
										</span>
									</a>
								</li>
								<li>
									<a>
										<xsl:choose>
											<xsl:when test="not(string(&apos;#System Eventlog&apos;))">
												<xsl:attribute name="href">
													<xsl:text>#</xsl:text>
												</xsl:attribute>
											</xsl:when>
											<xsl:when test="substring(string(&apos;#System Eventlog&apos;), 1, 1) = '#'">
												<xsl:attribute name="href">
													<xsl:value-of select="&apos;#System Eventlog&apos;"/>
												</xsl:attribute>
											</xsl:when>
											<xsl:otherwise>
												<xsl:attribute name="href">
													<xsl:if test="substring(string(&apos;#System Eventlog&apos;), 2, 1) = ':'">
														<xsl:text>file:///</xsl:text>
													</xsl:if>
													<xsl:value-of select="translate(string(&apos;#System Eventlog&apos;), '&#x5c;', '/')"/>
												</xsl:attribute>
											</xsl:otherwise>
										</xsl:choose>
										<span>
											<xsl:text>System Event Log (SEL)</xsl:text>
										</span>
									</a>
								</li>
								<li>
									<a>
										<xsl:choose>
											<xsl:when test="not(string(&apos;#Internal Eventlog&apos;))">
												<xsl:attribute name="href">
													<xsl:text>#</xsl:text>
												</xsl:attribute>
											</xsl:when>
											<xsl:when test="substring(string(&apos;#Internal Eventlog&apos;), 1, 1) = '#'">
												<xsl:attribute name="href">
													<xsl:value-of select="&apos;#Internal Eventlog&apos;"/>
												</xsl:attribute>
											</xsl:when>
											<xsl:otherwise>
												<xsl:attribute name="href">
													<xsl:if test="substring(string(&apos;#Internal Eventlog&apos;), 2, 1) = ':'">
														<xsl:text>file:///</xsl:text>
													</xsl:if>
													<xsl:value-of select="translate(string(&apos;#Internal Eventlog&apos;), '&#x5c;', '/')"/>
												</xsl:attribute>
											</xsl:otherwise>
										</xsl:choose>
										<span>
											<xsl:text>Internal Event Log (IEL)</xsl:text>
										</span>
									</a>
								</li>
								<li>
									<a>
										<xsl:choose>
											<xsl:when test="not(string(&apos;#System Boot Status&apos;))">
												<xsl:attribute name="href">
													<xsl:text>#</xsl:text>
												</xsl:attribute>
											</xsl:when>
											<xsl:when test="substring(string(&apos;#System Boot Status&apos;), 1, 1) = '#'">
												<xsl:attribute name="href">
													<xsl:value-of select="&apos;#System Boot Status&apos;"/>
												</xsl:attribute>
											</xsl:when>
											<xsl:otherwise>
												<xsl:attribute name="href">
													<xsl:if test="substring(string(&apos;#System Boot Status&apos;), 2, 1) = ':'">
														<xsl:text>file:///</xsl:text>
													</xsl:if>
													<xsl:value-of select="translate(string(&apos;#System Boot Status&apos;), '&#x5c;', '/')"/>
												</xsl:attribute>
											</xsl:otherwise>
										</xsl:choose>
										<span>
											<xsl:text>Boot Status</xsl:text>
										</span>
									</a>
								</li>
								<li>
									<a>
										<xsl:choose>
											<xsl:when test="not(string(&apos;#System Management Controllers&apos;))">
												<xsl:attribute name="href">
													<xsl:text>#</xsl:text>
												</xsl:attribute>
											</xsl:when>
											<xsl:when test="substring(string(&apos;#System Management Controllers&apos;), 1, 1) = '#'">
												<xsl:attribute name="href">
													<xsl:value-of select="&apos;#System Management Controllers&apos;"/>
												</xsl:attribute>
											</xsl:when>
											<xsl:otherwise>
												<xsl:attribute name="href">
													<xsl:if test="substring(string(&apos;#System Management Controllers&apos;), 2, 1) = ':'">
														<xsl:text>file:///</xsl:text>
													</xsl:if>
													<xsl:value-of select="translate(string(&apos;#System Management Controllers&apos;), '&#x5c;', '/')"/>
												</xsl:attribute>
											</xsl:otherwise>
										</xsl:choose>
										<span>
											<xsl:text>Mangement Controllers</xsl:text>
										</span>
									</a>
								</li>
							</ul>
						</xsl:when>
						<xsl:otherwise>
							<ul style="margin-bottom:0; margin-top:0; " type="square">
								<li>
									<a>
										<xsl:choose>
											<xsl:when test="not(string(&apos;#System PCI Devices&apos;))">
												<xsl:attribute name="href">
													<xsl:text>#</xsl:text>
												</xsl:attribute>
											</xsl:when>
											<xsl:when test="substring(string(&apos;#System PCI Devices&apos;), 1, 1) = '#'">
												<xsl:attribute name="href">
													<xsl:value-of select="&apos;#System PCI Devices&apos;"/>
												</xsl:attribute>
											</xsl:when>
											<xsl:otherwise>
												<xsl:attribute name="href">
													<xsl:if test="substring(string(&apos;#System PCI Devices&apos;), 2, 1) = ':'">
														<xsl:text>file:///</xsl:text>
													</xsl:if>
													<xsl:value-of select="translate(string(&apos;#System PCI Devices&apos;), '&#x5c;', '/')"/>
												</xsl:attribute>
											</xsl:otherwise>
										</xsl:choose>
										<span>
											<xsl:text>PCI Configuration</xsl:text>
										</span>
									</a>
								</li>
								<li>
									<a>
										<xsl:choose>
											<xsl:when test="not(string(&apos;#System IDPROMs&apos;))">
												<xsl:attribute name="href">
													<xsl:text>#</xsl:text>
												</xsl:attribute>
											</xsl:when>
											<xsl:when test="substring(string(&apos;#System IDPROMs&apos;), 1, 1) = '#'">
												<xsl:attribute name="href">
													<xsl:value-of select="&apos;#System IDPROMs&apos;"/>
												</xsl:attribute>
											</xsl:when>
											<xsl:otherwise>
												<xsl:attribute name="href">
													<xsl:if test="substring(string(&apos;#System IDPROMs&apos;), 2, 1) = ':'">
														<xsl:text>file:///</xsl:text>
													</xsl:if>
													<xsl:value-of select="translate(string(&apos;#System IDPROMs&apos;), '&#x5c;', '/')"/>
												</xsl:attribute>
											</xsl:otherwise>
										</xsl:choose>
										<span>
											<xsl:text>IDPROM Data</xsl:text>
										</span>
									</a>
								</li>
								<li>
									<a>
										<xsl:choose>
											<xsl:when test="not(string(&apos;#System Data Records&apos;))">
												<xsl:attribute name="href">
													<xsl:text>#</xsl:text>
												</xsl:attribute>
											</xsl:when>
											<xsl:when test="substring(string(&apos;#System Data Records&apos;), 1, 1) = '#'">
												<xsl:attribute name="href">
													<xsl:value-of select="&apos;#System Data Records&apos;"/>
												</xsl:attribute>
											</xsl:when>
											<xsl:otherwise>
												<xsl:attribute name="href">
													<xsl:if test="substring(string(&apos;#System Data Records&apos;), 2, 1) = ':'">
														<xsl:text>file:///</xsl:text>
													</xsl:if>
													<xsl:value-of select="translate(string(&apos;#System Data Records&apos;), '&#x5c;', '/')"/>
												</xsl:attribute>
											</xsl:otherwise>
										</xsl:choose>
										<span>
											<xsl:text>Sensor Data Records</xsl:text>
										</span>
									</a>
								</li>
								<li>
									<a>
										<xsl:choose>
											<xsl:when test="not(string(&apos;#System Processors&apos;))">
												<xsl:attribute name="href">
													<xsl:text>#</xsl:text>
												</xsl:attribute>
											</xsl:when>
											<xsl:when test="substring(string(&apos;#System Processors&apos;), 1, 1) = '#'">
												<xsl:attribute name="href">
													<xsl:value-of select="&apos;#System Processors&apos;"/>
												</xsl:attribute>
											</xsl:when>
											<xsl:otherwise>
												<xsl:attribute name="href">
													<xsl:if test="substring(string(&apos;#System Processors&apos;), 2, 1) = ':'">
														<xsl:text>file:///</xsl:text>
													</xsl:if>
													<xsl:value-of select="translate(string(&apos;#System Processors&apos;), '&#x5c;', '/')"/>
												</xsl:attribute>
											</xsl:otherwise>
										</xsl:choose>
										<span>
											<xsl:text>Processors</xsl:text>
										</span>
									</a>
								</li>
								<li>
									<a>
										<xsl:choose>
											<xsl:when test="not(string(&apos;#System Voltages&apos;))">
												<xsl:attribute name="href">
													<xsl:text>#</xsl:text>
												</xsl:attribute>
											</xsl:when>
											<xsl:when test="substring(string(&apos;#System Voltages&apos;), 1, 1) = '#'">
												<xsl:attribute name="href">
													<xsl:value-of select="&apos;#System Voltages&apos;"/>
												</xsl:attribute>
											</xsl:when>
											<xsl:otherwise>
												<xsl:attribute name="href">
													<xsl:if test="substring(string(&apos;#System Voltages&apos;), 2, 1) = ':'">
														<xsl:text>file:///</xsl:text>
													</xsl:if>
													<xsl:value-of select="translate(string(&apos;#System Voltages&apos;), '&#x5c;', '/')"/>
												</xsl:attribute>
											</xsl:otherwise>
										</xsl:choose>
										<span>
											<xsl:text>Voltages</xsl:text>
										</span>
									</a>
								</li>
								<li>
									<a>
										<xsl:choose>
											<xsl:when test="not(string(&apos;#System Fans&apos;))">
												<xsl:attribute name="href">
													<xsl:text>#</xsl:text>
												</xsl:attribute>
											</xsl:when>
											<xsl:when test="substring(string(&apos;#System Fans&apos;), 1, 1) = '#'">
												<xsl:attribute name="href">
													<xsl:value-of select="&apos;#System Fans&apos;"/>
												</xsl:attribute>
											</xsl:when>
											<xsl:otherwise>
												<xsl:attribute name="href">
													<xsl:if test="substring(string(&apos;#System Fans&apos;), 2, 1) = ':'">
														<xsl:text>file:///</xsl:text>
													</xsl:if>
													<xsl:value-of select="translate(string(&apos;#System Fans&apos;), '&#x5c;', '/')"/>
												</xsl:attribute>
											</xsl:otherwise>
										</xsl:choose>
										<span>
											<xsl:text>Fans</xsl:text>
										</span>
									</a>
								</li>
								<li>
									<a>
										<xsl:choose>
											<xsl:when test="not(string(&apos;#System Temperatures&apos;))">
												<xsl:attribute name="href">
													<xsl:text>#</xsl:text>
												</xsl:attribute>
											</xsl:when>
											<xsl:when test="substring(string(&apos;#System Temperatures&apos;), 1, 1) = '#'">
												<xsl:attribute name="href">
													<xsl:value-of select="&apos;#System Temperatures&apos;"/>
												</xsl:attribute>
											</xsl:when>
											<xsl:otherwise>
												<xsl:attribute name="href">
													<xsl:if test="substring(string(&apos;#System Temperatures&apos;), 2, 1) = ':'">
														<xsl:text>file:///</xsl:text>
													</xsl:if>
													<xsl:value-of select="translate(string(&apos;#System Temperatures&apos;), '&#x5c;', '/')"/>
												</xsl:attribute>
											</xsl:otherwise>
										</xsl:choose>
										<span>
											<xsl:text>Temperature Sensors</xsl:text>
										</span>
									</a>
								</li>
								<li>
									<a>
										<xsl:choose>
											<xsl:when test="not(string(&apos;#System Power Supplies&apos;))">
												<xsl:attribute name="href">
													<xsl:text>#</xsl:text>
												</xsl:attribute>
											</xsl:when>
											<xsl:when test="substring(string(&apos;#System Power Supplies&apos;), 1, 1) = '#'">
												<xsl:attribute name="href">
													<xsl:value-of select="&apos;#System Power Supplies&apos;"/>
												</xsl:attribute>
											</xsl:when>
											<xsl:otherwise>
												<xsl:attribute name="href">
													<xsl:if test="substring(string(&apos;#System Power Supplies&apos;), 2, 1) = ':'">
														<xsl:text>file:///</xsl:text>
													</xsl:if>
													<xsl:value-of select="translate(string(&apos;#System Power Supplies&apos;), '&#x5c;', '/')"/>
												</xsl:attribute>
											</xsl:otherwise>
										</xsl:choose>
										<span>
											<xsl:text>Power Supplies</xsl:text>
										</span>
									</a>
								</li>
								<li>
									<a>
										<xsl:choose>
											<xsl:when test="not(string(&apos;#System Memory&apos;))">
												<xsl:attribute name="href">
													<xsl:text>#</xsl:text>
												</xsl:attribute>
											</xsl:when>
											<xsl:when test="substring(string(&apos;#System Memory&apos;), 1, 1) = '#'">
												<xsl:attribute name="href">
													<xsl:value-of select="&apos;#System Memory&apos;"/>
												</xsl:attribute>
											</xsl:when>
											<xsl:otherwise>
												<xsl:attribute name="href">
													<xsl:if test="substring(string(&apos;#System Memory&apos;), 2, 1) = ':'">
														<xsl:text>file:///</xsl:text>
													</xsl:if>
													<xsl:value-of select="translate(string(&apos;#System Memory&apos;), '&#x5c;', '/')"/>
												</xsl:attribute>
											</xsl:otherwise>
										</xsl:choose>
										<span>
											<xsl:text>Memory Modules</xsl:text>
										</span>
									</a>
								</li>
								<li>
									<a>
										<xsl:choose>
											<xsl:when test="not(string(&apos;#System Network&apos;))">
												<xsl:attribute name="href">
													<xsl:text>#</xsl:text>
												</xsl:attribute>
											</xsl:when>
											<xsl:when test="substring(string(&apos;#System Network&apos;), 1, 1) = '#'">
												<xsl:attribute name="href">
													<xsl:value-of select="&apos;#System Network&apos;"/>
												</xsl:attribute>
											</xsl:when>
											<xsl:otherwise>
												<xsl:attribute name="href">
													<xsl:if test="substring(string(&apos;#System Network&apos;), 2, 1) = ':'">
														<xsl:text>file:///</xsl:text>
													</xsl:if>
													<xsl:value-of select="translate(string(&apos;#System Network&apos;), '&#x5c;', '/')"/>
												</xsl:attribute>
											</xsl:otherwise>
										</xsl:choose>
										<span>
											<xsl:text>Network Adapters</xsl:text>
										</span>
									</a>
								</li>
								<li>
									<a>
										<xsl:choose>
											<xsl:when test="not(string(&apos;#System Eventlog&apos;))">
												<xsl:attribute name="href">
													<xsl:text>#</xsl:text>
												</xsl:attribute>
											</xsl:when>
											<xsl:when test="substring(string(&apos;#System Eventlog&apos;), 1, 1) = '#'">
												<xsl:attribute name="href">
													<xsl:value-of select="&apos;#System Eventlog&apos;"/>
												</xsl:attribute>
											</xsl:when>
											<xsl:otherwise>
												<xsl:attribute name="href">
													<xsl:if test="substring(string(&apos;#System Eventlog&apos;), 2, 1) = ':'">
														<xsl:text>file:///</xsl:text>
													</xsl:if>
													<xsl:value-of select="translate(string(&apos;#System Eventlog&apos;), '&#x5c;', '/')"/>
												</xsl:attribute>
											</xsl:otherwise>
										</xsl:choose>
										<span>
											<xsl:text>System Event Log (SEL)</xsl:text>
										</span>
									</a>
								</li>
								<li>
									<a>
										<xsl:choose>
											<xsl:when test="not(string(&apos;#Internal Eventlog&apos;))">
												<xsl:attribute name="href">
													<xsl:text>#</xsl:text>
												</xsl:attribute>
											</xsl:when>
											<xsl:when test="substring(string(&apos;#Internal Eventlog&apos;), 1, 1) = '#'">
												<xsl:attribute name="href">
													<xsl:value-of select="&apos;#Internal Eventlog&apos;"/>
												</xsl:attribute>
											</xsl:when>
											<xsl:otherwise>
												<xsl:attribute name="href">
													<xsl:if test="substring(string(&apos;#Internal Eventlog&apos;), 2, 1) = ':'">
														<xsl:text>file:///</xsl:text>
													</xsl:if>
													<xsl:value-of select="translate(string(&apos;#Internal Eventlog&apos;), '&#x5c;', '/')"/>
												</xsl:attribute>
											</xsl:otherwise>
										</xsl:choose>
										<span>
											<xsl:text>Internal Event Log (IEL)</xsl:text>
										</span>
									</a>
								</li>
								<li>
									<a>
										<xsl:choose>
											<xsl:when test="not(string(&apos;#System Boot Status&apos;))">
												<xsl:attribute name="href">
													<xsl:text>#</xsl:text>
												</xsl:attribute>
											</xsl:when>
											<xsl:when test="substring(string(&apos;#System Boot Status&apos;), 1, 1) = '#'">
												<xsl:attribute name="href">
													<xsl:value-of select="&apos;#System Boot Status&apos;"/>
												</xsl:attribute>
											</xsl:when>
											<xsl:otherwise>
												<xsl:attribute name="href">
													<xsl:if test="substring(string(&apos;#System Boot Status&apos;), 2, 1) = ':'">
														<xsl:text>file:///</xsl:text>
													</xsl:if>
													<xsl:value-of select="translate(string(&apos;#System Boot Status&apos;), '&#x5c;', '/')"/>
												</xsl:attribute>
											</xsl:otherwise>
										</xsl:choose>
										<span>
											<xsl:text>Boot Status</xsl:text>
										</span>
									</a>
								</li>
								<li>
									<a>
										<xsl:choose>
											<xsl:when test="not(string(&apos;#System Management Controllers&apos;))">
												<xsl:attribute name="href">
													<xsl:text>#</xsl:text>
												</xsl:attribute>
											</xsl:when>
											<xsl:when test="substring(string(&apos;#System Management Controllers&apos;), 1, 1) = '#'">
												<xsl:attribute name="href">
													<xsl:value-of select="&apos;#System Management Controllers&apos;"/>
												</xsl:attribute>
											</xsl:when>
											<xsl:otherwise>
												<xsl:attribute name="href">
													<xsl:if test="substring(string(&apos;#System Management Controllers&apos;), 2, 1) = ':'">
														<xsl:text>file:///</xsl:text>
													</xsl:if>
													<xsl:value-of select="translate(string(&apos;#System Management Controllers&apos;), '&#x5c;', '/')"/>
												</xsl:attribute>
											</xsl:otherwise>
										</xsl:choose>
										<span>
											<xsl:text>Mangement Controllers</xsl:text>
										</span>
									</a>
								</li>
							</ul>
						</xsl:otherwise>
					</xsl:choose>
					<xsl:if test="(Root/@OS=&quot;Windows&quot;) or (Root/@OS=&quot;Linux&quot;)">
						<br/>
						<span style="font-weight:bold; ">
							<xsl:text>Operating System</xsl:text>
						</span>
						<p/>
						<ul style="margin-bottom:0; margin-top:0; " type="square">
							<li>
								<a>
									<xsl:choose>
										<xsl:when test="not(string(&apos;#OS Type&apos;))">
											<xsl:attribute name="href">
												<xsl:text>#</xsl:text>
											</xsl:attribute>
										</xsl:when>
										<xsl:when test="substring(string(&apos;#OS Type&apos;), 1, 1) = '#'">
											<xsl:attribute name="href">
												<xsl:value-of select="&apos;#OS Type&apos;"/>
											</xsl:attribute>
										</xsl:when>
										<xsl:otherwise>
											<xsl:attribute name="href">
												<xsl:if test="substring(string(&apos;#OS Type&apos;), 2, 1) = ':'">
													<xsl:text>file:///</xsl:text>
												</xsl:if>
												<xsl:value-of select="translate(string(&apos;#OS Type&apos;), '&#x5c;', '/')"/>
											</xsl:attribute>
										</xsl:otherwise>
									</xsl:choose>
									<span>
										<xsl:text>Version</xsl:text>
									</span>
								</a>
							</li>
							<li>
								<a>
									<xsl:choose>
										<xsl:when test="not(string(&apos;#OS Boot Options&apos;))">
											<xsl:attribute name="href">
												<xsl:text>#</xsl:text>
											</xsl:attribute>
										</xsl:when>
										<xsl:when test="substring(string(&apos;#OS Boot Options&apos;), 1, 1) = '#'">
											<xsl:attribute name="href">
												<xsl:value-of select="&apos;#OS Boot Options&apos;"/>
											</xsl:attribute>
										</xsl:when>
										<xsl:otherwise>
											<xsl:attribute name="href">
												<xsl:if test="substring(string(&apos;#OS Boot Options&apos;), 2, 1) = ':'">
													<xsl:text>file:///</xsl:text>
												</xsl:if>
												<xsl:value-of select="translate(string(&apos;#OS Boot Options&apos;), '&#x5c;', '/')"/>
											</xsl:attribute>
										</xsl:otherwise>
									</xsl:choose>
									<span>
										<xsl:text>Boot Options</xsl:text>
									</span>
								</a>
							</li>
							<li>
								<a>
									<xsl:choose>
										<xsl:when test="not(string(&apos;#OS Devices&apos;))">
											<xsl:attribute name="href">
												<xsl:text>#</xsl:text>
											</xsl:attribute>
										</xsl:when>
										<xsl:when test="substring(string(&apos;#OS Devices&apos;), 1, 1) = '#'">
											<xsl:attribute name="href">
												<xsl:value-of select="&apos;#OS Devices&apos;"/>
											</xsl:attribute>
										</xsl:when>
										<xsl:otherwise>
											<xsl:attribute name="href">
												<xsl:if test="substring(string(&apos;#OS Devices&apos;), 2, 1) = ':'">
													<xsl:text>file:///</xsl:text>
												</xsl:if>
												<xsl:value-of select="translate(string(&apos;#OS Devices&apos;), '&#x5c;', '/')"/>
											</xsl:attribute>
										</xsl:otherwise>
									</xsl:choose>
									<span>
										<xsl:text>System Devices</xsl:text>
									</span>
								</a>
							</li>
							<li>
								<a>
									<xsl:choose>
										<xsl:when test="not(string(&apos;#System Drives&apos;))">
											<xsl:attribute name="href">
												<xsl:text>#</xsl:text>
											</xsl:attribute>
										</xsl:when>
										<xsl:when test="substring(string(&apos;#System Drives&apos;), 1, 1) = '#'">
											<xsl:attribute name="href">
												<xsl:value-of select="&apos;#System Drives&apos;"/>
											</xsl:attribute>
										</xsl:when>
										<xsl:otherwise>
											<xsl:attribute name="href">
												<xsl:if test="substring(string(&apos;#System Drives&apos;), 2, 1) = ':'">
													<xsl:text>file:///</xsl:text>
												</xsl:if>
												<xsl:value-of select="translate(string(&apos;#System Drives&apos;), '&#x5c;', '/')"/>
											</xsl:attribute>
										</xsl:otherwise>
									</xsl:choose>
									<span>
										<xsl:text>System Drives</xsl:text>
									</span>
								</a>
							</li>
							<li>
								<a>
									<xsl:choose>
										<xsl:when test="not(string(&apos;#System Volumes&apos;))">
											<xsl:attribute name="href">
												<xsl:text>#</xsl:text>
											</xsl:attribute>
										</xsl:when>
										<xsl:when test="substring(string(&apos;#System Volumes&apos;), 1, 1) = '#'">
											<xsl:attribute name="href">
												<xsl:value-of select="&apos;#System Volumes&apos;"/>
											</xsl:attribute>
										</xsl:when>
										<xsl:otherwise>
											<xsl:attribute name="href">
												<xsl:if test="substring(string(&apos;#System Volumes&apos;), 2, 1) = ':'">
													<xsl:text>file:///</xsl:text>
												</xsl:if>
												<xsl:value-of select="translate(string(&apos;#System Volumes&apos;), '&#x5c;', '/')"/>
											</xsl:attribute>
										</xsl:otherwise>
									</xsl:choose>
									<span>
										<xsl:text>System Volumes</xsl:text>
									</span>
								</a>
							</li>
							<li>
								<a>
									<xsl:choose>
										<xsl:when test="not(string(&apos;#OS Processes&apos;))">
											<xsl:attribute name="href">
												<xsl:text>#</xsl:text>
											</xsl:attribute>
										</xsl:when>
										<xsl:when test="substring(string(&apos;#OS Processes&apos;), 1, 1) = '#'">
											<xsl:attribute name="href">
												<xsl:value-of select="&apos;#OS Processes&apos;"/>
											</xsl:attribute>
										</xsl:when>
										<xsl:otherwise>
											<xsl:attribute name="href">
												<xsl:if test="substring(string(&apos;#OS Processes&apos;), 2, 1) = ':'">
													<xsl:text>file:///</xsl:text>
												</xsl:if>
												<xsl:value-of select="translate(string(&apos;#OS Processes&apos;), '&#x5c;', '/')"/>
											</xsl:attribute>
										</xsl:otherwise>
									</xsl:choose>
									<span>
										<xsl:text>Running processes</xsl:text>
									</span>
								</a>
							</li>
							<li>
								<a>
									<xsl:choose>
										<xsl:when test="not(string(&apos;#OS Process Counters&apos;))">
											<xsl:attribute name="href">
												<xsl:text>#</xsl:text>
											</xsl:attribute>
										</xsl:when>
										<xsl:when test="substring(string(&apos;#OS Process Counters&apos;), 1, 1) = '#'">
											<xsl:attribute name="href">
												<xsl:value-of select="&apos;#OS Process Counters&apos;"/>
											</xsl:attribute>
										</xsl:when>
										<xsl:otherwise>
											<xsl:attribute name="href">
												<xsl:if test="substring(string(&apos;#OS Process Counters&apos;), 2, 1) = ':'">
													<xsl:text>file:///</xsl:text>
												</xsl:if>
												<xsl:value-of select="translate(string(&apos;#OS Process Counters&apos;), '&#x5c;', '/')"/>
											</xsl:attribute>
										</xsl:otherwise>
									</xsl:choose>
									<span>
										<xsl:text>Process Performance Counters</xsl:text>
									</span>
								</a>
							</li>
							<li>
								<a>
									<xsl:choose>
										<xsl:when test="not(string(&apos;#OS Eventlog&apos;))">
											<xsl:attribute name="href">
												<xsl:text>#</xsl:text>
											</xsl:attribute>
										</xsl:when>
										<xsl:when test="substring(string(&apos;#OS Eventlog&apos;), 1, 1) = '#'">
											<xsl:attribute name="href">
												<xsl:value-of select="&apos;#OS Eventlog&apos;"/>
											</xsl:attribute>
										</xsl:when>
										<xsl:otherwise>
											<xsl:attribute name="href">
												<xsl:if test="substring(string(&apos;#OS Eventlog&apos;), 2, 1) = ':'">
													<xsl:text>file:///</xsl:text>
												</xsl:if>
												<xsl:value-of select="translate(string(&apos;#OS Eventlog&apos;), '&#x5c;', '/')"/>
											</xsl:attribute>
										</xsl:otherwise>
									</xsl:choose>
									<span>
										<xsl:text>Eventlog Errors and Warnings</xsl:text>
									</span>
								</a>
							</li>
							<li>
								<a>
									<xsl:choose>
										<xsl:when test="not(string(&apos;#OS Programs&apos;))">
											<xsl:attribute name="href">
												<xsl:text>#</xsl:text>
											</xsl:attribute>
										</xsl:when>
										<xsl:when test="substring(string(&apos;#OS Programs&apos;), 1, 1) = '#'">
											<xsl:attribute name="href">
												<xsl:value-of select="&apos;#OS Programs&apos;"/>
											</xsl:attribute>
										</xsl:when>
										<xsl:otherwise>
											<xsl:attribute name="href">
												<xsl:if test="substring(string(&apos;#OS Programs&apos;), 2, 1) = ':'">
													<xsl:text>file:///</xsl:text>
												</xsl:if>
												<xsl:value-of select="translate(string(&apos;#OS Programs&apos;), '&#x5c;', '/')"/>
											</xsl:attribute>
										</xsl:otherwise>
									</xsl:choose>
									<span>
										<xsl:text>Installed programs</xsl:text>
									</span>
								</a>
							</li>
							<li>
								<a>
									<xsl:choose>
										<xsl:when test="not(string(&apos;#OS Network Ports&apos;))">
											<xsl:attribute name="href">
												<xsl:text>#</xsl:text>
											</xsl:attribute>
										</xsl:when>
										<xsl:when test="substring(string(&apos;#OS Network Ports&apos;), 1, 1) = '#'">
											<xsl:attribute name="href">
												<xsl:value-of select="&apos;#OS Network Ports&apos;"/>
											</xsl:attribute>
										</xsl:when>
										<xsl:otherwise>
											<xsl:attribute name="href">
												<xsl:if test="substring(string(&apos;#OS Network Ports&apos;), 2, 1) = ':'">
													<xsl:text>file:///</xsl:text>
												</xsl:if>
												<xsl:value-of select="translate(string(&apos;#OS Network Ports&apos;), '&#x5c;', '/')"/>
											</xsl:attribute>
										</xsl:otherwise>
									</xsl:choose>
									<span>
										<xsl:text>Open Network Ports</xsl:text>
									</span>
								</a>
							</li>
							<li>
								<a>
									<xsl:choose>
										<xsl:when test="not(string(&apos;#OS SNMP&apos;))">
											<xsl:attribute name="href">
												<xsl:text>#</xsl:text>
											</xsl:attribute>
										</xsl:when>
										<xsl:when test="substring(string(&apos;#OS SNMP&apos;), 1, 1) = '#'">
											<xsl:attribute name="href">
												<xsl:value-of select="&apos;#OS SNMP&apos;"/>
											</xsl:attribute>
										</xsl:when>
										<xsl:otherwise>
											<xsl:attribute name="href">
												<xsl:if test="substring(string(&apos;#OS SNMP&apos;), 2, 1) = ':'">
													<xsl:text>file:///</xsl:text>
												</xsl:if>
												<xsl:value-of select="translate(string(&apos;#OS SNMP&apos;), '&#x5c;', '/')"/>
											</xsl:attribute>
										</xsl:otherwise>
									</xsl:choose>
									<span>
										<xsl:text>SNMP</xsl:text>
									</span>
								</a>
							</li>
						</ul>
					</xsl:if>
					<xsl:if test="count (Root/VersionView)">
						<p/>
						<span style="font-weight:bold; ">
							<xsl:text>System Inventory</xsl:text>
						</span>
						<p/>
						<ul style="margin-bottom:0; margin-top:0; " type="square">
							<li>
								<a>
									<xsl:choose>
										<xsl:when test="not(string(&apos;#VersionView&apos;))">
											<xsl:attribute name="href">
												<xsl:text>#</xsl:text>
											</xsl:attribute>
										</xsl:when>
										<xsl:when test="substring(string(&apos;#VersionView&apos;), 1, 1) = '#'">
											<xsl:attribute name="href">
												<xsl:value-of select="&apos;#VersionView&apos;"/>
											</xsl:attribute>
										</xsl:when>
										<xsl:otherwise>
											<xsl:attribute name="href">
												<xsl:if test="substring(string(&apos;#VersionView&apos;), 2, 1) = ':'">
													<xsl:text>file:///</xsl:text>
												</xsl:if>
												<xsl:value-of select="translate(string(&apos;#VersionView&apos;), '&#x5c;', '/')"/>
											</xsl:attribute>
										</xsl:otherwise>
									</xsl:choose>
									<span>
										<xsl:text>VersionView Data</xsl:text>
									</span>
								</a>
							</li>
						</ul>
					</xsl:if>
					<p/>
					<span style="font-weight:bold; ">
						<xsl:text>Software</xsl:text>
					</span>
					<p/>
					<ul style="margin-bottom:0; margin-top:0; " type="square">
						<li>
							<xsl:choose>
								<xsl:when test="count (Root/Software/ServerView/SNMPAgents)">
									<a>
										<xsl:choose>
											<xsl:when test="not(string(&apos;#ServerView Agents&apos;))">
												<xsl:attribute name="href">
													<xsl:text>#</xsl:text>
												</xsl:attribute>
											</xsl:when>
											<xsl:when test="substring(string(&apos;#ServerView Agents&apos;), 1, 1) = '#'">
												<xsl:attribute name="href">
													<xsl:value-of select="&apos;#ServerView Agents&apos;"/>
												</xsl:attribute>
											</xsl:when>
											<xsl:otherwise>
												<xsl:attribute name="href">
													<xsl:if test="substring(string(&apos;#ServerView Agents&apos;), 2, 1) = ':'">
														<xsl:text>file:///</xsl:text>
													</xsl:if>
													<xsl:value-of select="translate(string(&apos;#ServerView Agents&apos;), '&#x5c;', '/')"/>
												</xsl:attribute>
											</xsl:otherwise>
										</xsl:choose>
										<span>
											<xsl:text>ServerView SNMP Agents</xsl:text>
										</span>
									</a>
								</xsl:when>
								<xsl:otherwise>
									<span>
										<xsl:text>ServerView SNMP Agents</xsl:text>
									</span>
								</xsl:otherwise>
							</xsl:choose>
						</li>
						<li>
							<xsl:choose>
								<xsl:when test="count (Root/Software/ServerView/ServerControl)">
									<a>
										<xsl:choose>
											<xsl:when test="not(string(&apos;#ServerControl&apos;))">
												<xsl:attribute name="href">
													<xsl:text>#</xsl:text>
												</xsl:attribute>
											</xsl:when>
											<xsl:when test="substring(string(&apos;#ServerControl&apos;), 1, 1) = '#'">
												<xsl:attribute name="href">
													<xsl:value-of select="&apos;#ServerControl&apos;"/>
												</xsl:attribute>
											</xsl:when>
											<xsl:otherwise>
												<xsl:attribute name="href">
													<xsl:if test="substring(string(&apos;#ServerControl&apos;), 2, 1) = ':'">
														<xsl:text>file:///</xsl:text>
													</xsl:if>
													<xsl:value-of select="translate(string(&apos;#ServerControl&apos;), '&#x5c;', '/')"/>
												</xsl:attribute>
											</xsl:otherwise>
										</xsl:choose>
										<span>
											<xsl:text>ServerView Server Control</xsl:text>
										</span>
									</a>
								</xsl:when>
								<xsl:otherwise>
									<span>
										<xsl:text>ServerView Server Control</xsl:text>
									</span>
								</xsl:otherwise>
							</xsl:choose>
						</li>
						<li>
							<xsl:choose>
								<xsl:when test="count (Root/Software/ServerView/ServerViewRaid)">
									<a>
										<xsl:choose>
											<xsl:when test="not(string(&apos;#ServerView RAID&apos;))">
												<xsl:attribute name="href">
													<xsl:text>#</xsl:text>
												</xsl:attribute>
											</xsl:when>
											<xsl:when test="substring(string(&apos;#ServerView RAID&apos;), 1, 1) = '#'">
												<xsl:attribute name="href">
													<xsl:value-of select="&apos;#ServerView RAID&apos;"/>
												</xsl:attribute>
											</xsl:when>
											<xsl:otherwise>
												<xsl:attribute name="href">
													<xsl:if test="substring(string(&apos;#ServerView RAID&apos;), 2, 1) = ':'">
														<xsl:text>file:///</xsl:text>
													</xsl:if>
													<xsl:value-of select="translate(string(&apos;#ServerView RAID&apos;), '&#x5c;', '/')"/>
												</xsl:attribute>
											</xsl:otherwise>
										</xsl:choose>
										<span>
											<xsl:text>ServerView RAID</xsl:text>
										</span>
									</a>
								</xsl:when>
								<xsl:otherwise>
									<span>
										<xsl:text>ServerView RAID</xsl:text>
									</span>
								</xsl:otherwise>
							</xsl:choose>
						</li>
						<li>
							<xsl:choose>
								<xsl:when test="count (Root/Software/ServerView/DriverMonitor)">
									<a>
										<xsl:choose>
											<xsl:when test="not(string(&apos;#ServerView Driver Monitor&apos;))">
												<xsl:attribute name="href">
													<xsl:text>#</xsl:text>
												</xsl:attribute>
											</xsl:when>
											<xsl:when test="substring(string(&apos;#ServerView Driver Monitor&apos;), 1, 1) = '#'">
												<xsl:attribute name="href">
													<xsl:value-of select="&apos;#ServerView Driver Monitor&apos;"/>
												</xsl:attribute>
											</xsl:when>
											<xsl:otherwise>
												<xsl:attribute name="href">
													<xsl:if test="substring(string(&apos;#ServerView Driver Monitor&apos;), 2, 1) = ':'">
														<xsl:text>file:///</xsl:text>
													</xsl:if>
													<xsl:value-of select="translate(string(&apos;#ServerView Driver Monitor&apos;), '&#x5c;', '/')"/>
												</xsl:attribute>
											</xsl:otherwise>
										</xsl:choose>
										<span>
											<xsl:text>ServerView Driver Monitor</xsl:text>
										</span>
									</a>
								</xsl:when>
								<xsl:otherwise>
									<span>
										<xsl:text>ServerView Driver Monitor</xsl:text>
									</span>
								</xsl:otherwise>
							</xsl:choose>
						</li>
						<li>
							<xsl:choose>
								<xsl:when test="count (Root/Software/ServerView/RemoteConnector)">
									<a>
										<xsl:choose>
											<xsl:when test="not(string(&apos;#ServerView Remote Connector&apos;))">
												<xsl:attribute name="href">
													<xsl:text>#</xsl:text>
												</xsl:attribute>
											</xsl:when>
											<xsl:when test="substring(string(&apos;#ServerView Remote Connector&apos;), 1, 1) = '#'">
												<xsl:attribute name="href">
													<xsl:value-of select="&apos;#ServerView Remote Connector&apos;"/>
												</xsl:attribute>
											</xsl:when>
											<xsl:otherwise>
												<xsl:attribute name="href">
													<xsl:if test="substring(string(&apos;#ServerView Remote Connector&apos;), 2, 1) = ':'">
														<xsl:text>file:///</xsl:text>
													</xsl:if>
													<xsl:value-of select="translate(string(&apos;#ServerView Remote Connector&apos;), '&#x5c;', '/')"/>
												</xsl:attribute>
											</xsl:otherwise>
										</xsl:choose>
										<span>
											<xsl:text>ServerView Remote Connector</xsl:text>
										</span>
									</a>
								</xsl:when>
								<xsl:otherwise>
									<span>
										<xsl:text>ServerView Remote Connector</xsl:text>
									</span>
								</xsl:otherwise>
							</xsl:choose>
						</li>
					</ul>
					<br/>
					<br/>
					<br/>
					<h1>
						<span>
							<xsl:text>1. System Components</xsl:text>
						</span>
					</h1>
					<xsl:if test="count (Root/System/BIOS)">
						<br/>
						<h2>
							<a>
								<xsl:attribute name="name">
									<xsl:value-of select="&apos;System BIOS&apos;"/>
								</xsl:attribute>
								<span>
									<xsl:text>System BIOS</xsl:text>
								</span>
							</a>
						</h2>
						<xsl:if test="count (Root/System/BIOS/SMBIOS/@Version)">
							<table border="0" class="TableWithoutBorder" width="100%">
								<xsl:variable name="altova:CurrContextGrid_7" select="."/>
								<tbody>
									<tr>
										<td width="148">
											<span>
												<xsl:text>SM BIOS Version:</xsl:text>
											</span>
										</td>
										<td>
											<xsl:for-each select="Root">
												<xsl:for-each select="System">
													<xsl:for-each select="BIOS">
														<xsl:for-each select="SMBIOS">
															<xsl:for-each select="@Version">
																<span>
																	<xsl:value-of select="string(.)"/>
																</span>
															</xsl:for-each>
														</xsl:for-each>
													</xsl:for-each>
												</xsl:for-each>
											</xsl:for-each>
										</td>
									</tr>
								</tbody>
							</table>
						</xsl:if>
						<br/>
						<span style="font-weight:bold; ">
							<xsl:text>Type </xsl:text>
						</span>
						<xsl:for-each select="Root">
							<xsl:for-each select="System">
								<xsl:for-each select="BIOS">
									<xsl:for-each select="SMBIOS">
										<xsl:for-each select="Type0">
											<xsl:for-each select="@Type">
												<span style="font-weight:bold; ">
													<xsl:value-of select="string(.)"/>
												</span>
											</xsl:for-each>
										</xsl:for-each>
									</xsl:for-each>
								</xsl:for-each>
							</xsl:for-each>
						</xsl:for-each>
						<span style="font-weight:bold; ">
							<xsl:text>: </xsl:text>
						</span>
						<xsl:for-each select="Root">
							<xsl:for-each select="System">
								<xsl:for-each select="BIOS">
									<xsl:for-each select="SMBIOS">
										<xsl:for-each select="Type0">
											<xsl:for-each select="@Name">
												<span style="font-weight:bold; ">
													<xsl:value-of select="string(.)"/>
												</span>
											</xsl:for-each>
										</xsl:for-each>
									</xsl:for-each>
								</xsl:for-each>
							</xsl:for-each>
						</xsl:for-each>
						<br/>
						<br/>
						<table border="0" class="TableWithoutBorder" width="100%">
							<xsl:variable name="altova:CurrContextGrid_8" select="."/>
							<tbody>
								<tr>
									<td width="150">
										<span>
											<xsl:text>Vendor:</xsl:text>
										</span>
									</td>
									<td>
										<xsl:for-each select="Root">
											<xsl:for-each select="System">
												<xsl:for-each select="BIOS">
													<xsl:for-each select="SMBIOS">
														<xsl:for-each select="Type0">
															<xsl:for-each select="Vendor">
																<xsl:apply-templates/>
															</xsl:for-each>
														</xsl:for-each>
													</xsl:for-each>
												</xsl:for-each>
											</xsl:for-each>
										</xsl:for-each>
									</td>
								</tr>
								<tr>
									<td width="150">
										<span>
											<xsl:text>BIOS Version:</xsl:text>
										</span>
									</td>
									<td>
										<xsl:for-each select="Root">
											<xsl:for-each select="System">
												<xsl:for-each select="BIOS">
													<xsl:for-each select="SMBIOS">
														<xsl:for-each select="Type0">
															<xsl:for-each select="BiosVersion">
																<xsl:apply-templates/>
															</xsl:for-each>
														</xsl:for-each>
													</xsl:for-each>
												</xsl:for-each>
											</xsl:for-each>
										</xsl:for-each>
									</td>
								</tr>
								<tr>
									<td width="150">
										<span>
											<xsl:text>BIOS Release Date:</xsl:text>
										</span>
									</td>
									<td>
										<xsl:for-each select="Root">
											<xsl:for-each select="System">
												<xsl:for-each select="BIOS">
													<xsl:for-each select="SMBIOS">
														<xsl:for-each select="Type0">
															<xsl:for-each select="BiosReleaseDate">
																<xsl:apply-templates/>
															</xsl:for-each>
														</xsl:for-each>
													</xsl:for-each>
												</xsl:for-each>
											</xsl:for-each>
										</xsl:for-each>
									</td>
								</tr>
								<tr>
									<td width="150">
										<span>
											<xsl:text>BIOS ROM Size:</xsl:text>
										</span>
									</td>
									<td>
										<xsl:for-each select="Root">
											<xsl:for-each select="System">
												<xsl:for-each select="BIOS">
													<xsl:for-each select="SMBIOS">
														<xsl:for-each select="Type0">
															<xsl:for-each select="BiosROMSize">
																<xsl:apply-templates/>
															</xsl:for-each>
														</xsl:for-each>
													</xsl:for-each>
												</xsl:for-each>
											</xsl:for-each>
										</xsl:for-each>
									</td>
								</tr>
							</tbody>
						</table>
						<br/>
						<xsl:if test="count (Root/System/BIOS/SMBIOS/Type1)">
							<span style="font-weight:bold; ">
								<xsl:text>Type </xsl:text>
							</span>
							<xsl:for-each select="Root">
								<xsl:for-each select="System">
									<xsl:for-each select="BIOS">
										<xsl:for-each select="SMBIOS">
											<xsl:for-each select="Type1">
												<xsl:for-each select="@Type">
													<span style="font-weight:bold; ">
														<xsl:value-of select="string(.)"/>
													</span>
												</xsl:for-each>
											</xsl:for-each>
										</xsl:for-each>
									</xsl:for-each>
								</xsl:for-each>
							</xsl:for-each>
							<span>
								<xsl:text>: </xsl:text>
							</span>
							<xsl:for-each select="Root">
								<xsl:for-each select="System">
									<xsl:for-each select="BIOS">
										<xsl:for-each select="SMBIOS">
											<xsl:for-each select="Type1">
												<xsl:for-each select="@Name">
													<span style="font-weight:bold; ">
														<xsl:value-of select="string(.)"/>
													</span>
												</xsl:for-each>
											</xsl:for-each>
										</xsl:for-each>
									</xsl:for-each>
								</xsl:for-each>
							</xsl:for-each>
							<br/>
							<xsl:for-each select="Root">
								<xsl:for-each select="System">
									<xsl:for-each select="BIOS">
										<xsl:for-each select="SMBIOS"/>
									</xsl:for-each>
								</xsl:for-each>
							</xsl:for-each>
							<br/>
							<table border="1" cellpadding="2" cellspacing="0">
								<xsl:variable name="altova:CurrContextGrid_9" select="."/>
								<thead>
									<tr>
										<th>
											<span>
												<xsl:text>Manufacturer</xsl:text>
											</span>
										</th>
										<th>
											<span>
												<xsl:text>Product Name</xsl:text>
											</span>
										</th>
										<th>
											<span>
												<xsl:text>Version</xsl:text>
											</span>
										</th>
										<th>
											<span>
												<xsl:text>Serial Number</xsl:text>
											</span>
										</th>
										<th>
											<span>
												<xsl:text>UUID</xsl:text>
											</span>
										</th>
									</tr>
								</thead>
								<tbody>
									<xsl:for-each select="Root">
										<xsl:for-each select="System">
											<xsl:for-each select="BIOS">
												<xsl:for-each select="SMBIOS">
													<xsl:for-each select="Type1">
														<xsl:for-each select="Entry">
															<tr>
																<td>
																	<xsl:for-each select="Manufacturer">
																		<xsl:apply-templates/>
																	</xsl:for-each>
																</td>
																<td>
																	<xsl:for-each select="ProductName">
																		<xsl:apply-templates/>
																	</xsl:for-each>
																</td>
																<td>
																	<xsl:for-each select="Version">
																		<xsl:apply-templates/>
																	</xsl:for-each>
																</td>
																<td>
																	<xsl:for-each select="SerialNumber">
																		<xsl:apply-templates/>
																	</xsl:for-each>
																</td>
																<td>
																	<xsl:for-each select="UUID">
																		<xsl:apply-templates/>
																	</xsl:for-each>
																</td>
															</tr>
														</xsl:for-each>
													</xsl:for-each>
												</xsl:for-each>
											</xsl:for-each>
										</xsl:for-each>
									</xsl:for-each>
								</tbody>
							</table>
							<br/>
						</xsl:if>
						<xsl:if test="count (Root/System/BIOS/SMBIOS/Type2)">
							<span style="font-weight:bold; ">
								<xsl:text>Type </xsl:text>
							</span>
							<xsl:for-each select="Root">
								<xsl:for-each select="System">
									<xsl:for-each select="BIOS">
										<xsl:for-each select="SMBIOS">
											<xsl:for-each select="Type2">
												<xsl:for-each select="@Type">
													<span style="font-weight:bold; ">
														<xsl:value-of select="string(.)"/>
													</span>
												</xsl:for-each>
											</xsl:for-each>
										</xsl:for-each>
									</xsl:for-each>
								</xsl:for-each>
							</xsl:for-each>
							<span style="font-weight:bold; ">
								<xsl:text>: </xsl:text>
							</span>
							<xsl:for-each select="Root">
								<xsl:for-each select="System">
									<xsl:for-each select="BIOS">
										<xsl:for-each select="SMBIOS">
											<xsl:for-each select="Type2">
												<xsl:for-each select="@Name">
													<span style="font-weight:bold; ">
														<xsl:value-of select="string(.)"/>
													</span>
												</xsl:for-each>
											</xsl:for-each>
										</xsl:for-each>
									</xsl:for-each>
								</xsl:for-each>
							</xsl:for-each>
							<br/>
							<xsl:for-each select="Root">
								<xsl:for-each select="System">
									<xsl:for-each select="BIOS">
										<xsl:for-each select="SMBIOS"/>
									</xsl:for-each>
								</xsl:for-each>
							</xsl:for-each>
							<br/>
							<table border="1" cellpadding="2" cellspacing="0">
								<xsl:variable name="altova:CurrContextGrid_10" select="."/>
								<thead>
									<tr>
										<th>
											<span>
												<xsl:text>Manufacturer</xsl:text>
											</span>
										</th>
										<th>
											<span>
												<xsl:text>Product</xsl:text>
											</span>
										</th>
										<th>
											<span>
												<xsl:text>Version</xsl:text>
											</span>
										</th>
										<th>
											<span>
												<xsl:text>Serial Number</xsl:text>
											</span>
										</th>
										<th>
											<span>
												<xsl:text>Asset Tag</xsl:text>
											</span>
										</th>
									</tr>
								</thead>
								<tbody>
									<xsl:for-each select="Root">
										<xsl:for-each select="System">
											<xsl:for-each select="BIOS">
												<xsl:for-each select="SMBIOS">
													<xsl:for-each select="Type2">
														<xsl:for-each select="Entry">
															<tr>
																<td>
																	<xsl:for-each select="Manufacturer">
																		<xsl:apply-templates/>
																	</xsl:for-each>
																</td>
																<td>
																	<xsl:for-each select="Product">
																		<xsl:apply-templates/>
																	</xsl:for-each>
																</td>
																<td>
																	<xsl:for-each select="Version">
																		<xsl:apply-templates/>
																	</xsl:for-each>
																</td>
																<td>
																	<xsl:for-each select="SerialNumber">
																		<xsl:apply-templates/>
																	</xsl:for-each>
																</td>
																<td>
																	<xsl:for-each select="AssetTag">
																		<xsl:apply-templates/>
																	</xsl:for-each>
																</td>
															</tr>
														</xsl:for-each>
													</xsl:for-each>
												</xsl:for-each>
											</xsl:for-each>
										</xsl:for-each>
									</xsl:for-each>
								</tbody>
							</table>
							<br/>
						</xsl:if>
						<xsl:if test="count (Root/System/BIOS/SMBIOS/Type3)">
							<span style="font-weight:bold; ">
								<xsl:text>Type</xsl:text>
							</span>
							<span>
								<xsl:text>&#160;</xsl:text>
							</span>
							<xsl:for-each select="Root">
								<xsl:for-each select="System">
									<xsl:for-each select="BIOS">
										<xsl:for-each select="SMBIOS">
											<xsl:for-each select="Type3">
												<xsl:for-each select="@Type">
													<span style="font-weight:bold; ">
														<xsl:value-of select="string(.)"/>
													</span>
												</xsl:for-each>
											</xsl:for-each>
										</xsl:for-each>
									</xsl:for-each>
								</xsl:for-each>
							</xsl:for-each>
							<span style="font-weight:bold; ">
								<xsl:text>: </xsl:text>
							</span>
							<xsl:for-each select="Root">
								<xsl:for-each select="System">
									<xsl:for-each select="BIOS">
										<xsl:for-each select="SMBIOS">
											<xsl:for-each select="Type3">
												<xsl:for-each select="@Name">
													<span style="font-weight:bold; ">
														<xsl:value-of select="string(.)"/>
													</span>
												</xsl:for-each>
											</xsl:for-each>
										</xsl:for-each>
									</xsl:for-each>
								</xsl:for-each>
							</xsl:for-each>
							<br/>
							<br/>
							<table border="1" cellpadding="2" cellspacing="0">
								<xsl:variable name="altova:CurrContextGrid_11" select="."/>
								<thead>
									<tr>
										<th>
											<span>
												<xsl:text>Manufacturer</xsl:text>
											</span>
										</th>
										<th>
											<span>
												<xsl:text>Type</xsl:text>
											</span>
										</th>
										<th>
											<span>
												<xsl:text>Version</xsl:text>
											</span>
										</th>
										<th>
											<span>
												<xsl:text>Serial Number</xsl:text>
											</span>
										</th>
										<th>
											<span>
												<xsl:text>Asset Tag</xsl:text>
											</span>
										</th>
									</tr>
								</thead>
								<tbody>
									<xsl:for-each select="Root">
										<xsl:for-each select="System">
											<xsl:for-each select="BIOS">
												<xsl:for-each select="SMBIOS">
													<xsl:for-each select="Type3">
														<xsl:for-each select="Entry">
															<tr>
																<td>
																	<xsl:for-each select="Manufacturer">
																		<xsl:apply-templates/>
																	</xsl:for-each>
																</td>
																<td>
																	<xsl:for-each select="Type">
																		<xsl:apply-templates/>
																	</xsl:for-each>
																</td>
																<td>
																	<xsl:for-each select="Version">
																		<xsl:apply-templates/>
																	</xsl:for-each>
																</td>
																<td>
																	<xsl:for-each select="SerialNumber">
																		<xsl:apply-templates/>
																	</xsl:for-each>
																</td>
																<td>
																	<xsl:for-each select="AssetTag">
																		<xsl:apply-templates/>
																	</xsl:for-each>
																</td>
															</tr>
														</xsl:for-each>
													</xsl:for-each>
												</xsl:for-each>
											</xsl:for-each>
										</xsl:for-each>
									</xsl:for-each>
								</tbody>
							</table>
							<br/>
						</xsl:if>
						<xsl:if test="count (Root/System/BIOS/SMBIOS/Type4)">
							<span style="font-weight:bold; ">
								<xsl:text>Type </xsl:text>
							</span>
							<xsl:for-each select="Root">
								<xsl:for-each select="System">
									<xsl:for-each select="BIOS">
										<xsl:for-each select="SMBIOS">
											<xsl:for-each select="Type4">
												<xsl:for-each select="@Type">
													<span style="font-weight:bold; ">
														<xsl:value-of select="string(.)"/>
													</span>
												</xsl:for-each>
											</xsl:for-each>
										</xsl:for-each>
									</xsl:for-each>
								</xsl:for-each>
							</xsl:for-each>
							<span style="font-weight:bold; ">
								<xsl:text>:</xsl:text>
							</span>
							<span>
								<xsl:text>&#160;</xsl:text>
							</span>
							<xsl:for-each select="Root">
								<xsl:for-each select="System">
									<xsl:for-each select="BIOS">
										<xsl:for-each select="SMBIOS">
											<xsl:for-each select="Type4">
												<xsl:for-each select="@Name">
													<span style="font-weight:bold; ">
														<xsl:value-of select="string(.)"/>
													</span>
												</xsl:for-each>
											</xsl:for-each>
										</xsl:for-each>
									</xsl:for-each>
								</xsl:for-each>
							</xsl:for-each>
							<br/>
							<br/>
							<xsl:for-each select="Root">
								<xsl:for-each select="System">
									<xsl:for-each select="BIOS">
										<xsl:for-each select="SMBIOS">
											<xsl:for-each select="Type4">
												<table border="1" cellpadding="2" cellspacing="0">
													<xsl:variable name="altova:CurrContextGrid_12" select="."/>
													<thead style="font-weight:bold; ">
														<tr>
															<th>
																<span>
																	<xsl:text>Handle</xsl:text>
																</span>
															</th>
															<th>
																<span>
																	<xsl:text>Socket Designation</xsl:text>
																</span>
															</th>
															<th>
																<span>
																	<xsl:text>Status</xsl:text>
																</span>
															</th>
															<th style="text-align:center; ">
																<span>
																	<xsl:text>Manufacturer</xsl:text>
																</span>
															</th>
															<th>
																<span>
																	<xsl:text>Version</xsl:text>
																</span>
															</th>
															<th style="text-align:center; ">
																<span>
																	<xsl:text>Type</xsl:text>
																</span>
															</th>
															<th style="text-align:center; ">
																<span>
																	<xsl:text>Family</xsl:text>
																</span>
															</th>
															<th style="text-align:center; ">
																<span>
																	<xsl:text>Model</xsl:text>
																</span>
															</th>
															<th style="text-align:center; ">
																<span>
																	<xsl:text>Step</xsl:text>
																</span>
															</th>
															<th style="text-align:center; ">
																<span>
																	<xsl:text>Current Speed</xsl:text>
																</span>
															</th>
															<th style="text-align:center; ">
																<span>
																	<xsl:text>Max Speed</xsl:text>
																</span>
															</th>
															<th style="text-align:center; ">
																<span>
																	<xsl:text>Core</xsl:text>
																</span>
																<br/>
																<span>
																	<xsl:text>Count</xsl:text>
																</span>
															</th>
															<th style="text-align:center; ">
																<span>
																	<xsl:text>Core</xsl:text>
																</span>
																<br/>
																<span>
																	<xsl:text>Enabled</xsl:text>
																</span>
																<br/>
															</th>
															<th style="text-align:center; ">
																<span>
																	<xsl:text>Thread</xsl:text>
																</span>
																<br/>
																<span>
																	<xsl:text>Count</xsl:text>
																</span>
															</th>
														</tr>
													</thead>
													<tbody>
														<xsl:for-each select="Entry">
															<tr>
																<td align="center">
																	<xsl:for-each select="@Handle">
																		<span>
																			<xsl:value-of select="string(.)"/>
																		</span>
																	</xsl:for-each>
																</td>
																<td>
																	<xsl:for-each select="Socket">
																		<xsl:apply-templates/>
																	</xsl:for-each>
																</td>
																<td>
																	<xsl:for-each select="Status">
																		<xsl:apply-templates/>
																	</xsl:for-each>
																</td>
																<td style="text-align:center; ">
																	<xsl:for-each select="Manufacturer">
																		<xsl:apply-templates/>
																	</xsl:for-each>
																</td>
																<td>
																	<xsl:for-each select="Version">
																		<xsl:apply-templates/>
																	</xsl:for-each>
																</td>
																<td style="text-align:center; " align="center">
																	<xsl:for-each select="Type">
																		<xsl:apply-templates/>
																	</xsl:for-each>
																</td>
																<td style="text-align:center; " align="center">
																	<xsl:choose>
																		<xsl:when test="count(  Family2  )">
																			<xsl:for-each select="Family2">
																				<xsl:apply-templates/>
																			</xsl:for-each>
																		</xsl:when>
																		<xsl:otherwise>
																			<xsl:for-each select="Family">
																				<xsl:apply-templates/>
																			</xsl:for-each>
																		</xsl:otherwise>
																	</xsl:choose>
																</td>
																<td style="text-align:center; " align="center">
																	<xsl:for-each select="Model">
																		<xsl:apply-templates/>
																	</xsl:for-each>
																</td>
																<td style="text-align:center; " align="center">
																	<xsl:for-each select="Step">
																		<xsl:apply-templates/>
																	</xsl:for-each>
																</td>
																<td style="text-align:center; ">
																	<xsl:for-each select="CurrentSpeed">
																		<xsl:apply-templates/>
																	</xsl:for-each>
																	<span>
																		<xsl:text> MHz</xsl:text>
																	</span>
																</td>
																<td style="text-align:center; ">
																	<xsl:for-each select="MaxSpeed">
																		<xsl:apply-templates/>
																	</xsl:for-each>
																	<span>
																		<xsl:text> MHz</xsl:text>
																	</span>
																</td>
																<td style="text-align:center; ">
																	<xsl:choose>
																		<xsl:when test="count(  CoreCount  )">
																			<xsl:for-each select="CoreCount">
																				<xsl:apply-templates/>
																			</xsl:for-each>
																		</xsl:when>
																		<xsl:otherwise>
																			<span>
																				<xsl:text>N/A</xsl:text>
																			</span>
																		</xsl:otherwise>
																	</xsl:choose>
																</td>
																<td style="text-align:center; ">
																	<xsl:choose>
																		<xsl:when test="count(   CoreEnabled   )">
																			<xsl:for-each select="CoreEnabled">
																				<xsl:apply-templates/>
																			</xsl:for-each>
																		</xsl:when>
																		<xsl:otherwise>
																			<span>
																				<xsl:text>N/A</xsl:text>
																			</span>
																		</xsl:otherwise>
																	</xsl:choose>
																</td>
																<td style="text-align:center; ">
																	<xsl:choose>
																		<xsl:when test="count(  ThreadCount  )">
																			<xsl:for-each select="ThreadCount">
																				<xsl:apply-templates/>
																			</xsl:for-each>
																		</xsl:when>
																		<xsl:otherwise>
																			<span>
																				<xsl:text>N/A</xsl:text>
																			</span>
																		</xsl:otherwise>
																	</xsl:choose>
																</td>
															</tr>
														</xsl:for-each>
													</tbody>
												</table>
											</xsl:for-each>
										</xsl:for-each>
									</xsl:for-each>
								</xsl:for-each>
							</xsl:for-each>
							<br/>
						</xsl:if>
						<xsl:if test="count (Root/System/BIOS/SMBIOS/Type7)">
							<span style="font-weight:bold; ">
								<xsl:text>Type </xsl:text>
							</span>
							<xsl:for-each select="Root">
								<xsl:for-each select="System">
									<xsl:for-each select="BIOS">
										<xsl:for-each select="SMBIOS">
											<xsl:for-each select="Type7">
												<xsl:for-each select="@Type">
													<span style="font-weight:bold; ">
														<xsl:value-of select="string(.)"/>
													</span>
												</xsl:for-each>
											</xsl:for-each>
										</xsl:for-each>
									</xsl:for-each>
								</xsl:for-each>
							</xsl:for-each>
							<span style="font-weight:bold; ">
								<xsl:text>: </xsl:text>
							</span>
							<xsl:for-each select="Root">
								<xsl:for-each select="System">
									<xsl:for-each select="BIOS">
										<xsl:for-each select="SMBIOS">
											<xsl:for-each select="Type7">
												<xsl:for-each select="@Name">
													<span style="font-weight:bold; ">
														<xsl:value-of select="string(.)"/>
													</span>
												</xsl:for-each>
											</xsl:for-each>
										</xsl:for-each>
									</xsl:for-each>
								</xsl:for-each>
							</xsl:for-each>
							<br/>
							<br/>
							<table border="1" cellpadding="2" cellspacing="0">
								<xsl:variable name="altova:CurrContextGrid_13" select="."/>
								<thead>
									<tr>
										<th rowspan="2">
											<span>
												<xsl:text>Handle</xsl:text>
											</span>
										</th>
										<th rowspan="2">
											<span>
												<xsl:text>Socket Designation</xsl:text>
											</span>
										</th>
										<th colspan="2">
											<span>
												<xsl:text>Cache Configuration</xsl:text>
											</span>
										</th>
										<th rowspan="2" style="text-align:center; ">
											<span>
												<xsl:text>Maximum</xsl:text>
											</span>
											<br/>
											<span>
												<xsl:text>Cache Size</xsl:text>
											</span>
											<br/>
										</th>
										<th rowspan="2" style="text-align:center; ">
											<span>
												<xsl:text> Installed</xsl:text>
											</span>
											<br/>
											<span>
												<xsl:text>Size</xsl:text>
											</span>
											<br/>
										</th>
										<th rowspan="2">
											<span>
												<xsl:text>Supported</xsl:text>
											</span>
											<br/>
											<span>
												<xsl:text> SRAM Type</xsl:text>
											</span>
										</th>
										<th rowspan="2">
											<span>
												<xsl:text>Current </xsl:text>
											</span>
											<br/>
											<span>
												<xsl:text>SRAM Type</xsl:text>
											</span>
										</th>
										<th rowspan="2">
											<span>
												<xsl:text>Cache Speed</xsl:text>
											</span>
										</th>
										<th rowspan="2">
											<span>
												<xsl:text>Error </xsl:text>
											</span>
											<br/>
											<span>
												<xsl:text>Correction Type</xsl:text>
											</span>
										</th>
										<th rowspan="2">
											<span>
												<xsl:text>System </xsl:text>
											</span>
											<br/>
											<span>
												<xsl:text>Cache Type</xsl:text>
											</span>
										</th>
										<th rowspan="2">
											<span>
												<xsl:text>Associativity</xsl:text>
											</span>
										</th>
									</tr>
									<tr>
										<th>
											<span>
												<xsl:text>Enabled</xsl:text>
											</span>
										</th>
										<th>
											<span>
												<xsl:text>Cache Level</xsl:text>
											</span>
										</th>
									</tr>
								</thead>
								<tbody>
									<xsl:for-each select="Root">
										<xsl:for-each select="System">
											<xsl:for-each select="BIOS">
												<xsl:for-each select="SMBIOS">
													<xsl:for-each select="Type7">
														<xsl:for-each select="Entry">
															<tr>
																<td align="center">
																	<xsl:for-each select="@Handle">
																		<span>
																			<xsl:value-of select="string(.)"/>
																		</span>
																	</xsl:for-each>
																</td>
																<td>
																	<xsl:for-each select="Socket">
																		<xsl:apply-templates/>
																	</xsl:for-each>
																</td>
																<td align="center">
																	<xsl:for-each select="Configuration">
																		<xsl:for-each select="@Enabled">
																			<span>
																				<xsl:value-of select="string(.)"/>
																			</span>
																		</xsl:for-each>
																	</xsl:for-each>
																</td>
																<td align="center">
																	<xsl:for-each select="Configuration">
																		<xsl:for-each select="@Level">
																			<span>
																				<xsl:value-of select="string(.)"/>
																			</span>
																		</xsl:for-each>
																	</xsl:for-each>
																</td>
																<td style="text-align:right; ">
																	<xsl:for-each select="MaxSize">
																		<xsl:apply-templates/>
																	</xsl:for-each>
																	<span>
																		<xsl:text> KByte</xsl:text>
																	</span>
																</td>
																<td style="text-align:right; ">
																	<xsl:for-each select="InstalledSize">
																		<xsl:apply-templates/>
																	</xsl:for-each>
																	<span>
																		<xsl:text> KByte</xsl:text>
																	</span>
																</td>
																<td>
																	<xsl:for-each select="SupportedSRamType">
																		<xsl:for-each select="@AsString">
																			<span>
																				<xsl:value-of select="string(.)"/>
																			</span>
																		</xsl:for-each>
																	</xsl:for-each>
																</td>
																<td>
																	<xsl:for-each select="CurrentSRamType">
																		<xsl:for-each select="@AsString">
																			<span>
																				<xsl:value-of select="string(.)"/>
																			</span>
																		</xsl:for-each>
																	</xsl:for-each>
																</td>
																<td>
																	<xsl:for-each select="CacheSpeed">
																		<xsl:apply-templates/>
																	</xsl:for-each>
																	<span>
																		<xsl:text>&#160;</xsl:text>
																	</span>
																	<xsl:for-each select="CacheSpeed">
																		<xsl:for-each select="@Unit">
																			<span>
																				<xsl:value-of select="string(.)"/>
																			</span>
																		</xsl:for-each>
																	</xsl:for-each>
																</td>
																<td>
																	<xsl:for-each select="ErrorCorrectionType">
																		<xsl:for-each select="@AsString">
																			<span>
																				<xsl:value-of select="string(.)"/>
																			</span>
																		</xsl:for-each>
																	</xsl:for-each>
																</td>
																<td>
																	<xsl:for-each select="SystemCacheType">
																		<xsl:for-each select="@AsString">
																			<span>
																				<xsl:value-of select="string(.)"/>
																			</span>
																		</xsl:for-each>
																	</xsl:for-each>
																</td>
																<td>
																	<xsl:for-each select="Associativity">
																		<xsl:for-each select="@AsString">
																			<span>
																				<xsl:value-of select="string(.)"/>
																			</span>
																		</xsl:for-each>
																	</xsl:for-each>
																</td>
															</tr>
														</xsl:for-each>
													</xsl:for-each>
												</xsl:for-each>
											</xsl:for-each>
										</xsl:for-each>
									</xsl:for-each>
								</tbody>
							</table>
							<span>
								<xsl:text>&#160;</xsl:text>
							</span>
						</xsl:if>
						<xsl:if test="count (Root/System/BIOS/SMBIOS/Type16)">
							<span style="font-weight:bold; ">
								<xsl:text>Type </xsl:text>
							</span>
							<xsl:for-each select="Root">
								<xsl:for-each select="System">
									<xsl:for-each select="BIOS">
										<xsl:for-each select="SMBIOS">
											<xsl:for-each select="Type16">
												<xsl:for-each select="@Type">
													<span style="font-weight:bold; ">
														<xsl:value-of select="string(.)"/>
													</span>
												</xsl:for-each>
											</xsl:for-each>
										</xsl:for-each>
									</xsl:for-each>
								</xsl:for-each>
							</xsl:for-each>
							<span style="font-weight:bold; ">
								<xsl:text>: </xsl:text>
							</span>
							<xsl:for-each select="Root">
								<xsl:for-each select="System">
									<xsl:for-each select="BIOS">
										<xsl:for-each select="SMBIOS">
											<xsl:for-each select="Type16">
												<xsl:for-each select="@Name">
													<span style="font-weight:bold; ">
														<xsl:value-of select="string(.)"/>
													</span>
												</xsl:for-each>
											</xsl:for-each>
										</xsl:for-each>
									</xsl:for-each>
								</xsl:for-each>
							</xsl:for-each>
							<br/>
							<br/>
							<xsl:for-each select="Root">
								<xsl:for-each select="System">
									<xsl:for-each select="BIOS">
										<xsl:for-each select="SMBIOS">
											<xsl:for-each select="Type16">
												<table border="1" cellpadding="2" cellspacing="0">
													<xsl:variable name="altova:CurrContextGrid_14" select="."/>
													<thead>
														<tr>
															<th style="text-align:center; ">
																<span>
																	<xsl:text>Handle</xsl:text>
																</span>
															</th>
															<th>
																<span>
																	<xsl:text>Location</xsl:text>
																</span>
															</th>
															<th>
																<span>
																	<xsl:text>Use</xsl:text>
																</span>
															</th>
															<th>
																<span>
																	<xsl:text>Memory Error Correction</xsl:text>
																</span>
															</th>
															<th>
																<span>
																	<xsl:text>Maximum Capacity</xsl:text>
																</span>
															</th>
															<th>
																<span>
																	<xsl:text>Number of </xsl:text>
																</span>
																<br/>
																<span>
																	<xsl:text>Memory Devices</xsl:text>
																</span>
															</th>
														</tr>
													</thead>
													<tbody>
														<xsl:for-each select="Entry">
															<tr>
																<td style="text-align:center; " align="center">
																	<xsl:for-each select="@Handle">
																		<span>
																			<xsl:value-of select="string(.)"/>
																		</span>
																	</xsl:for-each>
																</td>
																<td>
																	<xsl:for-each select="Location">
																		<xsl:apply-templates/>
																	</xsl:for-each>
																</td>
																<td>
																	<xsl:for-each select="Use">
																		<xsl:apply-templates/>
																	</xsl:for-each>
																</td>
																<td>
																	<xsl:for-each select="ErrorCorrection">
																		<xsl:apply-templates/>
																	</xsl:for-each>
																</td>
																<td>
																	<xsl:for-each select="MaxCapacity">
																		<xsl:apply-templates/>
																	</xsl:for-each>
																	<span>
																		<xsl:text>&#160;</xsl:text>
																	</span>
																	<xsl:for-each select="MaxCapacity">
																		<xsl:for-each select="@Unit">
																			<span>
																				<xsl:value-of select="string(.)"/>
																			</span>
																		</xsl:for-each>
																	</xsl:for-each>
																</td>
																<td>
																	<xsl:for-each select="NumberMemDevices">
																		<xsl:apply-templates/>
																	</xsl:for-each>
																</td>
															</tr>
														</xsl:for-each>
													</tbody>
												</table>
											</xsl:for-each>
										</xsl:for-each>
									</xsl:for-each>
								</xsl:for-each>
							</xsl:for-each>
							<br/>
						</xsl:if>
						<xsl:if test="count (Root/System/BIOS/SMBIOS/Type17)">
							<span style="font-weight:bold; ">
								<xsl:text>Type </xsl:text>
							</span>
							<xsl:for-each select="Root">
								<xsl:for-each select="System">
									<xsl:for-each select="BIOS">
										<xsl:for-each select="SMBIOS">
											<xsl:for-each select="Type17">
												<xsl:for-each select="@Type">
													<span style="font-weight:bold; ">
														<xsl:value-of select="string(.)"/>
													</span>
												</xsl:for-each>
											</xsl:for-each>
										</xsl:for-each>
									</xsl:for-each>
								</xsl:for-each>
							</xsl:for-each>
							<span style="font-weight:bold; ">
								<xsl:text>: </xsl:text>
							</span>
							<xsl:for-each select="Root">
								<xsl:for-each select="System">
									<xsl:for-each select="BIOS">
										<xsl:for-each select="SMBIOS">
											<xsl:for-each select="Type17">
												<xsl:for-each select="@Name">
													<span style="font-weight:bold; ">
														<xsl:value-of select="string(.)"/>
													</span>
												</xsl:for-each>
											</xsl:for-each>
										</xsl:for-each>
									</xsl:for-each>
								</xsl:for-each>
							</xsl:for-each>
							<br/>
							<br/>
							<xsl:for-each select="Root">
								<xsl:for-each select="System">
									<xsl:for-each select="BIOS">
										<xsl:for-each select="SMBIOS">
											<xsl:for-each select="Type17">
												<table border="1" cellpadding="2" cellspacing="0">
													<xsl:variable name="altova:CurrContextGrid_15" select="."/>
													<thead>
														<tr>
															<th align="center">
																<span>
																	<xsl:text>Handle</xsl:text>
																</span>
															</th>
															<th style="text-align:center; ">
																<span>
																	<xsl:text>Total Width</xsl:text>
																</span>
															</th>
															<th style="text-align:center; ">
																<span>
																	<xsl:text>Data Width</xsl:text>
																</span>
															</th>
															<th>
																<span>
																	<xsl:text>Size</xsl:text>
																</span>
															</th>
															<th>
																<span>
																	<xsl:text>Form Factor</xsl:text>
																</span>
															</th>
															<th>
																<span>
																	<xsl:text>Device Locator</xsl:text>
																</span>
															</th>
															<th>
																<span>
																	<xsl:text>Bank Locator</xsl:text>
																</span>
															</th>
															<th>
																<span>
																	<xsl:text>Memory Type</xsl:text>
																</span>
															</th>
															<th style="text-align:center; ">
																<span>
																	<xsl:text>Type Detail</xsl:text>
																</span>
															</th>
															<th>
																<span>
																	<xsl:text>Speed</xsl:text>
																</span>
															</th>
														</tr>
													</thead>
													<tbody>
														<xsl:for-each select="Entry">
															<tr>
																<td align="center">
																	<xsl:for-each select="@Handle">
																		<span>
																			<xsl:value-of select="string(.)"/>
																		</span>
																	</xsl:for-each>
																</td>
																<td style="text-align:right; ">
																	<xsl:for-each select="TotalWidth">
																		<xsl:apply-templates/>
																	</xsl:for-each>
																	<span>
																		<xsl:text> Bits</xsl:text>
																	</span>
																</td>
																<td style="text-align:right; ">
																	<xsl:for-each select="DataWidth">
																		<xsl:apply-templates/>
																	</xsl:for-each>
																	<span>
																		<xsl:text> Bits</xsl:text>
																	</span>
																</td>
																<td>
																	<xsl:for-each select="Size">
																		<xsl:apply-templates/>
																	</xsl:for-each>
																	<span>
																		<xsl:text>&#160;</xsl:text>
																	</span>
																	<xsl:for-each select="Size">
																		<xsl:for-each select="@Unit">
																			<span>
																				<xsl:value-of select="string(.)"/>
																			</span>
																		</xsl:for-each>
																	</xsl:for-each>
																</td>
																<td>
																	<xsl:for-each select="FormFactor">
																		<xsl:apply-templates/>
																	</xsl:for-each>
																</td>
																<td>
																	<xsl:for-each select="DeviceLocator">
																		<xsl:apply-templates/>
																	</xsl:for-each>
																</td>
																<td>
																	<xsl:choose>
																		<xsl:when test="count(  BankLocator  )">
																			<xsl:for-each select="BankLocator">
																				<xsl:apply-templates/>
																			</xsl:for-each>
																		</xsl:when>
																		<xsl:otherwise>
																			<span>
																				<xsl:text>N/A</xsl:text>
																			</span>
																		</xsl:otherwise>
																	</xsl:choose>
																</td>
																<td>
																	<xsl:for-each select="MemoryType">
																		<xsl:apply-templates/>
																	</xsl:for-each>
																</td>
																<td style="text-align:center; ">
																	<xsl:for-each select="TypeDetail">
																		<xsl:apply-templates/>
																	</xsl:for-each>
																</td>
																<td>
																	<xsl:for-each select="Speed">
																		<xsl:apply-templates/>
																	</xsl:for-each>
																	<span>
																		<xsl:text>&#160;</xsl:text>
																	</span>
																	<xsl:for-each select="Speed">
																		<xsl:for-each select="@Unit">
																			<span>
																				<xsl:value-of select="string(.)"/>
																			</span>
																		</xsl:for-each>
																	</xsl:for-each>
																</td>
															</tr>
														</xsl:for-each>
													</tbody>
												</table>
											</xsl:for-each>
										</xsl:for-each>
									</xsl:for-each>
								</xsl:for-each>
							</xsl:for-each>
							<br/>
						</xsl:if>
						<xsl:if test="count (Root/System/BIOS/SMBIOS/Type19)">
							<span style="font-weight:bold; ">
								<xsl:text>Type </xsl:text>
							</span>
							<xsl:for-each select="Root">
								<xsl:for-each select="System">
									<xsl:for-each select="BIOS">
										<xsl:for-each select="SMBIOS">
											<xsl:for-each select="Type19">
												<xsl:for-each select="@Type">
													<span style="font-weight:bold; ">
														<xsl:value-of select="string(.)"/>
													</span>
												</xsl:for-each>
											</xsl:for-each>
										</xsl:for-each>
									</xsl:for-each>
								</xsl:for-each>
							</xsl:for-each>
							<span style="font-weight:bold; ">
								<xsl:text>: </xsl:text>
							</span>
							<xsl:for-each select="Root">
								<xsl:for-each select="System">
									<xsl:for-each select="BIOS">
										<xsl:for-each select="SMBIOS">
											<xsl:for-each select="Type19">
												<xsl:for-each select="@Name">
													<span style="font-weight:bold; ">
														<xsl:value-of select="string(.)"/>
													</span>
												</xsl:for-each>
											</xsl:for-each>
										</xsl:for-each>
									</xsl:for-each>
								</xsl:for-each>
							</xsl:for-each>
							<br/>
							<br/>
							<table border="1" cellpadding="2" cellspacing="0">
								<xsl:variable name="altova:CurrContextGrid_16" select="."/>
								<thead>
									<tr>
										<th style="text-align:center; ">
											<span>
												<xsl:text>Handle</xsl:text>
											</span>
										</th>
										<th style="text-align:center; ">
											<span>
												<xsl:text>Starting Address</xsl:text>
											</span>
										</th>
										<th style="text-align:center; ">
											<span>
												<xsl:text>Ending Address</xsl:text>
											</span>
										</th>
										<th style="text-align:center; ">
											<span>
												<xsl:text>Memory Array Handle</xsl:text>
											</span>
										</th>
										<th style="text-align:center; ">
											<span>
												<xsl:text>Partition Width</xsl:text>
											</span>
										</th>
									</tr>
								</thead>
								<tbody>
									<xsl:for-each select="Root">
										<xsl:for-each select="System">
											<xsl:for-each select="BIOS">
												<xsl:for-each select="SMBIOS">
													<xsl:for-each select="Type19">
														<xsl:for-each select="Entry">
															<tr>
																<td style="text-align:center; ">
																	<xsl:for-each select="@Handle">
																		<span>
																			<xsl:value-of select="string(.)"/>
																		</span>
																	</xsl:for-each>
																</td>
																<td style="text-align:center; ">
																	<xsl:for-each select="StartAddress">
																		<xsl:for-each select="@AsString">
																			<span>
																				<xsl:value-of select="string(.)"/>
																			</span>
																		</xsl:for-each>
																	</xsl:for-each>
																</td>
																<td style="text-align:center; ">
																	<xsl:for-each select="EndAddress">
																		<xsl:for-each select="@AsString">
																			<span>
																				<xsl:value-of select="string(.)"/>
																			</span>
																		</xsl:for-each>
																	</xsl:for-each>
																</td>
																<td style="text-align:center; ">
																	<xsl:for-each select="MemArrayHandle">
																		<xsl:apply-templates/>
																	</xsl:for-each>
																</td>
																<td style="text-align:center; ">
																	<xsl:for-each select="PartitionWidth">
																		<xsl:apply-templates/>
																	</xsl:for-each>
																</td>
															</tr>
														</xsl:for-each>
													</xsl:for-each>
												</xsl:for-each>
											</xsl:for-each>
										</xsl:for-each>
									</xsl:for-each>
								</tbody>
							</table>
							<br/>
						</xsl:if>
						<xsl:if test="Root/System/BIOS/SMBIOS/Type20">
							<span style="font-weight:bold; ">
								<xsl:text>Type </xsl:text>
							</span>
							<xsl:for-each select="Root">
								<xsl:for-each select="System">
									<xsl:for-each select="BIOS">
										<xsl:for-each select="SMBIOS">
											<xsl:for-each select="Type20">
												<xsl:for-each select="@Type">
													<span style="font-weight:bold; ">
														<xsl:value-of select="string(.)"/>
													</span>
												</xsl:for-each>
											</xsl:for-each>
										</xsl:for-each>
									</xsl:for-each>
								</xsl:for-each>
							</xsl:for-each>
							<span style="font-weight:bold; ">
								<xsl:text>: </xsl:text>
							</span>
							<xsl:for-each select="Root">
								<xsl:for-each select="System">
									<xsl:for-each select="BIOS">
										<xsl:for-each select="SMBIOS">
											<xsl:for-each select="Type20">
												<xsl:for-each select="@Name">
													<span style="font-weight:bold; ">
														<xsl:value-of select="string(.)"/>
													</span>
												</xsl:for-each>
											</xsl:for-each>
										</xsl:for-each>
									</xsl:for-each>
								</xsl:for-each>
							</xsl:for-each>
							<br/>
							<br/>
							<table border="1" cellpadding="2" cellspacing="0">
								<xsl:variable name="altova:CurrContextGrid_17" select="."/>
								<thead>
									<tr>
										<th style="text-align:center; ">
											<span>
												<xsl:text>Handle</xsl:text>
											</span>
										</th>
										<th style="text-align:center; ">
											<span>
												<xsl:text>Starting Address</xsl:text>
											</span>
										</th>
										<th style="text-align:center; ">
											<span>
												<xsl:text>Ending Address</xsl:text>
											</span>
										</th>
										<th style="text-align:center; ">
											<span>
												<xsl:text>Memory Device</xsl:text>
											</span>
											<br/>
											<span>
												<xsl:text>Handle</xsl:text>
											</span>
										</th>
										<th style="text-align:center; ">
											<span>
												<xsl:text>Memory Array </xsl:text>
											</span>
											<br/>
											<span>
												<xsl:text>Mapped Address Handle</xsl:text>
											</span>
										</th>
										<th style="text-align:center; ">
											<span>
												<xsl:text>Partition </xsl:text>
											</span>
											<br/>
											<span>
												<xsl:text>Row Position</xsl:text>
											</span>
										</th>
										<th style="text-align:center; ">
											<span>
												<xsl:text>Interleave </xsl:text>
											</span>
											<br/>
											<span>
												<xsl:text>Position</xsl:text>
											</span>
										</th>
										<th style="text-align:center; ">
											<span>
												<xsl:text>Interleave </xsl:text>
											</span>
											<br/>
											<span>
												<xsl:text>Data Depth</xsl:text>
											</span>
										</th>
									</tr>
								</thead>
								<tbody>
									<xsl:for-each select="Root">
										<xsl:for-each select="System">
											<xsl:for-each select="BIOS">
												<xsl:for-each select="SMBIOS">
													<xsl:for-each select="Type20">
														<xsl:for-each select="Entry">
															<tr>
																<td style="text-align:center; ">
																	<xsl:for-each select="@Handle">
																		<span>
																			<xsl:value-of select="string(.)"/>
																		</span>
																	</xsl:for-each>
																</td>
																<td style="text-align:center; ">
																	<xsl:for-each select="StartAddress">
																		<xsl:for-each select="@AsString">
																			<span>
																				<xsl:value-of select="string(.)"/>
																			</span>
																		</xsl:for-each>
																	</xsl:for-each>
																</td>
																<td style="text-align:center; ">
																	<xsl:for-each select="EndAddress">
																		<xsl:for-each select="@AsString">
																			<span>
																				<xsl:value-of select="string(.)"/>
																			</span>
																		</xsl:for-each>
																	</xsl:for-each>
																</td>
																<td style="text-align:center; ">
																	<xsl:for-each select="MemDeviceHandle">
																		<xsl:apply-templates/>
																	</xsl:for-each>
																</td>
																<td style="text-align:center; ">
																	<xsl:for-each select="MemArrayHandle">
																		<xsl:apply-templates/>
																	</xsl:for-each>
																</td>
																<td style="text-align:center; ">
																	<xsl:choose>
																		<xsl:when test="count(  PartitionRowPosition  )">
																			<xsl:for-each select="PartitionRowPosition">
																				<xsl:apply-templates/>
																			</xsl:for-each>
																		</xsl:when>
																		<xsl:otherwise>
																			<span>
																				<xsl:text>N/A</xsl:text>
																			</span>
																		</xsl:otherwise>
																	</xsl:choose>
																</td>
																<td style="text-align:center; ">
																	<xsl:choose>
																		<xsl:when test="count(  InterleavePosition  )">
																			<xsl:for-each select="InterleavePosition">
																				<xsl:apply-templates/>
																			</xsl:for-each>
																		</xsl:when>
																		<xsl:otherwise>
																			<span>
																				<xsl:text>N/A</xsl:text>
																			</span>
																		</xsl:otherwise>
																	</xsl:choose>
																</td>
																<td style="text-align:center; ">
																	<xsl:choose>
																		<xsl:when test="count(  InterleaveDataDepth  )">
																			<xsl:for-each select="InterleaveDataDepth">
																				<xsl:apply-templates/>
																			</xsl:for-each>
																		</xsl:when>
																		<xsl:otherwise>
																			<span>
																				<xsl:text>N/A</xsl:text>
																			</span>
																		</xsl:otherwise>
																	</xsl:choose>
																</td>
															</tr>
														</xsl:for-each>
													</xsl:for-each>
												</xsl:for-each>
											</xsl:for-each>
										</xsl:for-each>
									</xsl:for-each>
								</tbody>
							</table>
						</xsl:if>
						<xsl:if test="Root/System/BIOS/SMBIOS/Type38">
							<br/>
							<span style="font-weight:bold; ">
								<xsl:text>Type </xsl:text>
							</span>
							<xsl:for-each select="Root">
								<xsl:for-each select="System">
									<xsl:for-each select="BIOS">
										<xsl:for-each select="SMBIOS">
											<xsl:for-each select="Type38">
												<xsl:for-each select="@Type">
													<span style="font-weight:bold; ">
														<xsl:value-of select="string(.)"/>
													</span>
												</xsl:for-each>
											</xsl:for-each>
										</xsl:for-each>
									</xsl:for-each>
								</xsl:for-each>
							</xsl:for-each>
							<span style="font-weight:bold; ">
								<xsl:text>: </xsl:text>
							</span>
							<xsl:for-each select="Root">
								<xsl:for-each select="System">
									<xsl:for-each select="BIOS">
										<xsl:for-each select="SMBIOS">
											<xsl:for-each select="Type38">
												<xsl:for-each select="@Name">
													<span style="font-weight:bold; ">
														<xsl:value-of select="string(.)"/>
													</span>
												</xsl:for-each>
											</xsl:for-each>
										</xsl:for-each>
									</xsl:for-each>
								</xsl:for-each>
							</xsl:for-each>
							<br/>
							<br/>
							<xsl:for-each select="Root">
								<xsl:for-each select="System">
									<xsl:for-each select="BIOS">
										<xsl:for-each select="SMBIOS">
											<table border="0" class="TableWithoutBorder">
												<xsl:variable name="altova:CurrContextGrid_18" select="."/>
												<tbody>
													<tr>
														<td width="154">
															<span>
																<xsl:text>InterfaceType:</xsl:text>
															</span>
														</td>
														<xsl:for-each select="Type38">
															<td>
																<xsl:for-each select="Interface">
																	<xsl:apply-templates/>
																</xsl:for-each>
															</td>
														</xsl:for-each>
													</tr>
													<tr>
														<td width="154">
															<span>
																<xsl:text>Revision:</xsl:text>
															</span>
														</td>
														<xsl:for-each select="Type38">
															<td>
																<xsl:for-each select="Revision">
																	<xsl:apply-templates/>
																</xsl:for-each>
															</td>
														</xsl:for-each>
													</tr>
													<tr>
														<td width="154">
															<span>
																<xsl:text>Slave Address:</xsl:text>
															</span>
														</td>
														<xsl:for-each select="Type38">
															<td>
																<xsl:for-each select="SlaveAddress">
																	<xsl:apply-templates/>
																</xsl:for-each>
															</td>
														</xsl:for-each>
													</tr>
												</tbody>
											</table>
										</xsl:for-each>
									</xsl:for-each>
								</xsl:for-each>
							</xsl:for-each>
						</xsl:if>
						<xsl:if test="Root/System/BIOS/SMBIOS/Type176">
							<br/>
							<span style="font-weight:bold; ">
								<xsl:text>Type </xsl:text>
							</span>
							<xsl:for-each select="Root">
								<xsl:for-each select="System">
									<xsl:for-each select="BIOS">
										<xsl:for-each select="SMBIOS">
											<xsl:for-each select="Type176">
												<xsl:for-each select="@Type">
													<span style="font-weight:bold; ">
														<xsl:value-of select="string(.)"/>
													</span>
												</xsl:for-each>
											</xsl:for-each>
										</xsl:for-each>
									</xsl:for-each>
								</xsl:for-each>
							</xsl:for-each>
							<span style="font-weight:bold; ">
								<xsl:text>:</xsl:text>
							</span>
							<span>
								<xsl:text>&#160;</xsl:text>
							</span>
							<xsl:for-each select="Root">
								<xsl:for-each select="System">
									<xsl:for-each select="BIOS">
										<xsl:for-each select="SMBIOS">
											<xsl:for-each select="Type176">
												<xsl:for-each select="@Name">
													<span style="font-weight:bold; ">
														<xsl:value-of select="string(.)"/>
													</span>
												</xsl:for-each>
											</xsl:for-each>
										</xsl:for-each>
									</xsl:for-each>
								</xsl:for-each>
							</xsl:for-each>
							<br/>
							<table border="0" class="TableWithoutBorder" width="100%">
								<xsl:variable name="altova:CurrContextGrid_19" select="."/>
								<tbody>
									<tr style="height:22px; ">
										<td width="157">
											<span>
												<xsl:text>Board ID:</xsl:text>
											</span>
										</td>
										<td>
											<xsl:for-each select="Root">
												<xsl:for-each select="System">
													<xsl:for-each select="BIOS">
														<xsl:for-each select="SMBIOS">
															<xsl:for-each select="Type176">
																<xsl:for-each select="BoardId">
																	<xsl:apply-templates/>
																</xsl:for-each>
															</xsl:for-each>
														</xsl:for-each>
													</xsl:for-each>
												</xsl:for-each>
											</xsl:for-each>
										</td>
									</tr>
								</tbody>
							</table>
						</xsl:if>
						<xsl:if test="Root/System/BIOS/SMBIOS/Type188">
							<br/>
							<span style="font-weight:bold; ">
								<xsl:text>Type </xsl:text>
							</span>
							<xsl:for-each select="Root">
								<xsl:for-each select="System">
									<xsl:for-each select="BIOS">
										<xsl:for-each select="SMBIOS">
											<xsl:for-each select="Type188">
												<xsl:for-each select="@Type">
													<span style="font-weight:bold; ">
														<xsl:value-of select="string(.)"/>
													</span>
												</xsl:for-each>
											</xsl:for-each>
										</xsl:for-each>
									</xsl:for-each>
								</xsl:for-each>
							</xsl:for-each>
							<span style="font-weight:bold; ">
								<xsl:text>: </xsl:text>
							</span>
							<xsl:for-each select="Root">
								<xsl:for-each select="System">
									<xsl:for-each select="BIOS">
										<xsl:for-each select="SMBIOS">
											<xsl:for-each select="Type188">
												<xsl:for-each select="@Name">
													<span style="font-weight:bold; ">
														<xsl:value-of select="string(.)"/>
													</span>
												</xsl:for-each>
											</xsl:for-each>
										</xsl:for-each>
									</xsl:for-each>
								</xsl:for-each>
							</xsl:for-each>
							<span style="font-size:smaller; font-weight:bold; ">
								<xsl:text>:</xsl:text>
							</span>
							<br/>
							<br/>
							<table border="0" class="TableWithoutBorder" width="100%">
								<xsl:variable name="altova:CurrContextGrid_20" select="."/>
								<tbody>
									<tr>
										<td width="157">
											<span>
												<xsl:text>BIOS Identifier:</xsl:text>
											</span>
										</td>
										<td>
											<xsl:for-each select="Root">
												<xsl:for-each select="System">
													<xsl:for-each select="BIOS">
														<xsl:for-each select="SMBIOS">
															<xsl:for-each select="Type188">
																<xsl:for-each select="Identifier">
																	<xsl:apply-templates/>
																</xsl:for-each>
															</xsl:for-each>
														</xsl:for-each>
													</xsl:for-each>
												</xsl:for-each>
											</xsl:for-each>
										</td>
									</tr>
								</tbody>
							</table>
						</xsl:if>
						<xsl:if test="Root/System/BIOS/SMBIOS/Type190">
							<br/>
							<span style="font-weight:bold; ">
								<xsl:text>Type </xsl:text>
							</span>
							<xsl:for-each select="Root">
								<xsl:for-each select="System">
									<xsl:for-each select="BIOS">
										<xsl:for-each select="SMBIOS">
											<xsl:for-each select="Type190">
												<xsl:for-each select="@Type">
													<span style="font-weight:bold; ">
														<xsl:value-of select="string(.)"/>
													</span>
												</xsl:for-each>
											</xsl:for-each>
										</xsl:for-each>
									</xsl:for-each>
								</xsl:for-each>
							</xsl:for-each>
							<span style="font-weight:bold; ">
								<xsl:text>: </xsl:text>
							</span>
							<xsl:for-each select="Root">
								<xsl:for-each select="System">
									<xsl:for-each select="BIOS">
										<xsl:for-each select="SMBIOS">
											<xsl:for-each select="Type190">
												<xsl:for-each select="@Name">
													<span style="font-weight:bold; ">
														<xsl:value-of select="string(.)"/>
													</span>
												</xsl:for-each>
											</xsl:for-each>
										</xsl:for-each>
									</xsl:for-each>
								</xsl:for-each>
							</xsl:for-each>
							<br/>
							<xsl:if test="Root/System/BIOS/SMBIOS/Type190/Entry/Scrubbing">
								<table border="0" class="TableWithoutBorder" width="100%">
									<xsl:variable name="altova:CurrContextGrid_21" select="."/>
									<tbody>
										<tr>
											<td width="157">
												<span>
													<xsl:text>Memory Scrubbing</xsl:text>
												</span>
											</td>
											<td>
												<span>
													<xsl:text>Runs: </xsl:text>
												</span>
												<xsl:for-each select="Root">
													<xsl:for-each select="System">
														<xsl:for-each select="BIOS">
															<xsl:for-each select="SMBIOS">
																<xsl:for-each select="Type190">
																	<xsl:for-each select="Entry">
																		<xsl:for-each select="Scrubbing">
																			<xsl:for-each select="Runs">
																				<span style="font-weight:bold; ">
																					<xsl:apply-templates/>
																				</span>
																			</xsl:for-each>
																		</xsl:for-each>
																	</xsl:for-each>
																</xsl:for-each>
															</xsl:for-each>
														</xsl:for-each>
													</xsl:for-each>
												</xsl:for-each>
											</td>
										</tr>
									</tbody>
								</table>
							</xsl:if>
							<xsl:if test="Root/System/BIOS/SMBIOS/Type190/Entry/Hotspare">
								<br/>
								<h4>
									<span>
										<xsl:text>Hot Spare Memory</xsl:text>
									</span>
								</h4>
								<xsl:for-each select="Root">
									<xsl:for-each select="System">
										<xsl:for-each select="BIOS">
											<xsl:for-each select="SMBIOS">
												<xsl:for-each select="Type190">
													<xsl:for-each select="Entry">
														<xsl:for-each select="Hotspare">
															<table border="1" cellpadding="2" cellspacing="0">
																<xsl:variable name="altova:CurrContextGrid_22" select="."/>
																<thead>
																	<tr>
																		<th align="center">
																			<span>
																				<xsl:text>Handle</xsl:text>
																			</span>
																		</th>
																		<th align="center">
																			<span>
																				<xsl:text>Status</xsl:text>
																			</span>
																		</th>
																	</tr>
																</thead>
																<tbody>
																	<xsl:for-each select="Entry">
																		<tr>
																			<td align="center">
																				<xsl:for-each select="@Handle">
																					<span>
																						<xsl:value-of select="string(.)"/>
																					</span>
																				</xsl:for-each>
																			</td>
																			<td align="center">
																				<xsl:for-each select="Status">
																					<xsl:apply-templates/>
																				</xsl:for-each>
																			</td>
																		</tr>
																	</xsl:for-each>
																</tbody>
															</table>
														</xsl:for-each>
													</xsl:for-each>
												</xsl:for-each>
											</xsl:for-each>
										</xsl:for-each>
									</xsl:for-each>
								</xsl:for-each>
							</xsl:if>
							<br/>
							<h4>
								<span>
									<xsl:text>CPU-PDA</xsl:text>
								</span>
							</h4>
							<xsl:choose>
								<xsl:when test="Root/System/BIOS/SMBIOS/Type190/Entry/CPU-PDA">
									<xsl:for-each select="Root">
										<xsl:for-each select="System">
											<xsl:for-each select="BIOS">
												<xsl:for-each select="SMBIOS">
													<xsl:for-each select="Type190">
														<xsl:for-each select="Entry">
															<xsl:for-each select="CPU-PDA">
																<table border="1" cellpadding="2" cellspacing="0">
																	<xsl:variable name="altova:CurrContextGrid_23" select="."/>
																	<thead>
																		<tr>
																			<th align="center">
																				<span>
																					<xsl:text>Handle</xsl:text>
																				</span>
																			</th>
																			<th align="center">
																				<span>
																					<xsl:text>APIC ID</xsl:text>
																				</span>
																			</th>
																		</tr>
																	</thead>
																	<tbody>
																		<xsl:for-each select="Entry">
																			<tr>
																				<td align="center">
																					<xsl:for-each select="@Handle">
																						<span>
																							<xsl:value-of select="string(.)"/>
																						</span>
																					</xsl:for-each>
																				</td>
																				<td align="center">
																					<xsl:for-each select="APICId">
																						<xsl:apply-templates/>
																					</xsl:for-each>
																				</td>
																			</tr>
																		</xsl:for-each>
																	</tbody>
																</table>
															</xsl:for-each>
														</xsl:for-each>
													</xsl:for-each>
												</xsl:for-each>
											</xsl:for-each>
										</xsl:for-each>
									</xsl:for-each>
								</xsl:when>
								<xsl:otherwise>
									<span>
										<xsl:text>empty</xsl:text>
									</span>
								</xsl:otherwise>
							</xsl:choose>
							<br/>
						</xsl:if>
						<xsl:if test="count (Root/System/BIOS/SMBIOS/IRQRouting)">
							<h4>
								<span>
									<xsl:text>IRQ Routing Table</xsl:text>
								</span>
							</h4>
							<table border="0" class="TableWithoutBorder" width="100%">
								<xsl:variable name="altova:CurrContextGrid_24" select="."/>
								<tbody>
									<tr>
										<td width="160">
											<span>
												<xsl:text>Version:</xsl:text>
											</span>
										</td>
										<td>
											<xsl:for-each select="Root">
												<xsl:for-each select="System">
													<xsl:for-each select="BIOS">
														<xsl:for-each select="SMBIOS">
															<xsl:for-each select="IRQRouting">
																<xsl:for-each select="@Version">
																	<span>
																		<xsl:value-of select="string(.)"/>
																	</span>
																</xsl:for-each>
															</xsl:for-each>
														</xsl:for-each>
													</xsl:for-each>
												</xsl:for-each>
											</xsl:for-each>
										</td>
									</tr>
									<tr>
										<td width="160">
											<span>
												<xsl:text>Checksum:</xsl:text>
											</span>
										</td>
										<td>
											<xsl:for-each select="Root">
												<xsl:for-each select="System">
													<xsl:for-each select="BIOS">
														<xsl:for-each select="SMBIOS">
															<xsl:for-each select="IRQRouting">
																<xsl:for-each select="@Checksum">
																	<span>
																		<xsl:value-of select="string(.)"/>
																	</span>
																</xsl:for-each>
															</xsl:for-each>
														</xsl:for-each>
													</xsl:for-each>
												</xsl:for-each>
											</xsl:for-each>
										</td>
									</tr>
									<tr>
										<td width="160">
											<span>
												<xsl:text>Size (Byte):</xsl:text>
											</span>
										</td>
										<td>
											<xsl:for-each select="Root">
												<xsl:for-each select="System">
													<xsl:for-each select="BIOS">
														<xsl:for-each select="SMBIOS">
															<xsl:for-each select="IRQRouting">
																<xsl:for-each select="@Size">
																	<span>
																		<xsl:value-of select="string(.)"/>
																	</span>
																</xsl:for-each>
															</xsl:for-each>
														</xsl:for-each>
													</xsl:for-each>
												</xsl:for-each>
											</xsl:for-each>
										</td>
									</tr>
									<tr>
										<td width="160">
											<span>
												<xsl:text>Entries:</xsl:text>
											</span>
										</td>
										<td>
											<xsl:for-each select="Root">
												<xsl:for-each select="System">
													<xsl:for-each select="BIOS">
														<xsl:for-each select="SMBIOS">
															<xsl:for-each select="IRQRouting">
																<xsl:for-each select="@Entries">
																	<span>
																		<xsl:value-of select="string(.)"/>
																	</span>
																</xsl:for-each>
															</xsl:for-each>
														</xsl:for-each>
													</xsl:for-each>
												</xsl:for-each>
											</xsl:for-each>
										</td>
									</tr>
								</tbody>
							</table>
							<xsl:if test="Root/System/BIOS/SMBIOS/IRQRouting/@Entries  != 0">
								<br/>
								<h4>
									<span>
										<xsl:text>Table Entries:</xsl:text>
									</span>
								</h4>
								<table border="1" cellpadding="2" cellspacing="0">
									<xsl:variable name="altova:CurrContextGrid_25" select="."/>
									<thead>
										<tr>
											<th style="text-align:center; ">
												<span>
													<xsl:text>Bus</xsl:text>
												</span>
											</th>
											<th style="text-align:center; ">
												<span>
													<xsl:text>Device</xsl:text>
												</span>
											</th>
											<th style="text-align:center; ">
												<span>
													<xsl:text>Slot</xsl:text>
												</span>
											</th>
										</tr>
									</thead>
									<tbody>
										<xsl:for-each select="Root">
											<xsl:for-each select="System">
												<xsl:for-each select="BIOS">
													<xsl:for-each select="SMBIOS">
														<xsl:for-each select="IRQRouting">
															<xsl:for-each select="Data">
																<xsl:for-each select="Decoded">
																	<xsl:for-each select="Entry">
																		<tr>
																			<td style="text-align:center; ">
																				<xsl:for-each select="@Bus">
																					<span>
																						<xsl:value-of select="string(.)"/>
																					</span>
																				</xsl:for-each>
																			</td>
																			<td style="text-align:center; ">
																				<xsl:for-each select="@Device">
																					<span>
																						<xsl:value-of select="string(.)"/>
																					</span>
																				</xsl:for-each>
																			</td>
																			<td style="text-align:center; ">
																				<xsl:for-each select="Slot">
																					<xsl:apply-templates/>
																				</xsl:for-each>
																			</td>
																		</tr>
																	</xsl:for-each>
																</xsl:for-each>
															</xsl:for-each>
														</xsl:for-each>
													</xsl:for-each>
												</xsl:for-each>
											</xsl:for-each>
										</xsl:for-each>
									</tbody>
								</table>
							</xsl:if>
							<br/>
							<h4>
								<span>
									<xsl:text>Raw Data Dump:</xsl:text>
								</span>
							</h4>
							<table style="font-family:Courier New; " border="0" cellpadding="2" cellspacing="0">
								<xsl:variable name="altova:CurrContextGrid_26" select="."/>
								<thead>
									<tr>
										<th>
											<span>
												<xsl:text>Offset</xsl:text>
											</span>
										</th>
										<th>
											<span>
												<xsl:text>Hex</xsl:text>
											</span>
										</th>
										<th>
											<span>
												<xsl:text>ASCII</xsl:text>
											</span>
										</th>
									</tr>
								</thead>
								<tbody>
									<xsl:for-each select="Root">
										<xsl:for-each select="System">
											<xsl:for-each select="BIOS">
												<xsl:for-each select="SMBIOS">
													<xsl:for-each select="IRQRouting">
														<xsl:for-each select="Data">
															<xsl:for-each select="HexDump">
																<xsl:for-each select="Line">
																	<tr>
																		<td>
																			<xsl:for-each select="@Offset">
																				<span>
																					<xsl:value-of select="string(.)"/>
																				</span>
																			</xsl:for-each>
																		</td>
																		<td>
																			<xsl:for-each select="Hex">
																				<xsl:apply-templates/>
																			</xsl:for-each>
																		</td>
																		<td>
																			<xsl:for-each select="ASCII">
																				<span style="font-weight:bold; ">
																					<xsl:apply-templates/>
																				</span>
																			</xsl:for-each>
																		</td>
																	</tr>
																</xsl:for-each>
															</xsl:for-each>
														</xsl:for-each>
													</xsl:for-each>
												</xsl:for-each>
											</xsl:for-each>
										</xsl:for-each>
									</xsl:for-each>
								</tbody>
							</table>
						</xsl:if>
					</xsl:if>
					<br/>
					<h2>
						<a>
							<xsl:attribute name="name">
								<xsl:value-of select="&apos;System PCI Devices&apos;"/>
							</xsl:attribute>
							<span style="font-weight:bold; ">
								<xsl:text>PCI Configuration</xsl:text>
							</span>
						</a>
					</h2>
					<span style="font-weight:bold; ">
						<xsl:text>PCI Devices:</xsl:text>
					</span>
					<br/>
					<br/>
					<xsl:for-each select="Root">
						<xsl:for-each select="System">
							<xsl:for-each select="PCIDevices">
								<table border="1" cellpadding="2" cellspacing="0">
									<xsl:variable name="altova:CurrContextGrid_27" select="."/>
									<thead>
										<tr>
											<th style="text-align:center; ">
												<span>
													<xsl:text>Segm.</xsl:text>
												</span>
											</th>
											<th>
												<span>
													<xsl:text>Bus</xsl:text>
												</span>
											</th>
											<th>
												<span>
													<xsl:text>Device</xsl:text>
												</span>
											</th>
											<th>
												<span>
													<xsl:text>Func.</xsl:text>
												</span>
											</th>
											<th>
												<span>
													<xsl:text>Rev.</xsl:text>
												</span>
											</th>
											<th align="center">
												<span>
													<xsl:text>Slot</xsl:text>
												</span>
											</th>
											<th>
												<span>
													<xsl:text>Slot </xsl:text>
												</span>
												<br/>
												<span>
													<xsl:text>Designation </xsl:text>
												</span>
											</th>
											<th>
												<span>
													<xsl:text>Vendor ID</xsl:text>
												</span>
											</th>
											<th>
												<span>
													<xsl:text>Sub </xsl:text>
												</span>
												<br/>
												<span>
													<xsl:text>Vendor ID</xsl:text>
												</span>
											</th>
											<th>
												<span>
													<xsl:text>Device ID</xsl:text>
												</span>
											</th>
											<th>
												<span>
													<xsl:text>Sub </xsl:text>
												</span>
												<br/>
												<span>
													<xsl:text>Device ID</xsl:text>
												</span>
											</th>
											<th>
												<span>
													<xsl:text>Vendor Name</xsl:text>
												</span>
											</th>
											<th>
												<span>
													<xsl:text>Subvendor Name</xsl:text>
												</span>
											</th>
											<th>
												<span>
													<xsl:text>Device Name</xsl:text>
												</span>
											</th>
										</tr>
									</thead>
									<tbody>
										<xsl:for-each select="Device">
											<tr>
												<td style="text-align:center; ">
													<xsl:for-each select="@Segment">
														<span>
															<xsl:value-of select="string(.)"/>
														</span>
													</xsl:for-each>
												</td>
												<td align="center">
													<xsl:for-each select="@Bus">
														<span>
															<xsl:value-of select="string(.)"/>
														</span>
													</xsl:for-each>
												</td>
												<td align="center">
													<xsl:for-each select="@Device">
														<span>
															<xsl:value-of select="string(.)"/>
														</span>
													</xsl:for-each>
												</td>
												<td align="center">
													<xsl:for-each select="@Function">
														<span>
															<xsl:value-of select="string(.)"/>
														</span>
													</xsl:for-each>
												</td>
												<td align="center">
													<xsl:for-each select="ConfigSpace">
														<xsl:for-each select="Revision">
															<xsl:apply-templates/>
														</xsl:for-each>
													</xsl:for-each>
												</td>
												<td align="center">
													<xsl:choose>
														<xsl:when test="count(Slot)">
															<xsl:for-each select="Slot">
																<xsl:apply-templates/>
															</xsl:for-each>
														</xsl:when>
														<xsl:otherwise>
															<span>
																<xsl:text>N/A</xsl:text>
															</span>
														</xsl:otherwise>
													</xsl:choose>
												</td>
												<td>
													<xsl:choose>
														<xsl:when test="count(SlotDesignation)">
															<xsl:for-each select="SlotDesignation">
																<xsl:apply-templates/>
															</xsl:for-each>
														</xsl:when>
														<xsl:otherwise>
															<span>
																<xsl:text>N/A</xsl:text>
															</span>
														</xsl:otherwise>
													</xsl:choose>
												</td>
												<td align="center">
													<xsl:for-each select="ConfigSpace">
														<xsl:for-each select="VendorId">
															<xsl:apply-templates/>
														</xsl:for-each>
													</xsl:for-each>
												</td>
												<td align="center">
													<xsl:choose>
														<xsl:when test="count( ConfigSpace/SubVendorId ) != 0">
															<xsl:for-each select="ConfigSpace">
																<xsl:for-each select="SubVendorId">
																	<xsl:apply-templates/>
																</xsl:for-each>
															</xsl:for-each>
														</xsl:when>
														<xsl:otherwise>
															<span>
																<xsl:text>N/A</xsl:text>
															</span>
														</xsl:otherwise>
													</xsl:choose>
												</td>
												<td align="center">
													<xsl:for-each select="ConfigSpace">
														<xsl:for-each select="DeviceId">
															<xsl:apply-templates/>
														</xsl:for-each>
													</xsl:for-each>
												</td>
												<td align="center">
													<xsl:choose>
														<xsl:when test="count( ConfigSpace/SubDeviceId ) != 0">
															<xsl:for-each select="ConfigSpace">
																<xsl:for-each select="SubDeviceId">
																	<xsl:apply-templates/>
																</xsl:for-each>
															</xsl:for-each>
														</xsl:when>
														<xsl:otherwise>
															<span>
																<xsl:text>N/A</xsl:text>
															</span>
														</xsl:otherwise>
													</xsl:choose>
												</td>
												<td>
													<xsl:for-each select="VendorName">
														<xsl:apply-templates/>
													</xsl:for-each>
												</td>
												<td>
													<xsl:for-each select="SubVendorName">
														<xsl:apply-templates/>
													</xsl:for-each>
												</td>
												<td>
													<xsl:choose>
														<xsl:when test="count(  DeviceName  )  = 0">
															<span>
																<xsl:text>N/A</xsl:text>
															</span>
														</xsl:when>
														<xsl:when test="count(  DeviceName  )  != 0">
															<xsl:for-each select="DeviceName">
																<xsl:apply-templates/>
															</xsl:for-each>
														</xsl:when>
													</xsl:choose>
												</td>
											</tr>
										</xsl:for-each>
									</tbody>
								</table>
							</xsl:for-each>
						</xsl:for-each>
					</xsl:for-each>
					<br/>
					<br/>
					<span style="font-weight:bold; ">
						<xsl:text>PCI Resources:</xsl:text>
					</span>
					<br/>
					<br/>
					<table border="1" cellpadding="2" cellspacing="0">
						<xsl:variable name="altova:CurrContextGrid_28" select="."/>
						<thead>
							<tr>
								<th colspan="4" width="45">
									<span>
										<xsl:text>Location</xsl:text>
									</span>
								</th>
								<th colspan="3">
									<span>
										<xsl:text>PCI Resources</xsl:text>
									</span>
								</th>
							</tr>
							<tr>
								<th style="text-align:center; " width="45">
									<span>
										<xsl:text>Segment</xsl:text>
									</span>
								</th>
								<th style="text-align:center; " width="45">
									<span>
										<xsl:text>Bus</xsl:text>
									</span>
								</th>
								<th style="text-align:center; " width="45">
									<span>
										<xsl:text>Device</xsl:text>
									</span>
								</th>
								<th style="text-align:center; " width="45">
									<span>
										<xsl:text>Func.</xsl:text>
									</span>
								</th>
								<th>
									<span>
										<xsl:text>IO Ports</xsl:text>
									</span>
								</th>
								<th>
									<span>
										<xsl:text>Base Memory</xsl:text>
									</span>
								</th>
								<th style="text-align:center; ">
									<span>
										<xsl:text>IRQ Level</xsl:text>
									</span>
								</th>
							</tr>
						</thead>
						<tbody>
							<xsl:for-each select="Root">
								<xsl:for-each select="System">
									<xsl:for-each select="PCIDevices">
										<xsl:for-each select="Device">
											<tr>
												<td style="text-align:center; " width="45">
													<xsl:for-each select="@Segment">
														<span>
															<xsl:value-of select="string(.)"/>
														</span>
													</xsl:for-each>
												</td>
												<td style="text-align:center; " width="45">
													<xsl:for-each select="@Bus">
														<span>
															<xsl:value-of select="string(.)"/>
														</span>
													</xsl:for-each>
												</td>
												<td style="text-align:center; " width="45">
													<xsl:for-each select="@Device">
														<span>
															<xsl:value-of select="string(.)"/>
														</span>
													</xsl:for-each>
												</td>
												<td style="text-align:center; " width="45">
													<xsl:for-each select="@Function">
														<span>
															<xsl:value-of select="string(.)"/>
														</span>
													</xsl:for-each>
												</td>
												<td>
													<table style="vertical-align:top; " border="0">
														<xsl:variable name="altova:CurrContextGrid_29" select="."/>
														<tbody>
															<xsl:for-each select="ConfigSpace">
																<xsl:for-each select="Resources">
																	<xsl:for-each select="IO">
																		<xsl:for-each select="Address">
																			<tr>
																				<td style="font-family:Courier New; ">
																					<span>
																						<xsl:text>[</xsl:text>
																					</span>
																					<xsl:for-each select="@Index">
																						<span>
																							<xsl:value-of select="string(.)"/>
																						</span>
																					</xsl:for-each>
																					<span>
																						<xsl:text>]</xsl:text>
																					</span>
																				</td>
																				<td style="font-family:Courier New; ">
																					<xsl:apply-templates/>
																				</td>
																			</tr>
																		</xsl:for-each>
																	</xsl:for-each>
																</xsl:for-each>
															</xsl:for-each>
														</tbody>
													</table>
												</td>
												<td style="vertical-align:top; ">
													<table style="vertical-align:top; " border="0">
														<xsl:variable name="altova:CurrContextGrid_30" select="."/>
														<tbody>
															<xsl:for-each select="ConfigSpace">
																<xsl:for-each select="Resources">
																	<xsl:for-each select="Memory">
																		<xsl:for-each select="Address">
																			<tr>
																				<td style="font-family:Courier New; ">
																					<span>
																						<xsl:text>[</xsl:text>
																					</span>
																					<xsl:for-each select="@Index">
																						<span>
																							<xsl:value-of select="string(.)"/>
																						</span>
																					</xsl:for-each>
																					<span>
																						<xsl:text>]</xsl:text>
																					</span>
																				</td>
																				<td style="font-family:Courier New; ">
																					<xsl:apply-templates/>
																				</td>
																			</tr>
																		</xsl:for-each>
																	</xsl:for-each>
																</xsl:for-each>
															</xsl:for-each>
														</tbody>
													</table>
												</td>
												<td style="font-family:Courier New; text-align:center; vertical-align:top; ">
													<table border="0" width="100%">
														<xsl:variable name="altova:CurrContextGrid_31" select="."/>
														<tbody>
															<tr>
																<td>
																	<xsl:choose>
																		<xsl:when test="ConfigSpace/Resources/IRQ">
																			<xsl:for-each select="ConfigSpace">
																				<xsl:for-each select="Resources">
																					<xsl:for-each select="IRQ">
																						<xsl:apply-templates/>
																					</xsl:for-each>
																				</xsl:for-each>
																			</xsl:for-each>
																		</xsl:when>
																		<xsl:otherwise/>
																	</xsl:choose>
																</td>
															</tr>
														</tbody>
													</table>
												</td>
											</tr>
										</xsl:for-each>
									</xsl:for-each>
								</xsl:for-each>
							</xsl:for-each>
						</tbody>
					</table>
					<br/>
					<br/>
					<h2>
						<a>
							<xsl:attribute name="name">
								<xsl:value-of select="&apos;System Data Records&apos;"/>
							</xsl:attribute>
							<span>
								<xsl:text>Sensor Data Records</xsl:text>
							</span>
						</a>
					</h2>
					<xsl:choose>
						<xsl:when test="count(  Root/System/SensorDataRecords/SDR )">
							<table border="1" cellpadding="2" cellspacing="0">
								<xsl:variable name="altova:CurrContextGrid_32" select="."/>
								<thead>
									<tr>
										<th>
											<span>
												<xsl:text>Redord ID</xsl:text>
											</span>
										</th>
										<th>
											<span>
												<xsl:text>Record Details</xsl:text>
											</span>
										</th>
										<th>
											<span>
												<xsl:text>Record Specific Data</xsl:text>
											</span>
										</th>
										<th>
											<span>
												<xsl:text>Data</xsl:text>
											</span>
										</th>
									</tr>
								</thead>
								<tbody>
									<xsl:for-each select="Root">
										<xsl:for-each select="System">
											<xsl:for-each select="SensorDataRecords">
												<xsl:for-each select="SDR">
													<tr>
														<td align="center">
															<xsl:for-each select="@RecordID">
																<span>
																	<xsl:value-of select="string(.)"/>
																</span>
															</xsl:for-each>
														</td>
														<td align="left">
															<table border="0" width="100%">
																<xsl:variable name="altova:CurrContextGrid_33" select="."/>
																<tbody>
																	<tr>
																		<td style="font-weight:bold; text-align:left; ">
																			<span>
																				<xsl:text>Name:</xsl:text>
																			</span>
																		</td>
																		<td style="text-align:left; " align="left">
																			<xsl:for-each select="@RecordTypeName">
																				<span>
																					<xsl:value-of select="string(.)"/>
																				</span>
																			</xsl:for-each>
																			<span>
																				<xsl:text> (</xsl:text>
																			</span>
																			<xsl:for-each select="@RecordType">
																				<span>
																					<xsl:value-of select="string(.)"/>
																				</span>
																			</xsl:for-each>
																			<span>
																				<xsl:text>)&#160; V</xsl:text>
																			</span>
																			<xsl:for-each select="@Version">
																				<span>
																					<xsl:value-of select="string(.)"/>
																				</span>
																			</xsl:for-each>
																		</td>
																	</tr>
																	<tr>
																		<td>
																			<xsl:if test="count(Data/Decoded/Key/SensorNumber)">
																				<span style="font-weight:bold; ">
																					<xsl:text>Number:</xsl:text>
																				</span>
																			</xsl:if>
																		</td>
																		<td>
																			<xsl:if test="count(Data/Decoded/Key/SensorNumber)">
																				<xsl:for-each select="Data">
																					<xsl:for-each select="Decoded">
																						<xsl:for-each select="Key">
																							<xsl:for-each select="SensorNumber">
																								<xsl:apply-templates/>
																							</xsl:for-each>
																						</xsl:for-each>
																					</xsl:for-each>
																				</xsl:for-each>
																			</xsl:if>
																		</td>
																	</tr>
																	<tr>
																		<td style="font-weight:bold; ">
																			<span>
																				<xsl:text>Owner:</xsl:text>
																			</span>
																		</td>
																		<td>
																			<xsl:for-each select="Data">
																				<xsl:for-each select="Decoded">
																					<xsl:for-each select="Key">
																						<xsl:for-each select="SensorOwner">
																							<xsl:for-each select="@Type">
																								<span>
																									<xsl:value-of select="string(.)"/>
																								</span>
																							</xsl:for-each>
																						</xsl:for-each>
																					</xsl:for-each>
																				</xsl:for-each>
																			</xsl:for-each>
																			<span>
																				<xsl:text>:&#160; 0x</xsl:text>
																			</span>
																			<xsl:for-each select="Data">
																				<xsl:for-each select="Decoded">
																					<xsl:for-each select="Key">
																						<xsl:for-each select="SensorOwner">
																							<xsl:for-each select="ID">
																								<xsl:apply-templates/>
																							</xsl:for-each>
																						</xsl:for-each>
																					</xsl:for-each>
																				</xsl:for-each>
																			</xsl:for-each>
																			<span>
																				<xsl:text> LUN: </xsl:text>
																			</span>
																			<xsl:for-each select="Data">
																				<xsl:for-each select="Decoded">
																					<xsl:for-each select="Key">
																						<xsl:for-each select="SensorOwner">
																							<xsl:for-each select="LUN">
																								<xsl:apply-templates/>
																							</xsl:for-each>
																						</xsl:for-each>
																					</xsl:for-each>
																				</xsl:for-each>
																			</xsl:for-each>
																			<span>
																				<xsl:text> Ch: </xsl:text>
																			</span>
																			<xsl:for-each select="Data">
																				<xsl:for-each select="Decoded">
																					<xsl:for-each select="Key">
																						<xsl:for-each select="SensorOwner">
																							<xsl:for-each select="Channel">
																								<xsl:apply-templates/>
																							</xsl:for-each>
																						</xsl:for-each>
																					</xsl:for-each>
																				</xsl:for-each>
																			</xsl:for-each>
																		</td>
																	</tr>
																	<tr>
																		<td style="font-weight:bold; ">
																			<span>
																				<xsl:text>Size:</xsl:text>
																			</span>
																		</td>
																		<td>
																			<xsl:for-each select="Data">
																				<xsl:for-each select="@Size">
																					<span>
																						<xsl:value-of select="string(.)"/>
																					</span>
																				</xsl:for-each>
																			</xsl:for-each>
																			<span>
																				<xsl:text> Byte</xsl:text>
																			</span>
																		</td>
																	</tr>
																	<tr>
																		<td style="font-weight:bold; text-align:left; " align="center">
																			<xsl:if test="count(  Data/Decoded/Sensor/Type  ) != 0">
																				<span>
																					<xsl:text>Type:</xsl:text>
																				</span>
																			</xsl:if>
																		</td>
																		<td style="text-align:left; " align="left">
																			<xsl:if test="count(  Data/Decoded/Sensor/Type  ) != 0">
																				<xsl:for-each select="Data">
																					<xsl:for-each select="Decoded">
																						<xsl:for-each select="Sensor">
																							<xsl:for-each select="TypeName">
																								<xsl:apply-templates/>
																							</xsl:for-each>
																						</xsl:for-each>
																					</xsl:for-each>
																				</xsl:for-each>
																				<span>
																					<xsl:text> (</xsl:text>
																				</span>
																				<xsl:for-each select="Data">
																					<xsl:for-each select="Decoded">
																						<xsl:for-each select="Sensor">
																							<xsl:for-each select="Type">
																								<xsl:apply-templates/>
																							</xsl:for-each>
																						</xsl:for-each>
																					</xsl:for-each>
																				</xsl:for-each>
																				<span>
																					<xsl:text>)</xsl:text>
																				</span>
																			</xsl:if>
																		</td>
																	</tr>
																	<tr>
																		<td style="font-weight:bold; ">
																			<xsl:if test="count(  Data/Decoded/Entity  ) != 0">
																				<span>
																					<xsl:text>Entity:</xsl:text>
																				</span>
																			</xsl:if>
																		</td>
																		<td>
																			<xsl:if test="count(  Data/Decoded/Entity  ) != 0">
																				<xsl:for-each select="Data">
																					<xsl:for-each select="Decoded">
																						<xsl:for-each select="Entity">
																							<xsl:for-each select="ID">
																								<xsl:apply-templates/>
																							</xsl:for-each>
																						</xsl:for-each>
																					</xsl:for-each>
																				</xsl:for-each>
																				<span>
																					<xsl:text> - </xsl:text>
																				</span>
																				<xsl:for-each select="Data">
																					<xsl:for-each select="Decoded">
																						<xsl:for-each select="Entity">
																							<xsl:for-each select="Instance">
																								<xsl:apply-templates/>
																							</xsl:for-each>
																						</xsl:for-each>
																					</xsl:for-each>
																				</xsl:for-each>
																			</xsl:if>
																		</td>
																	</tr>
																	<tr>
																		<td style="font-weight:bold; ">
																			<xsl:if test="count(  Data/Decoded/Entity  ) != 0">
																				<span>
																					<xsl:text>Entity Name:</xsl:text>
																				</span>
																			</xsl:if>
																		</td>
																		<td style="empty-cells:show; ">
																			<xsl:if test="count(  Data/Decoded/Entity  ) != 0">
																				<xsl:for-each select="Data">
																					<xsl:for-each select="Decoded">
																						<xsl:for-each select="Entity">
																							<xsl:for-each select="Name">
																								<xsl:apply-templates/>
																							</xsl:for-each>
																						</xsl:for-each>
																					</xsl:for-each>
																				</xsl:for-each>
																			</xsl:if>
																		</td>
																	</tr>
																	<tr>
																		<td style="font-weight:bold; "/>
																		<td/>
																	</tr>
																</tbody>
															</table>
														</td>
														<td align="left">
															<xsl:if test="count(  Data/Decoded/Sensor/Thresholds  ) != 0">
																<table border="0" width="100%">
																	<xsl:variable name="altova:CurrContextGrid_34" select="."/>
																	<tbody>
																		<tr>
																			<td>
																				<span style="font-weight:bold; ">
																					<xsl:text>Thresholds: </xsl:text>
																				</span>
																			</td>
																			<td style="text-align:right; ">
																				<span>
																					<xsl:text>in </xsl:text>
																				</span>
																				<xsl:for-each select="Data">
																					<xsl:for-each select="Decoded">
																						<xsl:for-each select="Sensor">
																							<xsl:for-each select="BaseUnitName">
																								<xsl:apply-templates/>
																							</xsl:for-each>
																						</xsl:for-each>
																					</xsl:for-each>
																				</xsl:for-each>
																			</td>
																		</tr>
																		<tr>
																			<td>
																				<span>
																					<xsl:text>Lower critical:</xsl:text>
																				</span>
																			</td>
																			<td style="text-align:right; ">
																				<xsl:for-each select="Data">
																					<xsl:for-each select="Decoded">
																						<xsl:for-each select="Sensor">
																							<xsl:for-each select="Thresholds">
																								<xsl:for-each select="LowerCritical">
																									<xsl:for-each select="Normalized">
																										<xsl:apply-templates/>
																									</xsl:for-each>
																								</xsl:for-each>
																							</xsl:for-each>
																						</xsl:for-each>
																					</xsl:for-each>
																				</xsl:for-each>
																			</td>
																		</tr>
																		<tr>
																			<td>
																				<span>
																					<xsl:text>Lower non-critical</xsl:text>
																				</span>
																			</td>
																			<td style="text-align:right; ">
																				<xsl:for-each select="Data">
																					<xsl:for-each select="Decoded">
																						<xsl:for-each select="Sensor">
																							<xsl:for-each select="Thresholds">
																								<xsl:for-each select="LowerNonCritical">
																									<xsl:for-each select="Normalized">
																										<xsl:apply-templates/>
																									</xsl:for-each>
																								</xsl:for-each>
																							</xsl:for-each>
																						</xsl:for-each>
																					</xsl:for-each>
																				</xsl:for-each>
																			</td>
																		</tr>
																		<tr>
																			<td>
																				<span>
																					<xsl:text>Upper critical</xsl:text>
																				</span>
																			</td>
																			<td style="text-align:right; ">
																				<xsl:for-each select="Data">
																					<xsl:for-each select="Decoded">
																						<xsl:for-each select="Sensor">
																							<xsl:for-each select="Thresholds">
																								<xsl:for-each select="UpperCritical">
																									<xsl:for-each select="Normalized">
																										<xsl:apply-templates/>
																									</xsl:for-each>
																								</xsl:for-each>
																							</xsl:for-each>
																						</xsl:for-each>
																					</xsl:for-each>
																				</xsl:for-each>
																			</td>
																		</tr>
																		<tr>
																			<td>
																				<span>
																					<xsl:text>Upper non-critical</xsl:text>
																				</span>
																			</td>
																			<td style="text-align:right; ">
																				<xsl:for-each select="Data">
																					<xsl:for-each select="Decoded">
																						<xsl:for-each select="Sensor">
																							<xsl:for-each select="Thresholds">
																								<xsl:for-each select="UpperNonCritical">
																									<xsl:for-each select="Normalized">
																										<xsl:apply-templates/>
																									</xsl:for-each>
																								</xsl:for-each>
																							</xsl:for-each>
																						</xsl:for-each>
																					</xsl:for-each>
																				</xsl:for-each>
																			</td>
																		</tr>
																	</tbody>
																</table>
															</xsl:if>
															<br/>
														</td>
														<td>
															<table style="font-family:Courier New; " border="0" cellpadding="2" cellspacing="0">
																<xsl:variable name="altova:CurrContextGrid_35" select="."/>
																<thead style="background-color:transparent; font-size:smaller; ">
																	<tr>
																		<th>
																			<span>
																				<xsl:text>Offset</xsl:text>
																			</span>
																		</th>
																		<th>
																			<span>
																				<xsl:text>Hex</xsl:text>
																			</span>
																		</th>
																		<th>
																			<span>
																				<xsl:text>ASCII</xsl:text>
																			</span>
																		</th>
																	</tr>
																</thead>
																<tbody>
																	<xsl:for-each select="Data">
																		<xsl:for-each select="HexDump">
																			<xsl:for-each select="Line">
																				<tr>
																					<td>
																						<xsl:for-each select="@Offset">
																							<span>
																								<xsl:value-of select="string(.)"/>
																							</span>
																						</xsl:for-each>
																					</td>
																					<td>
																						<xsl:for-each select="Hex">
																							<xsl:apply-templates/>
																						</xsl:for-each>
																					</td>
																					<td>
																						<xsl:for-each select="ASCII">
																							<span style="font-weight:bold; ">
																								<xsl:apply-templates/>
																							</span>
																						</xsl:for-each>
																					</td>
																				</tr>
																			</xsl:for-each>
																		</xsl:for-each>
																	</xsl:for-each>
																</tbody>
															</table>
														</td>
													</tr>
												</xsl:for-each>
											</xsl:for-each>
										</xsl:for-each>
									</xsl:for-each>
								</tbody>
							</table>
						</xsl:when>
						<xsl:otherwise>
							<span>
								<xsl:text>Not available!</xsl:text>
							</span>
						</xsl:otherwise>
					</xsl:choose>
					<br/>
					<br/>
					<h2>
						<a>
							<xsl:attribute name="name">
								<xsl:value-of select="&apos;System IDPROMs&apos;"/>
							</xsl:attribute>
							<span>
								<xsl:text>System IDPROMs</xsl:text>
							</span>
						</a>
					</h2>
					<xsl:choose>
						<xsl:when test="count(Root/System/IDPROMS)">
							<table border="1" cellpadding="2" cellspacing="0">
								<xsl:variable name="altova:CurrContextGrid_36" select="."/>
								<tbody>
									<xsl:for-each select="Root">
										<xsl:for-each select="System">
											<xsl:for-each select="IDPROMS">
												<xsl:for-each select="Class">
													<xsl:for-each select="Instance">
														<tr>
															<td>
																<xsl:for-each select="@ClassName">
																	<span style="font-weight:bold; ">
																		<xsl:value-of select="string(.)"/>
																	</span>
																</xsl:for-each>
																<br/>
																<br/>
																<span>
																	<xsl:text>Instance: </xsl:text>
																</span>
																<xsl:for-each select="@Index">
																	<span>
																		<xsl:value-of select="string(.)"/>
																	</span>
																</xsl:for-each>
																<br/>
																<span>
																	<xsl:text>Class: </xsl:text>
																</span>
																<xsl:for-each select="@ClassCode">
																	<span>
																		<xsl:value-of select="string(.)"/>
																	</span>
																</xsl:for-each>
																<br/>
																<br/>
																<span>
																	<xsl:text>Size: </xsl:text>
																</span>
																<xsl:for-each select="Data">
																	<xsl:for-each select="@Size">
																		<span>
																			<xsl:value-of select="string(.)"/>
																		</span>
																	</xsl:for-each>
																</xsl:for-each>
																<span>
																	<xsl:text> Byte</xsl:text>
																</span>
																<br/>
															</td>
															<td>
																<xsl:if test="Data/@Size != 0">
																	<table border="0" cellpadding="2" cellspacing="0">
																		<xsl:variable name="altova:CurrContextGrid_37" select="."/>
																		<thead style="background-color:transparent; font-size:smaller; ">
																			<tr>
																				<th>
																					<span>
																						<xsl:text>Offset</xsl:text>
																					</span>
																				</th>
																				<th>
																					<span>
																						<xsl:text>Hex</xsl:text>
																					</span>
																				</th>
																				<th>
																					<span>
																						<xsl:text>ASCII</xsl:text>
																					</span>
																				</th>
																			</tr>
																		</thead>
																		<tbody>
																			<xsl:for-each select="Data">
																				<xsl:for-each select="HexDump">
																					<xsl:for-each select="Line">
																						<tr>
																							<td>
																								<xsl:for-each select="@Offset">
																									<span>
																										<xsl:value-of select="string(.)"/>
																									</span>
																								</xsl:for-each>
																							</td>
																							<td>
																								<xsl:for-each select="Hex">
																									<span style="font-family:Courier New; ">
																										<xsl:apply-templates/>
																									</span>
																								</xsl:for-each>
																							</td>
																							<td>
																								<xsl:for-each select="ASCII">
																									<span style="font-family:Courier New; font-weight:bold; ">
																										<xsl:apply-templates/>
																									</span>
																								</xsl:for-each>
																							</td>
																						</tr>
																					</xsl:for-each>
																				</xsl:for-each>
																			</xsl:for-each>
																		</tbody>
																	</table>
																</xsl:if>
															</td>
														</tr>
													</xsl:for-each>
												</xsl:for-each>
											</xsl:for-each>
										</xsl:for-each>
									</xsl:for-each>
								</tbody>
							</table>
						</xsl:when>
						<xsl:otherwise>
							<span>
								<xsl:text>Not available!</xsl:text>
							</span>
						</xsl:otherwise>
					</xsl:choose>
					<br/>
					<h2>
						<a>
							<xsl:attribute name="name">
								<xsl:value-of select="&apos;System Processors&apos;"/>
							</xsl:attribute>
							<span>
								<xsl:text>System Processors</xsl:text>
							</span>
						</a>
					</h2>
					<xsl:for-each select="Root">
						<xsl:for-each select="System">
							<xsl:for-each select="Processor">
								<table border="1" cellpadding="2" cellspacing="0">
									<xsl:variable name="altova:CurrContextGrid_38" select="."/>
									<thead>
										<tr align="center">
											<th rowspan="2" style="text-align:center; " width="127">
												<span>
													<xsl:text>Socket </xsl:text>
												</span>
											</th>
											<th rowspan="2" style="text-align:center; " width="119">
												<span>
													<xsl:text>Status</xsl:text>
												</span>
											</th>
											<th rowspan="2" width="119">
												<span>
													<xsl:text>Boot</xsl:text>
												</span>
											</th>
											<th rowspan="2" style="text-align:center; " width="119">
												<span>
													<xsl:text>Manufacturer</xsl:text>
												</span>
											</th>
											<th rowspan="2" width="246">
												<span>
													<xsl:text>Brand Name (CPU ID)</xsl:text>
												</span>
											</th>
											<th rowspan="2" style="text-align:center; ">
												<span>
													<xsl:text>Speed</xsl:text>
												</span>
											</th>
											<th rowspan="2" style="text-align:center; ">
												<span>
													<xsl:text>QPI Speed</xsl:text>
												</span>
											</th>
											<th colspan="2">
												<span>
													<xsl:text>Cores</xsl:text>
												</span>
											</th>
											<th rowspan="2">
												<span>
													<xsl:text>Thread</xsl:text>
												</span>
												<br/>
												<span>
													<xsl:text>Count</xsl:text>
												</span>
											</th>
											<th colspan="3">
												<span>
													<xsl:text>Cache Size</xsl:text>
												</span>
											</th>
										</tr>
										<tr>
											<th>
												<span>
													<xsl:text>Available</xsl:text>
												</span>
											</th>
											<th style="text-align:center; ">
												<span>
													<xsl:text>Enabled</xsl:text>
												</span>
											</th>
											<th>
												<span>
													<xsl:text>Level 1</xsl:text>
												</span>
											</th>
											<th>
												<span>
													<xsl:text>Level 2</xsl:text>
												</span>
											</th>
											<th>
												<span>
													<xsl:text>Level 3</xsl:text>
												</span>
											</th>
										</tr>
									</thead>
									<tbody>
										<xsl:for-each select="CPU">
											<tr>
												<td style="text-align:center; " width="127">
													<xsl:choose>
														<xsl:when test="count( SocketDesignation )">
															<xsl:for-each select="SocketDesignation">
																<xsl:apply-templates/>
															</xsl:for-each>
														</xsl:when>
														<xsl:otherwise>
															<span>
																<xsl:text>N/A</xsl:text>
															</span>
														</xsl:otherwise>
													</xsl:choose>
												</td>
												<td style="text-align:center; " width="119">
													<xsl:choose>
														<xsl:when test="count(  Status  )">
															<xsl:for-each select="Status">
																<xsl:apply-templates/>
															</xsl:for-each>
															<span>
																<xsl:text> (</xsl:text>
															</span>
															<xsl:for-each select="Status">
																<xsl:for-each select="@Description">
																	<span>
																		<xsl:value-of select="string(.)"/>
																	</span>
																</xsl:for-each>
															</xsl:for-each>
															<span>
																<xsl:text>)</xsl:text>
															</span>
														</xsl:when>
														<xsl:otherwise>
															<span>
																<xsl:text>N/A</xsl:text>
															</span>
														</xsl:otherwise>
													</xsl:choose>
												</td>
												<td style="text-align:center; " width="119">
													<xsl:choose>
														<xsl:when test="@Boot">
															<xsl:choose>
																<xsl:when test="@Boot=&quot;true&quot;">
																	<span>
																		<xsl:text>yes</xsl:text>
																	</span>
																</xsl:when>
																<xsl:otherwise>
																	<span>
																		<xsl:text>no</xsl:text>
																	</span>
																</xsl:otherwise>
															</xsl:choose>
														</xsl:when>
														<xsl:otherwise>
															<span>
																<xsl:text>N/A</xsl:text>
															</span>
														</xsl:otherwise>
													</xsl:choose>
												</td>
												<td style="text-align:center; " width="119">
													<xsl:choose>
														<xsl:when test="count( Manufacturer )">
															<xsl:for-each select="Manufacturer">
																<xsl:apply-templates/>
															</xsl:for-each>
														</xsl:when>
														<xsl:otherwise>
															<span>
																<xsl:text>N/A</xsl:text>
															</span>
														</xsl:otherwise>
													</xsl:choose>
												</td>
												<td width="246">
													<xsl:choose>
														<xsl:when test="count( Model/BrandName )">
															<xsl:for-each select="Model">
																<xsl:for-each select="BrandName">
																	<xsl:apply-templates/>
																</xsl:for-each>
															</xsl:for-each>
														</xsl:when>
														<xsl:otherwise>
															<span>
																<xsl:text>N/A</xsl:text>
															</span>
														</xsl:otherwise>
													</xsl:choose>
												</td>
												<td style="text-align:right; ">
													<xsl:choose>
														<xsl:when test="count( Speed )">
															<xsl:for-each select="Speed">
																<xsl:apply-templates/>
															</xsl:for-each>
															<span>
																<xsl:text> MHz</xsl:text>
															</span>
														</xsl:when>
														<xsl:otherwise>
															<span>
																<xsl:text>N/A</xsl:text>
															</span>
														</xsl:otherwise>
													</xsl:choose>
												</td>
												<td style="text-align:center; " align="center">
													<xsl:choose>
														<xsl:when test="count (QPISpeed)">
															<xsl:for-each select="QPISpeed">
																<xsl:apply-templates/>
															</xsl:for-each>
															<span>
																<xsl:text> MT</xsl:text>
															</span>
														</xsl:when>
														<xsl:otherwise>
															<span>
																<xsl:text>N/A</xsl:text>
															</span>
														</xsl:otherwise>
													</xsl:choose>
												</td>
												<td style="text-align:center; ">
													<xsl:choose>
														<xsl:when test="count( CoreNumber )">
															<xsl:for-each select="CoreNumber">
																<xsl:apply-templates/>
															</xsl:for-each>
														</xsl:when>
														<xsl:otherwise>
															<span>
																<xsl:text>N/A</xsl:text>
															</span>
														</xsl:otherwise>
													</xsl:choose>
												</td>
												<td style="text-align:center; ">
													<xsl:choose>
														<xsl:when test="count(CoresEnabled)">
															<xsl:for-each select="CoresEnabled">
																<xsl:apply-templates/>
															</xsl:for-each>
														</xsl:when>
														<xsl:otherwise>
															<span>
																<xsl:text>N/A</xsl:text>
															</span>
														</xsl:otherwise>
													</xsl:choose>
												</td>
												<td style="text-align:center; ">
													<xsl:choose>
														<xsl:when test="count( LogicalCpuNumber )">
															<xsl:for-each select="LogicalCpuNumber">
																<xsl:apply-templates/>
															</xsl:for-each>
														</xsl:when>
														<xsl:otherwise>
															<span>
																<xsl:text>N/A</xsl:text>
															</span>
														</xsl:otherwise>
													</xsl:choose>
												</td>
												<td style="text-align:center; ">
													<xsl:choose>
														<xsl:when test="count (Level1CacheSize)">
															<xsl:for-each select="Level1CacheSize">
																<xsl:apply-templates/>
															</xsl:for-each>
															<span>
																<xsl:text> KByte</xsl:text>
															</span>
														</xsl:when>
														<xsl:otherwise>
															<span>
																<xsl:text>N/A</xsl:text>
															</span>
														</xsl:otherwise>
													</xsl:choose>
												</td>
												<td style="text-align:center; ">
													<xsl:choose>
														<xsl:when test="count (Level2CacheSize)">
															<xsl:for-each select="Level2CacheSize">
																<xsl:apply-templates/>
															</xsl:for-each>
															<span>
																<xsl:text> KByte</xsl:text>
															</span>
														</xsl:when>
														<xsl:otherwise>
															<span>
																<xsl:text>N/A</xsl:text>
															</span>
														</xsl:otherwise>
													</xsl:choose>
												</td>
												<td style="text-align:center; ">
													<xsl:choose>
														<xsl:when test="count (Level3CacheSize)">
															<xsl:for-each select="Level3CacheSize">
																<xsl:apply-templates/>
															</xsl:for-each>
															<span>
																<xsl:text> KByte</xsl:text>
															</span>
														</xsl:when>
														<xsl:otherwise>
															<span>
																<xsl:text>N/A</xsl:text>
															</span>
														</xsl:otherwise>
													</xsl:choose>
												</td>
											</tr>
										</xsl:for-each>
									</tbody>
								</table>
							</xsl:for-each>
						</xsl:for-each>
					</xsl:for-each>
					<br/>
					<br/>
					<h2>
						<a>
							<xsl:attribute name="name">
								<xsl:value-of select="&apos;System Voltages&apos;"/>
							</xsl:attribute>
							<span>
								<xsl:text>System Voltages</xsl:text>
							</span>
						</a>
					</h2>
					<xsl:choose>
						<xsl:when test="count(  Root/System/Voltages/Voltage  ) != 0">
							<table border="1" cellpadding="2" cellspacing="0">
								<xsl:variable name="altova:CurrContextGrid_39" select="."/>
								<thead style="font-weight:normal; text-align:center; ">
									<tr style="text-align:center; ">
										<th>
											<span>
												<xsl:text>Name</xsl:text>
											</span>
										</th>
										<th width="80">
											<span>
												<xsl:text>Status</xsl:text>
											</span>
										</th>
										<th>
											<span>
												<xsl:text>CSS</xsl:text>
											</span>
										</th>
										<th style="text-align:center; ">
											<span>
												<xsl:text>Current Value</xsl:text>
											</span>
										</th>
										<th style="text-align:center; ">
											<span>
												<xsl:text>Nominal Value </xsl:text>
											</span>
										</th>
										<th style="text-align:center; ">
											<span>
												<xsl:text>Maximum Value</xsl:text>
											</span>
										</th>
										<th style="text-align:center; ">
											<span>
												<xsl:text>Minimum Value</xsl:text>
											</span>
										</th>
									</tr>
								</thead>
								<tbody>
									<xsl:for-each select="Root">
										<xsl:for-each select="System">
											<xsl:for-each select="Voltages">
												<xsl:for-each select="Voltage">
													<tr>
														<td>
															<xsl:for-each select="@Name">
																<span>
																	<xsl:value-of select="string(.)"/>
																</span>
															</xsl:for-each>
														</td>
														<td align="center" width="80">
															<xsl:for-each select="Status">
																<xsl:apply-templates/>
															</xsl:for-each>
															<span>
																<xsl:text> (</xsl:text>
															</span>
															<xsl:for-each select="Status">
																<xsl:for-each select="@Description">
																	<span>
																		<xsl:value-of select="string(.)"/>
																	</span>
																</xsl:for-each>
															</xsl:for-each>
															<span>
																<xsl:text>)</xsl:text>
															</span>
														</td>
														<td align="center">
															<xsl:choose>
																<xsl:when test="boolean(  @CSS  )">
																	<xsl:for-each select="@CSS">
																		<span>
																			<xsl:value-of select="string(.)"/>
																		</span>
																	</xsl:for-each>
																</xsl:when>
																<xsl:when test="not (boolean(  @CSS  ) )">
																	<span>
																		<xsl:text>N/A</xsl:text>
																	</span>
																</xsl:when>
															</xsl:choose>
														</td>
														<td style="text-align:right; " align="center">
															<xsl:choose>
																<xsl:when test="count( CurrValue ) != 0">
																	<xsl:for-each select="CurrValue">
																		<xsl:apply-templates/>
																	</xsl:for-each>
																	<span>
																		<xsl:text>V</xsl:text>
																	</span>
																</xsl:when>
																<xsl:otherwise>
																	<span>
																		<xsl:text>N/A</xsl:text>
																	</span>
																</xsl:otherwise>
															</xsl:choose>
														</td>
														<td style="text-align:right; " align="center">
															<xsl:choose>
																<xsl:when test="count(  NomValue ) != 0">
																	<xsl:for-each select="NomValue">
																		<xsl:apply-templates/>
																	</xsl:for-each>
																	<span>
																		<xsl:text>V</xsl:text>
																	</span>
																</xsl:when>
																<xsl:otherwise>
																	<span>
																		<xsl:text>N/A</xsl:text>
																	</span>
																</xsl:otherwise>
															</xsl:choose>
														</td>
														<td style="text-align:right; " align="center">
															<xsl:choose>
																<xsl:when test="count( Thresholds/MaxValue )">
																	<xsl:for-each select="Thresholds">
																		<xsl:for-each select="MaxValue">
																			<xsl:apply-templates/>
																		</xsl:for-each>
																	</xsl:for-each>
																	<span>
																		<xsl:text> V</xsl:text>
																	</span>
																</xsl:when>
																<xsl:otherwise>
																	<span>
																		<xsl:text>N/A</xsl:text>
																	</span>
																</xsl:otherwise>
															</xsl:choose>
														</td>
														<td style="text-align:right; " align="center">
															<xsl:choose>
																<xsl:when test="count( Thresholds/MinValue )">
																	<xsl:for-each select="Thresholds">
																		<xsl:for-each select="MinValue">
																			<xsl:apply-templates/>
																		</xsl:for-each>
																	</xsl:for-each>
																	<span>
																		<xsl:text> V</xsl:text>
																	</span>
																</xsl:when>
																<xsl:otherwise>
																	<span>
																		<xsl:text>N/A</xsl:text>
																	</span>
																</xsl:otherwise>
															</xsl:choose>
														</td>
													</tr>
												</xsl:for-each>
											</xsl:for-each>
										</xsl:for-each>
									</xsl:for-each>
								</tbody>
							</table>
						</xsl:when>
						<xsl:otherwise>
							<span>
								<xsl:text>Not available!</xsl:text>
							</span>
						</xsl:otherwise>
					</xsl:choose>
					<br/>
					<h2>
						<a>
							<xsl:attribute name="name">
								<xsl:value-of select="&apos;System Fans&apos;"/>
							</xsl:attribute>
							<span>
								<xsl:text>System Fans</xsl:text>
							</span>
						</a>
					</h2>
					<xsl:choose>
						<xsl:when test="count(  Root/System/Fans/Fan  ) != 0">
							<span>
								<xsl:text>Installed system fans: </xsl:text>
							</span>
							<xsl:for-each select="Root">
								<xsl:for-each select="System">
									<xsl:for-each select="Fans">
										<xsl:for-each select="@Count">
											<span>
												<xsl:value-of select="string(.)"/>
											</span>
										</xsl:for-each>
									</xsl:for-each>
								</xsl:for-each>
							</xsl:for-each>
							<br/>
							<br/>
							<table border="1" cellpadding="2" cellspacing="0">
								<xsl:variable name="altova:CurrContextGrid_40" select="."/>
								<thead>
									<tr>
										<th>
											<span>
												<xsl:text>Name</xsl:text>
											</span>
										</th>
										<th width="80">
											<span>
												<xsl:text>Status</xsl:text>
											</span>
										</th>
										<th>
											<span>
												<xsl:text>CSS</xsl:text>
											</span>
										</th>
										<th style="text-align:center; ">
											<span>
												<xsl:text>Current </xsl:text>
											</span>
											<br/>
											<span>
												<xsl:text>Speed</xsl:text>
											</span>
										</th>
										<th style="text-align:center; ">
											<span>
												<xsl:text>Last measured </xsl:text>
											</span>
											<br/>
											<span>
												<xsl:text>Reference Speed</xsl:text>
											</span>
										</th>
										<th style="text-align:center; ">
											<span>
												<xsl:text>Nominal </xsl:text>
											</span>
											<br/>
											<span>
												<xsl:text>Reference Speed</xsl:text>
											</span>
										</th>
									</tr>
								</thead>
								<tbody>
									<xsl:for-each select="Root">
										<xsl:for-each select="System">
											<xsl:for-each select="Fans">
												<xsl:for-each select="Fan">
													<tr>
														<td>
															<xsl:for-each select="@Name">
																<span>
																	<xsl:value-of select="string(.)"/>
																</span>
															</xsl:for-each>
														</td>
														<td align="center" width="80">
															<xsl:for-each select="Status">
																<xsl:apply-templates/>
															</xsl:for-each>
															<span>
																<xsl:text> (</xsl:text>
															</span>
															<xsl:for-each select="Status">
																<xsl:for-each select="@Description">
																	<span>
																		<xsl:value-of select="string(.)"/>
																	</span>
																</xsl:for-each>
															</xsl:for-each>
															<span>
																<xsl:text>)</xsl:text>
															</span>
														</td>
														<td align="center">
															<xsl:choose>
																<xsl:when test="boolean( @CSS )">
																	<xsl:for-each select="@CSS">
																		<span>
																			<xsl:value-of select="string(.)"/>
																		</span>
																	</xsl:for-each>
																</xsl:when>
																<xsl:when test="not (boolean(  @CSS  ) )">
																	<span>
																		<xsl:text>N/A</xsl:text>
																	</span>
																</xsl:when>
															</xsl:choose>
														</td>
														<td style="text-align:right; " align="center">
															<xsl:for-each select="CurrSpeed">
																<xsl:apply-templates/>
															</xsl:for-each>
															<span>
																<xsl:text> rpm</xsl:text>
															</span>
														</td>
														<td style="text-align:right; " align="center">
															<xsl:for-each select="CurrMaxSpeed">
																<xsl:apply-templates/>
															</xsl:for-each>
															<span>
																<xsl:text> rpm</xsl:text>
															</span>
														</td>
														<td style="text-align:right; " align="center">
															<xsl:for-each select="NomMaxSpeed">
																<xsl:apply-templates/>
															</xsl:for-each>
															<span>
																<xsl:text> rpm</xsl:text>
															</span>
														</td>
													</tr>
												</xsl:for-each>
											</xsl:for-each>
										</xsl:for-each>
									</xsl:for-each>
								</tbody>
							</table>
						</xsl:when>
						<xsl:otherwise>
							<span>
								<xsl:text>Not available!</xsl:text>
							</span>
						</xsl:otherwise>
					</xsl:choose>
					<br/>
					<h2>
						<a>
							<xsl:attribute name="name">
								<xsl:value-of select="&apos;System Temperatures&apos;"/>
							</xsl:attribute>
							<span>
								<xsl:text>System Temperature Sensors</xsl:text>
							</span>
						</a>
					</h2>
					<xsl:choose>
						<xsl:when test="count(  Root/System/Temperatures/Temperature  )  != 0">
							<span>
								<xsl:text>Installed system temperature sensors: </xsl:text>
							</span>
							<xsl:for-each select="Root">
								<xsl:for-each select="System">
									<xsl:for-each select="Temperatures">
										<xsl:for-each select="@Count">
											<span>
												<xsl:value-of select="string(.)"/>
											</span>
										</xsl:for-each>
									</xsl:for-each>
								</xsl:for-each>
							</xsl:for-each>
							<br/>
							<br/>
							<table border="1" cellpadding="2" cellspacing="0">
								<xsl:variable name="altova:CurrContextGrid_41" select="."/>
								<thead style="font-weight:normal; ">
									<tr>
										<th>
											<span>
												<xsl:text>Name</xsl:text>
											</span>
										</th>
										<th>
											<span>
												<xsl:text>Status</xsl:text>
											</span>
										</th>
										<th style="text-align:center; ">
											<span>
												<xsl:text>Current Value</xsl:text>
											</span>
										</th>
										<th style="text-align:center; ">
											<span>
												<xsl:text>Warning Threshold</xsl:text>
											</span>
										</th>
										<th>
											<span>
												<xsl:text>Critical Threshold</xsl:text>
											</span>
										</th>
									</tr>
								</thead>
								<tbody>
									<xsl:for-each select="Root">
										<xsl:for-each select="System">
											<xsl:for-each select="Temperatures">
												<xsl:for-each select="Temperature">
													<tr>
														<td>
															<xsl:for-each select="@Name">
																<span>
																	<xsl:value-of select="string(.)"/>
																</span>
															</xsl:for-each>
														</td>
														<td align="center">
															<xsl:for-each select="Status">
																<xsl:apply-templates/>
															</xsl:for-each>
															<span>
																<xsl:text> (</xsl:text>
															</span>
															<xsl:for-each select="Status">
																<xsl:for-each select="@Description">
																	<span>
																		<xsl:value-of select="string(.)"/>
																	</span>
																</xsl:for-each>
															</xsl:for-each>
															<span>
																<xsl:text>)</xsl:text>
															</span>
														</td>
														<td style="text-align:right; " align="center">
															<xsl:choose>
																<xsl:when test="count( CurrValue ) != 0">
																	<xsl:for-each select="CurrValue">
																		<xsl:apply-templates/>
																	</xsl:for-each>
																	<span>
																		<xsl:text> °C</xsl:text>
																	</span>
																</xsl:when>
																<xsl:otherwise>
																	<span>
																		<xsl:text>N/A</xsl:text>
																	</span>
																</xsl:otherwise>
															</xsl:choose>
														</td>
														<td style="text-align:right; " align="center">
															<xsl:choose>
																<xsl:when test="count( WarningThreshold )">
																	<xsl:for-each select="WarningThreshold">
																		<xsl:apply-templates/>
																	</xsl:for-each>
																	<span>
																		<xsl:text> °C</xsl:text>
																	</span>
																</xsl:when>
																<xsl:otherwise>
																	<span>
																		<xsl:text>N/A</xsl:text>
																	</span>
																</xsl:otherwise>
															</xsl:choose>
														</td>
														<td style="text-align:right; ">
															<xsl:choose>
																<xsl:when test="count( CriticalThreshold )">
																	<xsl:for-each select="CriticalThreshold">
																		<xsl:apply-templates/>
																	</xsl:for-each>
																	<span>
																		<xsl:text> °C</xsl:text>
																	</span>
																</xsl:when>
																<xsl:otherwise>
																	<span>
																		<xsl:text>N/A</xsl:text>
																	</span>
																</xsl:otherwise>
															</xsl:choose>
														</td>
													</tr>
												</xsl:for-each>
											</xsl:for-each>
										</xsl:for-each>
									</xsl:for-each>
								</tbody>
							</table>
						</xsl:when>
						<xsl:otherwise>
							<span>
								<xsl:text>Not available!</xsl:text>
							</span>
						</xsl:otherwise>
					</xsl:choose>
					<br/>
					<br/>
					<h2>
						<a>
							<xsl:attribute name="name">
								<xsl:value-of select="&apos;System Power Supplies&apos;"/>
							</xsl:attribute>
							<span>
								<xsl:text>System Power Supplies</xsl:text>
							</span>
						</a>
					</h2>
					<xsl:choose>
						<xsl:when test="count (Root/System/PowerSupplies/PowerSupply) != 0">
							<span>
								<xsl:text>Installed system power supplies: </xsl:text>
							</span>
							<xsl:for-each select="Root">
								<xsl:for-each select="System">
									<xsl:for-each select="PowerSupplies">
										<xsl:for-each select="@Count">
											<span>
												<xsl:value-of select="string(.)"/>
											</span>
										</xsl:for-each>
									</xsl:for-each>
								</xsl:for-each>
							</xsl:for-each>
							<br/>
							<br/>
							<table border="1" cellpadding="2" cellspacing="0">
								<xsl:variable name="altova:CurrContextGrid_42" select="."/>
								<thead>
									<tr>
										<th>
											<span>
												<xsl:text>Name</xsl:text>
											</span>
										</th>
										<th>
											<span>
												<xsl:text>Status</xsl:text>
											</span>
										</th>
										<th>
											<span>
												<xsl:text>Load (W)</xsl:text>
											</span>
										</th>
									</tr>
								</thead>
								<tbody>
									<xsl:for-each select="Root">
										<xsl:for-each select="System">
											<xsl:for-each select="PowerSupplies">
												<xsl:for-each select="PowerSupply">
													<tr>
														<td>
															<xsl:for-each select="@Name">
																<span>
																	<xsl:value-of select="string(.)"/>
																</span>
															</xsl:for-each>
														</td>
														<td>
															<xsl:for-each select="Status">
																<xsl:apply-templates/>
															</xsl:for-each>
															<span>
																<xsl:text> (</xsl:text>
															</span>
															<xsl:for-each select="Status">
																<xsl:for-each select="@Description">
																	<span>
																		<xsl:value-of select="string(.)"/>
																	</span>
																</xsl:for-each>
															</xsl:for-each>
															<span>
																<xsl:text>)</xsl:text>
															</span>
														</td>
														<td style="text-align:center; ">
															<xsl:choose>
																<xsl:when test="count (Load) != 0">
																	<xsl:for-each select="Load">
																		<xsl:apply-templates/>
																	</xsl:for-each>
																</xsl:when>
																<xsl:otherwise>
																	<span>
																		<xsl:text>N/A</xsl:text>
																	</span>
																</xsl:otherwise>
															</xsl:choose>
														</td>
													</tr>
												</xsl:for-each>
											</xsl:for-each>
										</xsl:for-each>
									</xsl:for-each>
								</tbody>
							</table>
						</xsl:when>
						<xsl:otherwise>
							<span>
								<xsl:text>Not available!</xsl:text>
							</span>
						</xsl:otherwise>
					</xsl:choose>
					<br/>
					<br/>
					<h2>
						<a>
							<xsl:attribute name="name">
								<xsl:value-of select="&apos;System Memory&apos;"/>
							</xsl:attribute>
							<span>
								<xsl:text>System Memory Modules</xsl:text>
							</span>
						</a>
					</h2>
					<table border="0" class="TableWithoutBorder" width="100%">
						<xsl:variable name="altova:CurrContextGrid_43" select="."/>
						<tbody>
							<tr>
								<td width="140">
									<span>
										<xsl:text>Installed memory size:</xsl:text>
									</span>
								</td>
								<td width="643">
									<xsl:for-each select="Root">
										<xsl:for-each select="System">
											<xsl:for-each select="Memory">
												<xsl:for-each select="Installed">
													<xsl:apply-templates/>
												</xsl:for-each>
											</xsl:for-each>
										</xsl:for-each>
									</xsl:for-each>
									<span>
										<xsl:text> MByte</xsl:text>
									</span>
								</td>
							</tr>
							<tr>
								<td width="140">
									<span>
										<xsl:text>Visible by OS:</xsl:text>
									</span>
								</td>
								<td width="643">
									<xsl:for-each select="Root">
										<xsl:for-each select="System">
											<xsl:for-each select="Memory">
												<xsl:for-each select="OSAvailable">
													<xsl:apply-templates/>
												</xsl:for-each>
											</xsl:for-each>
										</xsl:for-each>
									</xsl:for-each>
									<span>
										<xsl:text> MByte</xsl:text>
									</span>
								</td>
							</tr>
						</tbody>
					</table>
					<br/>
					<xsl:choose>
						<xsl:when test="count(  Root/System/Memory/Modules  ) != 0">
							<span>
								<xsl:text>Number of memory sockets: </xsl:text>
							</span>
							<xsl:for-each select="Root">
								<xsl:for-each select="System">
									<xsl:for-each select="Memory">
										<xsl:for-each select="Modules">
											<xsl:for-each select="@Count">
												<span>
													<xsl:value-of select="string(.)"/>
												</span>
											</xsl:for-each>
										</xsl:for-each>
									</xsl:for-each>
								</xsl:for-each>
							</xsl:for-each>
							<br/>
							<br/>
							<table border="1" cellpadding="2" cellspacing="0">
								<xsl:variable name="altova:CurrContextGrid_44" select="."/>
								<thead>
									<tr>
										<th rowspan="2">
											<span>
												<xsl:text>Socket</xsl:text>
											</span>
										</th>
										<th rowspan="2" width="80">
											<span>
												<xsl:text>Status</xsl:text>
											</span>
										</th>
										<th rowspan="2">
											<span>
												<xsl:text>Configuration Status</xsl:text>
											</span>
										</th>
										<th rowspan="2">
											<span>
												<xsl:text>CSS</xsl:text>
											</span>
										</th>
										<th rowspan="2" width="94">
											<span>
												<xsl:text>Approved</xsl:text>
											</span>
										</th>
										<th rowspan="2">
											<span>
												<xsl:text>Bank</xsl:text>
											</span>
										</th>
										<th rowspan="2">
											<span>
												<xsl:text>Size (MByte)</xsl:text>
											</span>
										</th>
										<th rowspan="2" style="text-align:center; ">
											<span>
												<xsl:text>Type</xsl:text>
											</span>
										</th>
										<th rowspan="2">
											<span>
												<xsl:text>Current Frequency</xsl:text>
											</span>
										</th>
										<th colspan="9" style="text-align:center; " align="center" width="128">
											<span>
												<xsl:text>Serial Presence Detect Data (SPD-Data)</xsl:text>
											</span>
										</th>
									</tr>
									<tr>
										<th style="text-align:center; " align="center" width="128">
											<span>
												<xsl:text>Checksum</xsl:text>
											</span>
										</th>
										<th width="128">
											<span>
												<xsl:text>Type</xsl:text>
											</span>
										</th>
										<th width="128">
											<span>
												<xsl:text>Ranks</xsl:text>
											</span>
										</th>
										<th style="text-align:center; " width="128">
											<span>
												<xsl:text>Frequency</xsl:text>
											</span>
										</th>
										<th style="text-align:center; " width="128">
											<span>
												<xsl:text>Voltage</xsl:text>
											</span>
											<br/>
											<span>
												<xsl:text>Interface</xsl:text>
											</span>
										</th>
										<th style="text-align:center; " width="128">
											<span>
												<xsl:text>Vendor</xsl:text>
											</span>
										</th>
										<th style="text-align:center; ">
											<span>
												<xsl:text>Part Number</xsl:text>
											</span>
										</th>
										<th style="text-align:center; ">
											<span>
												<xsl:text>Manufacturing Date</xsl:text>
											</span>
										</th>
										<th>
											<span>
												<xsl:text>Serial Number</xsl:text>
											</span>
										</th>
									</tr>
								</thead>
								<tbody>
									<xsl:for-each select="Root">
										<xsl:for-each select="System">
											<xsl:for-each select="Memory">
												<xsl:for-each select="Modules">
													<xsl:for-each select="Module">
														<tr>
															<td align="left">
																<xsl:for-each select="@Name">
																	<span>
																		<xsl:value-of select="string(.)"/>
																	</span>
																</xsl:for-each>
															</td>
															<td align="center" width="80">
																<xsl:for-each select="Status">
																	<xsl:apply-templates/>
																</xsl:for-each>
																<span>
																	<xsl:text> (</xsl:text>
																</span>
																<xsl:for-each select="Status">
																	<xsl:for-each select="@Description">
																		<span>
																			<xsl:value-of select="string(.)"/>
																		</span>
																	</xsl:for-each>
																</xsl:for-each>
																<span>
																	<xsl:text>)</xsl:text>
																</span>
															</td>
															<td style="text-align:center; ">
																<xsl:choose>
																	<xsl:when test="count (ConfigStatus) != 0">
																		<xsl:for-each select="ConfigStatus">
																			<xsl:apply-templates/>
																		</xsl:for-each>
																		<span>
																			<xsl:text> (</xsl:text>
																		</span>
																		<xsl:for-each select="ConfigStatus">
																			<xsl:for-each select="@Description">
																				<span>
																					<xsl:value-of select="string(.)"/>
																				</span>
																			</xsl:for-each>
																		</xsl:for-each>
																		<span>
																			<xsl:text>)</xsl:text>
																		</span>
																	</xsl:when>
																	<xsl:otherwise>
																		<span>
																			<xsl:text>N/A</xsl:text>
																		</span>
																	</xsl:otherwise>
																</xsl:choose>
															</td>
															<td align="center">
																<xsl:choose>
																	<xsl:when test="boolean( @CSS )">
																		<xsl:for-each select="@CSS">
																			<span>
																				<xsl:value-of select="string(.)"/>
																			</span>
																		</xsl:for-each>
																	</xsl:when>
																	<xsl:when test="not (boolean( @CSS ))">
																		<span>
																			<xsl:text>N/A</xsl:text>
																		</span>
																	</xsl:when>
																</xsl:choose>
															</td>
															<td align="center" width="94">
																<xsl:choose>
																	<xsl:when test="count(  Approved  )  != 0">
																		<xsl:for-each select="Approved">
																			<xsl:apply-templates/>
																		</xsl:for-each>
																	</xsl:when>
																	<xsl:when test="count(  Approved )  = 0">
																		<span>
																			<xsl:text>N/A</xsl:text>
																		</span>
																	</xsl:when>
																</xsl:choose>
															</td>
															<td align="center">
																<xsl:choose>
																	<xsl:when test="count( Bank ) = 0">
																		<span>
																			<xsl:text>N/A</xsl:text>
																		</span>
																	</xsl:when>
																	<xsl:when test="count( Bank )  != 0">
																		<xsl:for-each select="Bank">
																			<xsl:apply-templates/>
																		</xsl:for-each>
																	</xsl:when>
																</xsl:choose>
															</td>
															<td align="center">
																<xsl:choose>
																	<xsl:when test="count( Type )  != 0">
																		<xsl:for-each select="Size">
																			<xsl:apply-templates/>
																		</xsl:for-each>
																	</xsl:when>
																	<xsl:when test="count( Size )  = 0">
																		<span>
																			<xsl:text>N/A</xsl:text>
																		</span>
																	</xsl:when>
																</xsl:choose>
															</td>
															<td style="text-align:center; " align="center">
																<xsl:choose>
																	<xsl:when test="count(  Type )">
																		<xsl:for-each select="Type">
																			<xsl:apply-templates/>
																		</xsl:for-each>
																	</xsl:when>
																	<xsl:otherwise>
																		<span>
																			<xsl:text>N/A</xsl:text>
																		</span>
																	</xsl:otherwise>
																</xsl:choose>
															</td>
															<td align="center">
																<xsl:choose>
																	<xsl:when test="count(  BusFrequency  )">
																		<xsl:for-each select="BusFrequency">
																			<xsl:apply-templates/>
																		</xsl:for-each>
																		<span>
																			<xsl:text>&#160;</xsl:text>
																		</span>
																		<xsl:for-each select="BusFrequency">
																			<xsl:for-each select="@Unit">
																				<span>
																					<xsl:value-of select="string(.)"/>
																				</span>
																			</xsl:for-each>
																		</xsl:for-each>
																	</xsl:when>
																	<xsl:otherwise>
																		<span>
																			<xsl:text>N/A</xsl:text>
																		</span>
																	</xsl:otherwise>
																</xsl:choose>
															</td>
															<td align="center" width="128">
																<xsl:choose>
																	<xsl:when test="count( SPD/Checksum )">
																		<xsl:choose>
																			<xsl:when test="SPD/@Checksum">
																				<span>
																					<xsl:text>OK</xsl:text>
																				</span>
																			</xsl:when>
																			<xsl:otherwise>
																				<span style="color:red; ">
																					<xsl:text>ERROR</xsl:text>
																				</span>
																			</xsl:otherwise>
																		</xsl:choose>
																	</xsl:when>
																	<xsl:otherwise>
																		<span>
																			<xsl:text>N/A</xsl:text>
																		</span>
																	</xsl:otherwise>
																</xsl:choose>
															</td>
															<td style="text-align:center; " width="128">
																<xsl:choose>
																	<xsl:when test="count(  SPD/BusFrequency  )">
																		<xsl:for-each select="SPD">
																			<xsl:for-each select="DeviceType">
																				<xsl:apply-templates/>
																			</xsl:for-each>
																		</xsl:for-each>
																		<span>
																			<xsl:text> - </xsl:text>
																		</span>
																		<xsl:for-each select="SPD">
																			<xsl:for-each select="ModuleType">
																				<xsl:apply-templates/>
																			</xsl:for-each>
																		</xsl:for-each>
																		<span>
																			<xsl:text>&#160;</xsl:text>
																		</span>
																	</xsl:when>
																	<xsl:otherwise>
																		<span>
																			<xsl:text>N/A</xsl:text>
																		</span>
																	</xsl:otherwise>
																</xsl:choose>
															</td>
															<td style="text-align:center; " width="128">
																<xsl:choose>
																	<xsl:when test="count(  SPD/BusFrequency  )">
																		<xsl:for-each select="SPD">
																			<xsl:for-each select="NumberRanks">
																				<xsl:apply-templates/>
																			</xsl:for-each>
																		</xsl:for-each>
																		<span>
																			<xsl:text>&#160;</xsl:text>
																		</span>
																	</xsl:when>
																	<xsl:otherwise>
																		<span>
																			<xsl:text>N/A</xsl:text>
																		</span>
																	</xsl:otherwise>
																</xsl:choose>
															</td>
															<td style="text-align:center; " align="center" width="128">
																<xsl:choose>
																	<xsl:when test="count(  SPD/BusFrequency  )">
																		<xsl:for-each select="SPD">
																			<xsl:for-each select="BusFrequency">
																				<xsl:apply-templates/>
																			</xsl:for-each>
																		</xsl:for-each>
																		<span>
																			<xsl:text>&#160;</xsl:text>
																		</span>
																		<xsl:for-each select="SPD">
																			<xsl:for-each select="BusFrequency">
																				<xsl:for-each select="@Unit">
																					<span>
																						<xsl:value-of select="string(.)"/>
																					</span>
																				</xsl:for-each>
																			</xsl:for-each>
																		</xsl:for-each>
																	</xsl:when>
																	<xsl:otherwise>
																		<span>
																			<xsl:text>N/A</xsl:text>
																		</span>
																	</xsl:otherwise>
																</xsl:choose>
															</td>
															<td style="text-align:center; " align="center" width="128">
																<xsl:choose>
																	<xsl:when test="count(  SPD/VoltageInterface  )">
																		<xsl:for-each select="SPD">
																			<xsl:for-each select="VoltageInterface">
																				<xsl:apply-templates/>
																			</xsl:for-each>
																		</xsl:for-each>
																	</xsl:when>
																	<xsl:otherwise>
																		<span>
																			<xsl:text>N/A</xsl:text>
																		</span>
																	</xsl:otherwise>
																</xsl:choose>
															</td>
															<td style="text-align:center; " align="center" width="128">
																<xsl:choose>
																	<xsl:when test="count(   SPD/ModuleManufacturer  ) != 0">
																		<xsl:for-each select="SPD">
																			<xsl:for-each select="ModuleManufacturer">
																				<xsl:apply-templates/>
																			</xsl:for-each>
																		</xsl:for-each>
																	</xsl:when>
																	<xsl:otherwise>
																		<span>
																			<xsl:text>N/A</xsl:text>
																		</span>
																	</xsl:otherwise>
																</xsl:choose>
															</td>
															<td style="text-align:center; " align="center">
																<xsl:choose>
																	<xsl:when test="count(  SPD/ModulePartNumber  )  != 0">
																		<xsl:for-each select="SPD">
																			<xsl:for-each select="ModulePartNumber">
																				<xsl:apply-templates/>
																			</xsl:for-each>
																		</xsl:for-each>
																	</xsl:when>
																	<xsl:otherwise>
																		<span>
																			<xsl:text>N/A</xsl:text>
																		</span>
																	</xsl:otherwise>
																</xsl:choose>
															</td>
															<td style="text-align:center; " align="center">
																<xsl:choose>
																	<xsl:when test="count(  SPD/ModuleManufacturingDate  ) != 0">
																		<xsl:for-each select="SPD">
																			<xsl:for-each select="ModuleManufacturingDate">
																				<xsl:apply-templates/>
																			</xsl:for-each>
																		</xsl:for-each>
																	</xsl:when>
																	<xsl:otherwise>
																		<span>
																			<xsl:text>N/A</xsl:text>
																		</span>
																	</xsl:otherwise>
																</xsl:choose>
															</td>
															<td style="text-align:center; ">
																<xsl:choose>
																	<xsl:when test="count(  SPD/ModuleManufacturingDate  ) != 0">
																		<xsl:for-each select="SPD">
																			<xsl:for-each select="ModuleSerialNumber">
																				<xsl:for-each select="@AsString">
																					<span>
																						<xsl:value-of select="string(.)"/>
																					</span>
																				</xsl:for-each>
																			</xsl:for-each>
																		</xsl:for-each>
																	</xsl:when>
																	<xsl:otherwise>
																		<span>
																			<xsl:text>N/A</xsl:text>
																		</span>
																	</xsl:otherwise>
																</xsl:choose>
															</td>
														</tr>
													</xsl:for-each>
												</xsl:for-each>
											</xsl:for-each>
										</xsl:for-each>
									</xsl:for-each>
								</tbody>
							</table>
						</xsl:when>
						<xsl:otherwise>
							<span>
								<xsl:text>No installed memory modules found!</xsl:text>
							</span>
						</xsl:otherwise>
					</xsl:choose>
					<br/>
					<xsl:if test="count (Root/Network)">
						<h2>
							<a>
								<xsl:attribute name="name">
									<xsl:value-of select="&apos;System Network&apos;"/>
								</xsl:attribute>
								<span>
									<xsl:text>System Network</xsl:text>
								</span>
							</a>
						</h2>
						<h4>
							<span>
								<xsl:text>Installed network adapters</xsl:text>
							</span>
						</h4>
						<xsl:for-each select="Root">
							<xsl:for-each select="Network">
								<xsl:for-each select="Adapters">
									<table border="1" cellpadding="2" cellspacing="0">
										<xsl:variable name="altova:CurrContextGrid_45" select="."/>
										<thead>
											<tr>
												<th>
													<span>
														<xsl:text>Description</xsl:text>
													</span>
												</th>
												<th style="text-align:center; " align="center">
													<span>
														<xsl:text>MAC Address</xsl:text>
													</span>
												</th>
												<th align="center">
													<span>
														<xsl:text>Type</xsl:text>
													</span>
												</th>
												<th align="center">
													<span>
														<xsl:text>Connection Name</xsl:text>
													</span>
												</th>
												<th align="center">
													<span>
														<xsl:text>DHCP</xsl:text>
													</span>
												</th>
											</tr>
										</thead>
										<tbody>
											<xsl:for-each select="Adapter">
												<tr>
													<td>
														<xsl:for-each select="Description">
															<xsl:apply-templates/>
														</xsl:for-each>
													</td>
													<td style="text-align:right; " align="center">
														<xsl:choose>
															<xsl:when test="count(  MACAddress ) != 0">
																<xsl:for-each select="MACAddress">
																	<xsl:apply-templates/>
																</xsl:for-each>
															</xsl:when>
															<xsl:otherwise>
																<span>
																	<xsl:text>N/A</xsl:text>
																</span>
															</xsl:otherwise>
														</xsl:choose>
													</td>
													<td align="center">
														<xsl:for-each select="Type">
															<xsl:apply-templates/>
														</xsl:for-each>
													</td>
													<td align="center">
														<xsl:for-each select="ConnectionName">
															<xsl:apply-templates/>
														</xsl:for-each>
													</td>
													<td align="center">
														<xsl:for-each select="DHCP">
															<xsl:apply-templates/>
														</xsl:for-each>
													</td>
												</tr>
											</xsl:for-each>
										</tbody>
									</table>
								</xsl:for-each>
							</xsl:for-each>
						</xsl:for-each>
						<br/>
						<h4>
							<span>
								<xsl:text>Available network interfaces</xsl:text>
							</span>
						</h4>
						<xsl:for-each select="Root">
							<xsl:for-each select="Network">
								<xsl:for-each select="Interfaces">
									<table border="1" cellpadding="2" cellspacing="0">
										<xsl:variable name="altova:CurrContextGrid_46" select="."/>
										<thead>
											<tr>
												<th>
													<span>
														<xsl:text>IPv4 Index</xsl:text>
													</span>
												</th>
												<th>
													<span>
														<xsl:text>IPv6 Index</xsl:text>
													</span>
												</th>
												<th>
													<span>
														<xsl:text>Interface Description</xsl:text>
													</span>
												</th>
												<th style="text-align:center; " align="center">
													<span>
														<xsl:text>MAC Address</xsl:text>
													</span>
												</th>
												<th style="text-align:center; " align="center">
													<span>
														<xsl:text>Speed</xsl:text>
													</span>
												</th>
											</tr>
										</thead>
										<tbody>
											<xsl:for-each select="Interface">
												<tr>
													<td>
														<xsl:choose>
															<xsl:when test="@IfIndexV4 != 0">
																<xsl:for-each select="@IfIndexV4">
																	<span>
																		<xsl:value-of select="string(.)"/>
																	</span>
																</xsl:for-each>
															</xsl:when>
															<xsl:otherwise>
																<span>
																	<xsl:text>N/A</xsl:text>
																</span>
															</xsl:otherwise>
														</xsl:choose>
													</td>
													<td>
														<xsl:choose>
															<xsl:when test="@IfIndexV6 != 0">
																<xsl:for-each select="@IfIndexV6">
																	<span>
																		<xsl:value-of select="string(.)"/>
																	</span>
																</xsl:for-each>
															</xsl:when>
															<xsl:otherwise>
																<span>
																	<xsl:text>N/A</xsl:text>
																</span>
															</xsl:otherwise>
														</xsl:choose>
													</td>
													<td>
														<xsl:for-each select="Description">
															<xsl:apply-templates/>
														</xsl:for-each>
													</td>
													<td style="text-align:right; " align="center">
														<xsl:choose>
															<xsl:when test="count( MACAddress ) != 0">
																<xsl:for-each select="MACAddress">
																	<xsl:apply-templates/>
																</xsl:for-each>
															</xsl:when>
															<xsl:otherwise>
																<span>
																	<xsl:text>N/A</xsl:text>
																</span>
															</xsl:otherwise>
														</xsl:choose>
													</td>
													<td style="text-align:right; " align="center">
														<xsl:choose>
															<xsl:when test="count( Speed )">
																<xsl:for-each select="Speed">
																	<xsl:apply-templates/>
																</xsl:for-each>
																<span>
																	<xsl:text> MBit/s</xsl:text>
																</span>
															</xsl:when>
															<xsl:otherwise>
																<span>
																	<xsl:text>N/A</xsl:text>
																</span>
															</xsl:otherwise>
														</xsl:choose>
													</td>
												</tr>
											</xsl:for-each>
										</tbody>
									</table>
								</xsl:for-each>
							</xsl:for-each>
						</xsl:for-each>
						<br/>
						<h4>
							<span>
								<xsl:text>IPv4 address configuration</xsl:text>
							</span>
						</h4>
						<xsl:for-each select="Root">
							<xsl:for-each select="Network">
								<xsl:for-each select="Interfaces">
									<table border="1" cellpadding="2" cellspacing="0">
										<xsl:variable name="altova:CurrContextGrid_47" select="."/>
										<thead>
											<tr>
												<th>
													<span>
														<xsl:text>IPv4 Index</xsl:text>
													</span>
												</th>
												<th>
													<span>
														<xsl:text>Interface Description</xsl:text>
													</span>
												</th>
												<th style="text-align:center; " align="center">
													<span>
														<xsl:text>MAC Address</xsl:text>
													</span>
												</th>
												<th align="center">
													<span>
														<xsl:text>IPv4 Address Configuration</xsl:text>
													</span>
												</th>
											</tr>
										</thead>
										<tbody>
											<xsl:for-each select="Interface">
												<tr>
													<td>
														<xsl:choose>
															<xsl:when test="@IfIndexV4 != 0">
																<xsl:for-each select="@IfIndexV4">
																	<span>
																		<xsl:value-of select="string(.)"/>
																	</span>
																</xsl:for-each>
															</xsl:when>
															<xsl:otherwise>
																<span>
																	<xsl:text>N/A</xsl:text>
																</span>
															</xsl:otherwise>
														</xsl:choose>
													</td>
													<td>
														<xsl:for-each select="Description">
															<xsl:apply-templates/>
														</xsl:for-each>
													</td>
													<td style="text-align:right; " align="center">
														<xsl:choose>
															<xsl:when test="count( MACAddress ) != 0">
																<xsl:for-each select="MACAddress">
																	<xsl:apply-templates/>
																</xsl:for-each>
															</xsl:when>
															<xsl:otherwise>
																<span>
																	<xsl:text>N/A</xsl:text>
																</span>
															</xsl:otherwise>
														</xsl:choose>
													</td>
													<td>
														<xsl:for-each select="IPConfig">
															<table border="0" cellpadding="0" cellspacing="0">
																<xsl:variable name="altova:CurrContextGrid_48" select="."/>
																<tbody>
																	<xsl:for-each select="Entry">
																		<tr>
																			<td width="100">
																				<span>
																					<xsl:text>IP Address: </xsl:text>
																				</span>
																				<br/>
																				<xsl:for-each select="IPAddress">
																					<xsl:apply-templates/>
																				</xsl:for-each>
																			</td>
																			<td width="100">
																				<span>
																					<xsl:text>Address Type: </xsl:text>
																				</span>
																				<xsl:for-each select="IPAddressType">
																					<xsl:apply-templates/>
																				</xsl:for-each>
																			</td>
																			<td width="100">
																				<span>
																					<xsl:text>Subnet Mask: </xsl:text>
																				</span>
																				<xsl:for-each select="IPSubnetMask">
																					<xsl:apply-templates/>
																				</xsl:for-each>
																			</td>
																			<td width="100">
																				<span>
																					<xsl:text>Gateway: </xsl:text>
																				</span>
																				<xsl:for-each select="IPGateway">
																					<xsl:apply-templates/>
																				</xsl:for-each>
																			</td>
																		</tr>
																	</xsl:for-each>
																</tbody>
															</table>
														</xsl:for-each>
													</td>
												</tr>
											</xsl:for-each>
										</tbody>
									</table>
								</xsl:for-each>
							</xsl:for-each>
						</xsl:for-each>
						<br/>
						<h4>
							<span>
								<xsl:text>IPv6 address configuration</xsl:text>
							</span>
						</h4>
						<xsl:choose>
							<xsl:when test="count( Root/Network/Interfaces/Interface/IPV6Config/Addresses )">
								<table border="1" cellpadding="2" cellspacing="0">
									<xsl:variable name="altova:CurrContextGrid_49" select="."/>
									<thead>
										<tr>
											<th>
												<span>
													<xsl:text>IPv6 Index</xsl:text>
												</span>
											</th>
											<th>
												<span>
													<xsl:text>Interface Description</xsl:text>
												</span>
											</th>
											<th style="text-align:center; ">
												<span>
													<xsl:text>MAC Address</xsl:text>
												</span>
											</th>
											<th align="center">
												<span>
													<xsl:text>IPv6 Address Configuration</xsl:text>
												</span>
											</th>
										</tr>
									</thead>
									<tbody>
										<xsl:for-each select="Root">
											<xsl:for-each select="Network">
												<xsl:for-each select="Interfaces">
													<xsl:for-each select="Interface">
														<tr>
															<td>
																<xsl:choose>
																	<xsl:when test="@IfIndexV6 != 0">
																		<xsl:for-each select="@IfIndexV6">
																			<span>
																				<xsl:value-of select="string(.)"/>
																			</span>
																		</xsl:for-each>
																	</xsl:when>
																	<xsl:otherwise>
																		<span>
																			<xsl:text>N/A</xsl:text>
																		</span>
																	</xsl:otherwise>
																</xsl:choose>
															</td>
															<td>
																<xsl:for-each select="Description">
																	<xsl:apply-templates/>
																</xsl:for-each>
															</td>
															<td style="text-align:right; ">
																<xsl:choose>
																	<xsl:when test="count (MACAddress )">
																		<xsl:for-each select="MACAddress">
																			<xsl:apply-templates/>
																		</xsl:for-each>
																	</xsl:when>
																	<xsl:otherwise>
																		<span>
																			<xsl:text>N/A</xsl:text>
																		</span>
																	</xsl:otherwise>
																</xsl:choose>
															</td>
															<td>
																<xsl:if test="count (   IPV6Config/Addresses )">
																	<xsl:choose>
																		<xsl:when test="count(IPV6Config/Addresses/Address )">
																			<table border="1" cellpadding="2" cellspacing="0">
																				<xsl:variable name="altova:CurrContextGrid_50" select="."/>
																				<thead>
																					<tr>
																						<th width="180">
																							<span>
																								<xsl:text>Unicast IP Address</xsl:text>
																							</span>
																						</th>
																						<th style="text-align:center; ">
																							<span>
																								<xsl:text>Address Type</xsl:text>
																							</span>
																						</th>
																					</tr>
																				</thead>
																				<tbody>
																					<xsl:for-each select="IPV6Config">
																						<xsl:for-each select="Addresses">
																							<xsl:for-each select="Address">
																								<tr>
																									<td width="180">
																										<xsl:for-each select="Unicast">
																											<xsl:apply-templates/>
																										</xsl:for-each>
																									</td>
																									<td style="text-align:center; ">
																										<xsl:choose>
																											<xsl:when test="count (Type ) != 0">
																												<xsl:for-each select="Type">
																													<xsl:apply-templates/>
																												</xsl:for-each>
																											</xsl:when>
																											<xsl:otherwise>
																												<span>
																													<xsl:text>&#160;</xsl:text>
																												</span>
																											</xsl:otherwise>
																										</xsl:choose>
																									</td>
																								</tr>
																							</xsl:for-each>
																						</xsl:for-each>
																					</xsl:for-each>
																				</tbody>
																			</table>
																		</xsl:when>
																		<xsl:otherwise>
																			<span style="text-align:center; ">
																				<xsl:text>No IPv6 addresses configured</xsl:text>
																			</span>
																		</xsl:otherwise>
																	</xsl:choose>
																	<xsl:if test="count (IPV6Config/Gateways/Gateway )">
																		<table border="1" cellpadding="2" cellspacing="0">
																			<xsl:variable name="altova:CurrContextGrid_51" select="."/>
																			<thead>
																				<tr>
																					<th width="180">
																						<span>
																							<xsl:text>Gateway IP Address</xsl:text>
																						</span>
																					</th>
																				</tr>
																			</thead>
																			<tbody>
																				<xsl:for-each select="IPV6Config">
																					<xsl:for-each select="Gateways">
																						<xsl:for-each select="Gateway">
																							<tr>
																								<td width="180">
																									<xsl:for-each select="Address">
																										<xsl:apply-templates/>
																									</xsl:for-each>
																								</td>
																							</tr>
																						</xsl:for-each>
																					</xsl:for-each>
																				</xsl:for-each>
																			</tbody>
																		</table>
																	</xsl:if>
																</xsl:if>
															</td>
														</tr>
													</xsl:for-each>
												</xsl:for-each>
											</xsl:for-each>
										</xsl:for-each>
									</tbody>
								</table>
							</xsl:when>
							<xsl:otherwise>
								<span>
									<xsl:text>No IP V6 interfaces found!</xsl:text>
								</span>
							</xsl:otherwise>
						</xsl:choose>
					</xsl:if>
					<br/>
					<h2>
						<a>
							<xsl:attribute name="name">
								<xsl:value-of select="&apos;System Eventlog&apos;"/>
							</xsl:attribute>
							<span>
								<xsl:text>System Event Log (SEL)</xsl:text>
							</span>
						</a>
					</h2>
					<xsl:choose>
						<xsl:when test="count(  Root/System/SystemEventlog/Entry  )  != 0">
							<xsl:for-each select="Root">
								<xsl:for-each select="System">
									<xsl:for-each select="SystemEventlog">
										<table border="1" cellpadding="2" cellspacing="0">
											<xsl:variable name="altova:CurrContextGrid_52" select="."/>
											<thead>
												<tr>
													<th>
														<span>
															<xsl:text>Date</xsl:text>
														</span>
													</th>
													<th>
														<span>
															<xsl:text>Severity</xsl:text>
														</span>
													</th>
													<th style="text-align:center; ">
														<span>
															<xsl:text>Error Code</xsl:text>
														</span>
													</th>
													<th>
														<span>
															<xsl:text>Message</xsl:text>
														</span>
													</th>
													<th style="font-family:Courier New; ">
														<span>
															<xsl:text>Binary Data</xsl:text>
														</span>
													</th>
												</tr>
											</thead>
											<tbody>
												<xsl:for-each select="Entry">
													<tr>
														<td>
															<xsl:for-each select="Date">
																<xsl:apply-templates/>
															</xsl:for-each>
														</td>
														<td>
															<xsl:for-each select="Severity">
																<xsl:apply-templates/>
															</xsl:for-each>
														</td>
														<td style="text-align:center; ">
															<xsl:for-each select="ErrorCode">
																<xsl:apply-templates/>
															</xsl:for-each>
														</td>
														<td>
															<xsl:for-each select="Message">
																<xsl:apply-templates/>
															</xsl:for-each>
														</td>
														<td style="font-family:Courier New; ">
															<xsl:for-each select="Data">
																<xsl:for-each select="HexDump">
																	<xsl:for-each select="Line">
																		<xsl:for-each select="Hex">
																			<xsl:apply-templates/>
																		</xsl:for-each>
																	</xsl:for-each>
																</xsl:for-each>
															</xsl:for-each>
														</td>
													</tr>
												</xsl:for-each>
											</tbody>
										</table>
									</xsl:for-each>
								</xsl:for-each>
							</xsl:for-each>
						</xsl:when>
						<xsl:otherwise>
							<span>
								<xsl:text>Not available!</xsl:text>
							</span>
						</xsl:otherwise>
					</xsl:choose>
					<br/>
					<h2>
						<a>
							<xsl:attribute name="name">
								<xsl:value-of select="&apos;Internal Eventlog&apos;"/>
							</xsl:attribute>
							<span>
								<xsl:text>Internal Event Log (IEL)</xsl:text>
							</span>
						</a>
					</h2>
					<xsl:choose>
						<xsl:when test="count (Root/System/InternalEventlog/Entry) != 0">
							<table border="1" cellpadding="2" cellspacing="0">
								<xsl:variable name="altova:CurrContextGrid_53" select="."/>
								<thead>
									<tr>
										<th>
											<span>
												<xsl:text>Date</xsl:text>
											</span>
										</th>
										<th>
											<span>
												<xsl:text>Severity</xsl:text>
											</span>
										</th>
										<th align="center">
											<span>
												<xsl:text>Error Code</xsl:text>
											</span>
										</th>
										<th>
											<span>
												<xsl:text>Message</xsl:text>
											</span>
										</th>
									</tr>
								</thead>
								<tbody>
									<xsl:for-each select="Root">
										<xsl:for-each select="System">
											<xsl:for-each select="InternalEventlog">
												<xsl:for-each select="Entry">
													<tr>
														<td>
															<xsl:for-each select="Date">
																<xsl:apply-templates/>
															</xsl:for-each>
														</td>
														<td>
															<xsl:for-each select="Severity">
																<xsl:apply-templates/>
															</xsl:for-each>
														</td>
														<td align="center">
															<xsl:for-each select="ErrorCode">
																<xsl:apply-templates/>
															</xsl:for-each>
														</td>
														<td>
															<xsl:for-each select="Message">
																<xsl:apply-templates/>
															</xsl:for-each>
														</td>
													</tr>
												</xsl:for-each>
											</xsl:for-each>
										</xsl:for-each>
									</xsl:for-each>
								</tbody>
							</table>
						</xsl:when>
						<xsl:otherwise>
							<span>
								<xsl:text>Not available!</xsl:text>
							</span>
						</xsl:otherwise>
					</xsl:choose>
					<br/>
					<br/>
					<h2>
						<a>
							<xsl:attribute name="name">
								<xsl:value-of select="&apos;System Boot Status&apos;"/>
							</xsl:attribute>
							<span>
								<xsl:text>System Boot Status</xsl:text>
							</span>
						</a>
					</h2>
					<xsl:choose>
						<xsl:when test="count(Root/System/BootStatus)">
							<table border="0" class="TableWithoutBorder" width="100%">
								<xsl:variable name="altova:CurrContextGrid_54" select="."/>
								<tbody>
									<tr>
										<td width="160">
											<span>
												<xsl:text>Last Power On Reason:</xsl:text>
											</span>
										</td>
										<td>
											<xsl:choose>
												<xsl:when test="count(  Root/System/BootStatus/PowerOnReason/@AsString  )">
													<xsl:for-each select="Root">
														<xsl:for-each select="System">
															<xsl:for-each select="BootStatus">
																<xsl:for-each select="PowerOnReason">
																	<xsl:for-each select="@AsString">
																		<span>
																			<xsl:value-of select="string(.)"/>
																		</span>
																	</xsl:for-each>
																</xsl:for-each>
															</xsl:for-each>
														</xsl:for-each>
													</xsl:for-each>
												</xsl:when>
												<xsl:otherwise>
													<span>
														<xsl:text>N/A</xsl:text>
													</span>
												</xsl:otherwise>
											</xsl:choose>
											<xsl:if test="count(  Root/System/BootStatus/PowerOnReason  )">
												<span>
													<xsl:text> (</xsl:text>
												</span>
												<xsl:for-each select="Root">
													<xsl:for-each select="System">
														<xsl:for-each select="BootStatus">
															<xsl:for-each select="PowerOnReason">
																<xsl:apply-templates/>
															</xsl:for-each>
														</xsl:for-each>
													</xsl:for-each>
												</xsl:for-each>
												<span>
													<xsl:text>)</xsl:text>
												</span>
											</xsl:if>
										</td>
									</tr>
									<tr>
										<td width="160">
											<span>
												<xsl:text>Last Power Off Reason:</xsl:text>
											</span>
										</td>
										<td>
											<xsl:choose>
												<xsl:when test="count(  Root/System/BootStatus/PowerOffReason  )">
													<xsl:for-each select="Root">
														<xsl:for-each select="System">
															<xsl:for-each select="BootStatus">
																<xsl:for-each select="PowerOffReason">
																	<xsl:for-each select="@AsString">
																		<span>
																			<xsl:value-of select="string(.)"/>
																		</span>
																	</xsl:for-each>
																</xsl:for-each>
															</xsl:for-each>
														</xsl:for-each>
													</xsl:for-each>
												</xsl:when>
												<xsl:otherwise>
													<span>
														<xsl:text>N/A</xsl:text>
													</span>
												</xsl:otherwise>
											</xsl:choose>
											<xsl:if test="count(  Root/System/BootStatus/PowerOffReason  )">
												<span>
													<xsl:text> (</xsl:text>
												</span>
												<xsl:for-each select="Root">
													<xsl:for-each select="System">
														<xsl:for-each select="BootStatus">
															<xsl:for-each select="PowerOffReason">
																<xsl:apply-templates/>
															</xsl:for-each>
														</xsl:for-each>
													</xsl:for-each>
												</xsl:for-each>
												<span>
													<xsl:text>)</xsl:text>
												</span>
											</xsl:if>
											<span>
												<xsl:text>&#160;</xsl:text>
											</span>
										</td>
									</tr>
									<tr>
										<td width="160">
											<span>
												<xsl:text>Power Fail Behavior:</xsl:text>
											</span>
										</td>
										<td>
											<xsl:choose>
												<xsl:when test="count(  Root/System/BootStatus/PowerFailBehavior  )">
													<xsl:for-each select="Root">
														<xsl:for-each select="System">
															<xsl:for-each select="BootStatus">
																<xsl:for-each select="PowerFailBehavior">
																	<xsl:for-each select="@AsString">
																		<span>
																			<xsl:value-of select="string(.)"/>
																		</span>
																	</xsl:for-each>
																</xsl:for-each>
															</xsl:for-each>
														</xsl:for-each>
													</xsl:for-each>
													<span>
														<xsl:text> (</xsl:text>
													</span>
													<xsl:for-each select="Root">
														<xsl:for-each select="System">
															<xsl:for-each select="BootStatus">
																<xsl:for-each select="PowerFailBehavior">
																	<xsl:apply-templates/>
																</xsl:for-each>
															</xsl:for-each>
														</xsl:for-each>
													</xsl:for-each>
													<span>
														<xsl:text>)</xsl:text>
													</span>
												</xsl:when>
												<xsl:otherwise>
													<span>
														<xsl:text>N/A</xsl:text>
													</span>
												</xsl:otherwise>
											</xsl:choose>
										</td>
									</tr>
								</tbody>
							</table>
						</xsl:when>
						<xsl:otherwise>
							<span>
								<xsl:text>Not available!</xsl:text>
							</span>
						</xsl:otherwise>
					</xsl:choose>
					<br/>
					<h2>
						<a>
							<xsl:attribute name="name">
								<xsl:value-of select="&apos;System Management Controllers&apos;"/>
							</xsl:attribute>
							<span>
								<xsl:text>System Management Controllers</xsl:text>
							</span>
						</a>
					</h2>
					<xsl:choose>
						<xsl:when test="count(  Root/System/ManagementControllers/iRMC  )  != 0">
							<table border="0">
								<xsl:variable name="altova:CurrContextGrid_55" select="."/>
								<tbody>
									<xsl:for-each select="Root">
										<xsl:for-each select="System">
											<xsl:for-each select="ManagementControllers">
												<xsl:for-each select="iRMC">
													<tr>
														<td style="width:1.69in; ">
															<span style="font-weight:bold; ">
																<xsl:text>Controller Model: </xsl:text>
															</span>
														</td>
														<td style="width:5.30in; ">
															<xsl:for-each select="@Name">
																<span style="font-weight:bold; ">
																	<xsl:value-of select="string(.)"/>
																</span>
															</xsl:for-each>
														</td>
													</tr>
													<tr>
														<td style="width:1.69in; "/>
														<td style="width:5.30in; "/>
													</tr>
													<tr>
														<td style="width:1.69in; ">
															<span>
																<xsl:text>Firmware Version:</xsl:text>
															</span>
														</td>
														<td style="width:5.30in; ">
															<xsl:for-each select="Firmware">
																<xsl:apply-templates/>
															</xsl:for-each>
														</td>
													</tr>
													<tr>
														<td style="width:1.69in; ">
															<span>
																<xsl:text>IP Address:</xsl:text>
															</span>
														</td>
														<td style="width:5.30in; ">
															<xsl:for-each select="IPAddress">
																<xsl:apply-templates/>
															</xsl:for-each>
														</td>
													</tr>
													<tr>
														<td style="width:1.69in; ">
															<span>
																<xsl:text>IP Subnet Mask:</xsl:text>
															</span>
														</td>
														<td style="width:5.30in; ">
															<xsl:for-each select="IPSubnetMask">
																<xsl:apply-templates/>
															</xsl:for-each>
														</td>
													</tr>
													<tr>
														<td style="width:1.69in; ">
															<span>
																<xsl:text>Gateway Address:</xsl:text>
															</span>
														</td>
														<td style="width:5.30in; ">
															<xsl:for-each select="IPGateway">
																<xsl:apply-templates/>
															</xsl:for-each>
														</td>
													</tr>
													<tr>
														<td style="width:1.69in; ">
															<span>
																<xsl:text>MAC Address:</xsl:text>
															</span>
														</td>
														<td style="width:5.30in; ">
															<xsl:for-each select="MACAddress">
																<xsl:apply-templates/>
															</xsl:for-each>
														</td>
													</tr>
													<tr>
														<td style="width:1.69in; "/>
														<td style="width:5.30in; "/>
													</tr>
												</xsl:for-each>
											</xsl:for-each>
										</xsl:for-each>
									</xsl:for-each>
								</tbody>
							</table>
						</xsl:when>
						<xsl:otherwise>
							<span>
								<xsl:text>Not available!</xsl:text>
							</span>
						</xsl:otherwise>
					</xsl:choose>
					<br/>
					<xsl:if test="(Root/@OS=&quot;Windows&quot;) or (Root/@OS=&quot;Linux&quot;)">
						<br/>
						<h1>
							<span>
								<xsl:text>2. Operating System</xsl:text>
							</span>
						</h1>
						<br/>
						<h2>
							<a>
								<xsl:attribute name="name">
									<xsl:value-of select="&apos;OS Type&apos;"/>
								</xsl:attribute>
								<span>
									<xsl:text>Product Version</xsl:text>
								</span>
							</a>
						</h2>
						<table border="0" class="TableWithoutBorder" width="100%">
							<xsl:variable name="altova:CurrContextGrid_56" select="."/>
							<tbody>
								<tr>
									<td style="width:1.99in; " width="160">
										<span>
											<xsl:text>Product Name:</xsl:text>
										</span>
									</td>
									<td>
										<xsl:for-each select="Root">
											<xsl:for-each select="OperatingSystem">
												<xsl:for-each select="Product">
													<xsl:for-each select="Name">
														<xsl:apply-templates/>
													</xsl:for-each>
												</xsl:for-each>
											</xsl:for-each>
										</xsl:for-each>
									</td>
								</tr>
								<tr>
									<td style="width:1.99in; " width="160">
										<span>
											<xsl:text>Product Version:</xsl:text>
										</span>
									</td>
									<td>
										<xsl:for-each select="Root">
											<xsl:for-each select="OperatingSystem">
												<xsl:for-each select="Product">
													<xsl:for-each select="Version">
														<xsl:apply-templates/>
													</xsl:for-each>
												</xsl:for-each>
											</xsl:for-each>
										</xsl:for-each>
									</td>
								</tr>
								<tr>
									<td style="width:1.99in; " width="160">
										<span>
											<xsl:text>Product Type:</xsl:text>
										</span>
									</td>
									<td>
										<xsl:for-each select="Root">
											<xsl:for-each select="OperatingSystem">
												<xsl:for-each select="Product">
													<xsl:for-each select="Type">
														<xsl:apply-templates/>
													</xsl:for-each>
												</xsl:for-each>
											</xsl:for-each>
										</xsl:for-each>
									</td>
								</tr>
								<tr>
									<td style="width:1.99in; " width="160">
										<span>
											<xsl:text>System Language:</xsl:text>
										</span>
									</td>
									<td>
										<xsl:for-each select="Root">
											<xsl:for-each select="OperatingSystem">
												<xsl:for-each select="Product">
													<xsl:for-each select="Language">
														<xsl:for-each select="System">
															<xsl:for-each select="LangId">
																<xsl:apply-templates/>
															</xsl:for-each>
														</xsl:for-each>
													</xsl:for-each>
												</xsl:for-each>
											</xsl:for-each>
										</xsl:for-each>
										<span>
											<xsl:text> (</xsl:text>
										</span>
										<xsl:for-each select="Root">
											<xsl:for-each select="OperatingSystem">
												<xsl:for-each select="Product">
													<xsl:for-each select="Language">
														<xsl:for-each select="System">
															<xsl:for-each select="Description">
																<xsl:apply-templates/>
															</xsl:for-each>
														</xsl:for-each>
													</xsl:for-each>
												</xsl:for-each>
											</xsl:for-each>
										</xsl:for-each>
										<span>
											<xsl:text>)</xsl:text>
										</span>
									</td>
								</tr>
								<tr>
									<td style="width:1.99in; " width="160">
										<span>
											<xsl:text>User Language:</xsl:text>
										</span>
									</td>
									<td>
										<xsl:for-each select="Root">
											<xsl:for-each select="OperatingSystem">
												<xsl:for-each select="Product">
													<xsl:for-each select="Language">
														<xsl:for-each select="User">
															<xsl:for-each select="LangId">
																<xsl:apply-templates/>
															</xsl:for-each>
														</xsl:for-each>
													</xsl:for-each>
												</xsl:for-each>
											</xsl:for-each>
										</xsl:for-each>
										<span>
											<xsl:text> (</xsl:text>
										</span>
										<xsl:for-each select="Root">
											<xsl:for-each select="OperatingSystem">
												<xsl:for-each select="Product">
													<xsl:for-each select="Language">
														<xsl:for-each select="User">
															<xsl:for-each select="Description">
																<xsl:apply-templates/>
															</xsl:for-each>
														</xsl:for-each>
													</xsl:for-each>
												</xsl:for-each>
											</xsl:for-each>
										</xsl:for-each>
										<span>
											<xsl:text>)</xsl:text>
										</span>
									</td>
								</tr>
								<tr>
									<td style="width:1.99in; " width="160">
										<span>
											<xsl:text>System Default UI Language:</xsl:text>
										</span>
									</td>
									<td>
										<xsl:for-each select="Root">
											<xsl:for-each select="OperatingSystem">
												<xsl:for-each select="Product">
													<xsl:for-each select="Language">
														<xsl:for-each select="SystemDefaultUI">
															<xsl:for-each select="LangId">
																<xsl:apply-templates/>
															</xsl:for-each>
														</xsl:for-each>
													</xsl:for-each>
												</xsl:for-each>
											</xsl:for-each>
										</xsl:for-each>
										<span>
											<xsl:text> (</xsl:text>
										</span>
										<xsl:for-each select="Root">
											<xsl:for-each select="OperatingSystem">
												<xsl:for-each select="Product">
													<xsl:for-each select="Language">
														<xsl:for-each select="SystemDefaultUI">
															<xsl:for-each select="Description">
																<xsl:apply-templates/>
															</xsl:for-each>
														</xsl:for-each>
													</xsl:for-each>
												</xsl:for-each>
											</xsl:for-each>
										</xsl:for-each>
										<span>
											<xsl:text>)</xsl:text>
										</span>
										<br/>
									</td>
								</tr>
								<tr>
									<td style="width:1.99in; " width="160">
										<span>
											<xsl:text>User Default UI Language:</xsl:text>
										</span>
									</td>
									<td>
										<xsl:for-each select="Root">
											<xsl:for-each select="OperatingSystem">
												<xsl:for-each select="Product">
													<xsl:for-each select="Language">
														<xsl:for-each select="UserDefaultUI">
															<xsl:for-each select="LangId">
																<xsl:apply-templates/>
															</xsl:for-each>
														</xsl:for-each>
													</xsl:for-each>
												</xsl:for-each>
											</xsl:for-each>
										</xsl:for-each>
										<span>
											<xsl:text> (</xsl:text>
										</span>
										<xsl:for-each select="Root">
											<xsl:for-each select="OperatingSystem">
												<xsl:for-each select="Product">
													<xsl:for-each select="Language">
														<xsl:for-each select="UserDefaultUI">
															<xsl:for-each select="Description">
																<xsl:apply-templates/>
															</xsl:for-each>
														</xsl:for-each>
													</xsl:for-each>
												</xsl:for-each>
											</xsl:for-each>
										</xsl:for-each>
										<span>
											<xsl:text>)</xsl:text>
										</span>
									</td>
								</tr>
							</tbody>
						</table>
						<br/>
						<h2>
							<a>
								<xsl:attribute name="name">
									<xsl:value-of select="&apos;OS Boot Options&apos;"/>
								</xsl:attribute>
								<span style="font-weight:bold; ">
									<xsl:text>Boot Options</xsl:text>
								</span>
							</a>
						</h2>
						<span style="font-weight:bold; ">
							<xsl:text>Boot Loader:</xsl:text>
						</span>
						<br/>
						<br/>
						<pre>
							<xsl:for-each select="Root">
								<xsl:for-each select="OperatingSystem">
									<xsl:for-each select="BootOptions">
										<xsl:for-each select="Config">
											<xsl:for-each select="Loader">
												<xsl:apply-templates/>
											</xsl:for-each>
										</xsl:for-each>
									</xsl:for-each>
								</xsl:for-each>
							</xsl:for-each>
						</pre>
						<h2>
							<a>
								<xsl:attribute name="name">
									<xsl:value-of select="&apos;OS Devices&apos;"/>
								</xsl:attribute>
								<span>
									<xsl:text>System Devices</xsl:text>
								</span>
							</a>
						</h2>
						<table style="background-color:transparent; " border="0" cellspacing="25" class="TableWithoutBorder">
							<xsl:variable name="altova:CurrContextGrid_57" select="."/>
							<tbody>
								<xsl:for-each select="Root">
									<xsl:for-each select="OperatingSystem">
										<xsl:for-each select="Devices">
											<xsl:for-each select="Device">
												<tr style="background-color:transparent; ">
													<td>
														<table border="0" cellpadding="2" cellspacing="0" width="100%">
															<xsl:variable name="altova:CurrContextGrid_58" select="."/>
															<tbody>
																<tr>
																	<td colspan="2">
																		<span style="font-weight:bold; ">
																			<xsl:text>Device:</xsl:text>
																		</span>
																	</td>
																	<td colspan="2" style="text-align:left; "/>
																</tr>
																<tr>
																	<td/>
																	<td style="text-align:left; " width="100">
																		<span>
																			<xsl:text>Name:</xsl:text>
																		</span>
																	</td>
																	<td colspan="2" style="text-align:left; ">
																		<xsl:for-each select="OSName">
																			<span style="font-weight:bold; ">
																				<xsl:apply-templates/>
																			</span>
																		</xsl:for-each>
																	</td>
																</tr>
																<tr>
																	<td/>
																	<td style="text-align:left; " width="100">
																		<span>
																			<xsl:text>Class:</xsl:text>
																		</span>
																	</td>
																	<td colspan="2" style="text-align:left; ">
																		<xsl:for-each select="Class">
																			<xsl:for-each select="Name">
																				<xsl:apply-templates/>
																			</xsl:for-each>
																		</xsl:for-each>
																		<span>
																			<xsl:text> (</xsl:text>
																		</span>
																		<xsl:for-each select="Class">
																			<xsl:for-each select="Description">
																				<xsl:apply-templates/>
																			</xsl:for-each>
																		</xsl:for-each>
																		<span>
																			<xsl:text>)</xsl:text>
																		</span>
																	</td>
																</tr>
																<tr>
																	<td/>
																	<td style="text-align:left; " width="100">
																		<span>
																			<xsl:text>Vendor:</xsl:text>
																		</span>
																	</td>
																	<td colspan="2" style="text-align:left; ">
																		<xsl:for-each select="VendorName">
																			<xsl:apply-templates/>
																		</xsl:for-each>
																	</td>
																</tr>
																<tr>
																	<td/>
																	<td style="text-align:left; " width="100"/>
																	<td colspan="2" style="text-align:left; ">
																		<span>
																			<xsl:text>&#160;</xsl:text>
																		</span>
																	</td>
																</tr>
																<tr>
																	<td colspan="2">
																		<span style="font-weight:bold; ">
																			<xsl:text>Status:</xsl:text>
																		</span>
																	</td>
																	<td colspan="2"/>
																</tr>
																<tr>
																	<td/>
																	<td width="100">
																		<span>
																			<xsl:text>Summary:</xsl:text>
																		</span>
																	</td>
																	<td colspan="2">
																		<xsl:for-each select="Status">
																			<xsl:for-each select="Summary">
																				<xsl:for-each select="@AsString">
																					<span>
																						<xsl:value-of select="string(.)"/>
																					</span>
																				</xsl:for-each>
																			</xsl:for-each>
																		</xsl:for-each>
																	</td>
																</tr>
																<tr>
																	<td/>
																	<td width="100">
																		<span>
																			<xsl:text>Detail:</xsl:text>
																		</span>
																	</td>
																	<td colspan="2">
																		<xsl:for-each select="Status">
																			<xsl:for-each select="Detail">
																				<xsl:for-each select="@AsString">
																					<span>
																						<xsl:value-of select="string(.)"/>
																					</span>
																				</xsl:for-each>
																			</xsl:for-each>
																		</xsl:for-each>
																	</td>
																</tr>
																<tr>
																	<td/>
																	<td width="100"/>
																	<td colspan="2"/>
																</tr>
																<tr>
																	<td colspan="2">
																		<span>
																			<xsl:text>&#160;</xsl:text>
																		</span>
																		<span style="font-weight:bold; ">
																			<xsl:text>Driver:</xsl:text>
																		</span>
																	</td>
																	<td colspan="2" style="text-align:left; ">
																		<xsl:if test="0 = count( Driver/Name )">
																			<span>
																				<xsl:text>No device driver installed!</xsl:text>
																			</span>
																		</xsl:if>
																	</td>
																</tr>
																<tr>
																	<td/>
																	<td style="text-align:left; " width="100">
																		<span>
																			<xsl:text>Name:</xsl:text>
																		</span>
																	</td>
																	<td>
																		<xsl:if test="count(  Driver  )">
																			<xsl:for-each select="Driver">
																				<xsl:for-each select="Name">
																					<xsl:apply-templates/>
																				</xsl:for-each>
																			</xsl:for-each>
																		</xsl:if>
																	</td>
																	<td/>
																</tr>
																<tr>
																	<td/>
																	<td width="100">
																		<span>
																			<xsl:text>Provider:</xsl:text>
																		</span>
																	</td>
																	<td colspan="2">
																		<xsl:if test="count(Driver/Manufacturer)">
																			<xsl:for-each select="Driver">
																				<xsl:for-each select="Provider">
																					<xsl:apply-templates/>
																				</xsl:for-each>
																			</xsl:for-each>
																		</xsl:if>
																	</td>
																</tr>
																<tr>
																	<td/>
																	<td width="100">
																		<span>
																			<xsl:text>Version:</xsl:text>
																		</span>
																	</td>
																	<td colspan="2">
																		<xsl:if test="count(  Driver/Version )">
																			<xsl:for-each select="Driver">
																				<xsl:for-each select="Version">
																					<xsl:apply-templates/>
																				</xsl:for-each>
																			</xsl:for-each>
																		</xsl:if>
																	</td>
																</tr>
																<tr>
																	<td/>
																	<td width="100">
																		<span>
																			<xsl:text>Created:</xsl:text>
																		</span>
																	</td>
																	<td colspan="2">
																		<xsl:if test="count(  Driver/Created )">
																			<xsl:for-each select="Driver">
																				<xsl:for-each select="Created">
																					<xsl:apply-templates/>
																				</xsl:for-each>
																			</xsl:for-each>
																		</xsl:if>
																	</td>
																</tr>
																<tr>
																	<td colspan="2"/>
																	<td colspan="2"/>
																</tr>
																<tr>
																	<td colspan="2">
																		<span style="font-weight:bold; ">
																			<xsl:text>Driver File:</xsl:text>
																		</span>
																	</td>
																	<td colspan="2">
																		<xsl:if test="0 = count( Driver/Files/File )">
																			<span>
																				<xsl:text>No device driver file required!</xsl:text>
																			</span>
																		</xsl:if>
																	</td>
																</tr>
																<tr>
																	<td/>
																	<td style="text-align:left; " width="100">
																		<span>
																			<xsl:text>Desription:</xsl:text>
																		</span>
																	</td>
																	<td colspan="2" style="text-align:left; ">
																		<xsl:choose>
																			<xsl:when test="count(Driver/Files/File/Version/Description)">
																				<xsl:for-each select="Driver">
																					<xsl:for-each select="Files">
																						<xsl:for-each select="File">
																							<xsl:for-each select="Version">
																								<xsl:for-each select="Description">
																									<xsl:apply-templates/>
																								</xsl:for-each>
																							</xsl:for-each>
																						</xsl:for-each>
																					</xsl:for-each>
																				</xsl:for-each>
																			</xsl:when>
																			<xsl:otherwise>
																				<span>
																					<xsl:text>N/A</xsl:text>
																				</span>
																			</xsl:otherwise>
																		</xsl:choose>
																	</td>
																</tr>
																<tr>
																	<td/>
																	<td style="text-align:left; " width="100">
																		<span>
																			<xsl:text>File:</xsl:text>
																		</span>
																	</td>
																	<td colspan="2" style="text-align:left; ">
																		<xsl:choose>
																			<xsl:when test="count ( Driver/Files/File/Version/FileVersion )">
																				<xsl:for-each select="Driver">
																					<xsl:for-each select="Files">
																						<xsl:for-each select="File">
																							<xsl:for-each select="Version">
																								<xsl:for-each select="FileVersion">
																									<xsl:apply-templates/>
																								</xsl:for-each>
																							</xsl:for-each>
																						</xsl:for-each>
																					</xsl:for-each>
																				</xsl:for-each>
																			</xsl:when>
																			<xsl:otherwise>
																				<span>
																					<xsl:text>N/A</xsl:text>
																				</span>
																			</xsl:otherwise>
																		</xsl:choose>
																	</td>
																</tr>
																<tr>
																	<td/>
																	<td style="text-align:left; " width="100">
																		<span>
																			<xsl:text>Product Version:</xsl:text>
																		</span>
																	</td>
																	<td colspan="2" style="text-align:left; ">
																		<xsl:choose>
																			<xsl:when test="count (Driver/Files/File/Version/ProductVersion)">
																				<xsl:for-each select="Driver">
																					<xsl:for-each select="Files">
																						<xsl:for-each select="File">
																							<xsl:for-each select="Version">
																								<xsl:for-each select="ProductVersion">
																									<xsl:apply-templates/>
																								</xsl:for-each>
																							</xsl:for-each>
																						</xsl:for-each>
																					</xsl:for-each>
																				</xsl:for-each>
																			</xsl:when>
																			<xsl:otherwise>
																				<span>
																					<xsl:text>N/A</xsl:text>
																				</span>
																			</xsl:otherwise>
																		</xsl:choose>
																	</td>
																</tr>
																<tr>
																	<td/>
																	<td style="text-align:left; " width="100">
																		<span>
																			<xsl:text>Vendor Name:</xsl:text>
																		</span>
																	</td>
																	<td colspan="2" style="text-align:left; ">
																		<xsl:choose>
																			<xsl:when test="count (Driver/Files/File/Version/CompanyName )">
																				<xsl:for-each select="Driver">
																					<xsl:for-each select="Files">
																						<xsl:for-each select="File">
																							<xsl:for-each select="Version">
																								<xsl:for-each select="CompanyName">
																									<xsl:apply-templates/>
																								</xsl:for-each>
																							</xsl:for-each>
																						</xsl:for-each>
																					</xsl:for-each>
																				</xsl:for-each>
																			</xsl:when>
																			<xsl:otherwise>
																				<span>
																					<xsl:text>N/A</xsl:text>
																				</span>
																			</xsl:otherwise>
																		</xsl:choose>
																	</td>
																</tr>
																<tr>
																	<td/>
																	<td style="text-align:left; " width="100">
																		<span>
																			<xsl:text>Location:</xsl:text>
																		</span>
																	</td>
																	<td colspan="2" style="text-align:left; ">
																		<xsl:choose>
																			<xsl:when test="count (Driver/Files/File/Version/Location )">
																				<xsl:for-each select="Driver">
																					<xsl:for-each select="Files">
																						<xsl:for-each select="File">
																							<xsl:for-each select="Version">
																								<xsl:for-each select="Location">
																									<xsl:apply-templates/>
																								</xsl:for-each>
																							</xsl:for-each>
																						</xsl:for-each>
																					</xsl:for-each>
																				</xsl:for-each>
																			</xsl:when>
																			<xsl:otherwise>
																				<span>
																					<xsl:text>N/A</xsl:text>
																				</span>
																			</xsl:otherwise>
																		</xsl:choose>
																	</td>
																</tr>
																<tr>
																	<td/>
																	<td style="text-align:left; " width="100">
																		<span>
																			<xsl:text>Created:</xsl:text>
																		</span>
																	</td>
																	<td colspan="2" style="text-align:left; ">
																		<xsl:choose>
																			<xsl:when test="count (Driver/Files/File/Version/Created )">
																				<xsl:for-each select="Driver">
																					<xsl:for-each select="Files">
																						<xsl:for-each select="File">
																							<xsl:for-each select="Version">
																								<xsl:for-each select="Created">
																									<xsl:apply-templates/>
																								</xsl:for-each>
																							</xsl:for-each>
																						</xsl:for-each>
																					</xsl:for-each>
																				</xsl:for-each>
																			</xsl:when>
																			<xsl:otherwise>
																				<span>
																					<xsl:text>N/A</xsl:text>
																				</span>
																			</xsl:otherwise>
																		</xsl:choose>
																	</td>
																</tr>
																<tr>
																	<td/>
																	<td style="text-align:left; " width="100">
																		<span>
																			<xsl:text>&#160;</xsl:text>
																		</span>
																	</td>
																	<td colspan="2" style="text-align:left; ">
																		<span>
																			<xsl:text>&#160;</xsl:text>
																		</span>
																	</td>
																</tr>
																<tr>
																	<td colspan="2">
																		<span style="font-weight:bold; ">
																			<xsl:text>Resources:</xsl:text>
																		</span>
																	</td>
																	<td colspan="2" style="text-align:left; "/>
																</tr>
																<tr>
																	<td/>
																	<td style="text-align:left; vertical-align:top; " width="100">
																		<span>
																			<xsl:text>IO Ports:</xsl:text>
																		</span>
																	</td>
																	<td colspan="2" style="text-align:left; ">
																		<table border="0">
																			<xsl:variable name="altova:CurrContextGrid_59" select="."/>
																			<tbody>
																				<xsl:for-each select="Resources">
																					<xsl:for-each select="IO">
																						<xsl:for-each select="Address">
																							<tr>
																								<td>
																									<xsl:apply-templates/>
																								</td>
																							</tr>
																						</xsl:for-each>
																					</xsl:for-each>
																				</xsl:for-each>
																			</tbody>
																		</table>
																	</td>
																</tr>
																<tr>
																	<td/>
																	<td style="text-align:left; vertical-align:top; " width="100">
																		<span>
																			<xsl:text>Memory:</xsl:text>
																		</span>
																	</td>
																	<td colspan="2" style="text-align:left; ">
																		<table border="0">
																			<xsl:variable name="altova:CurrContextGrid_60" select="."/>
																			<tbody>
																				<xsl:for-each select="Resources">
																					<xsl:for-each select="Memory">
																						<xsl:for-each select="Address">
																							<tr>
																								<td>
																									<xsl:apply-templates/>
																								</td>
																							</tr>
																						</xsl:for-each>
																					</xsl:for-each>
																				</xsl:for-each>
																			</tbody>
																		</table>
																	</td>
																</tr>
																<tr>
																	<td/>
																	<td style="text-align:left; vertical-align:top; " width="100">
																		<span>
																			<xsl:text>IRQ:</xsl:text>
																		</span>
																	</td>
																	<td colspan="2" style="text-align:left; ">
																		<table border="0">
																			<xsl:variable name="altova:CurrContextGrid_61" select="."/>
																			<tbody>
																				<xsl:for-each select="Resources">
																					<xsl:for-each select="IRQ">
																						<xsl:for-each select="Level">
																							<tr>
																								<td>
																									<xsl:apply-templates/>
																								</td>
																							</tr>
																						</xsl:for-each>
																					</xsl:for-each>
																				</xsl:for-each>
																			</tbody>
																		</table>
																	</td>
																</tr>
																<tr>
																	<td/>
																	<td style="text-align:left; vertical-align:top; " width="100">
																		<span>
																			<xsl:text>DMA:</xsl:text>
																		</span>
																	</td>
																	<td colspan="2" style="text-align:left; ">
																		<table border="0">
																			<xsl:variable name="altova:CurrContextGrid_62" select="."/>
																			<tbody>
																				<xsl:for-each select="Resources">
																					<xsl:for-each select="DMA">
																						<xsl:for-each select="Channel">
																							<tr>
																								<td>
																									<xsl:apply-templates/>
																								</td>
																							</tr>
																						</xsl:for-each>
																					</xsl:for-each>
																				</xsl:for-each>
																			</tbody>
																		</table>
																	</td>
																</tr>
																<tr>
																	<td colspan="4">
																		<hr/>
																	</td>
																</tr>
															</tbody>
														</table>
													</td>
												</tr>
											</xsl:for-each>
										</xsl:for-each>
									</xsl:for-each>
								</xsl:for-each>
							</tbody>
						</table>
						<h2>
							<a>
								<xsl:attribute name="name">
									<xsl:value-of select="&apos;System Drives&apos;"/>
								</xsl:attribute>
								<span>
									<xsl:text>System Drives</xsl:text>
								</span>
							</a>
						</h2>
						<table border="1" cellpadding="2" cellspacing="0" class="TableWithoutBorder">
							<xsl:variable name="altova:CurrContextGrid_63" select="."/>
							<thead>
								<tr>
									<th>
										<span>
											<xsl:text>Name</xsl:text>
										</span>
									</th>
									<th>
										<span>
											<xsl:text>Vendor</xsl:text>
										</span>
									</th>
									<th>
										<span>
											<xsl:text>Interface</xsl:text>
										</span>
									</th>
									<th>
										<span>
											<xsl:text>Serial Number</xsl:text>
										</span>
									</th>
									<th>
										<span>
											<xsl:text>Location</xsl:text>
										</span>
									</th>
									<th>
										<span>
											<xsl:text>Device</xsl:text>
										</span>
									</th>
								</tr>
							</thead>
							<tbody>
								<xsl:for-each select="Root">
									<xsl:for-each select="OperatingSystem">
										<xsl:for-each select="Drives">
											<xsl:for-each select="Drive">
												<tr>
													<td>
														<xsl:for-each select="Name">
															<xsl:apply-templates/>
														</xsl:for-each>
													</td>
													<td>
														<xsl:for-each select="Vendor">
															<xsl:apply-templates/>
														</xsl:for-each>
													</td>
													<td>
														<xsl:for-each select="BusType">
															<xsl:for-each select="@AsString">
																<span>
																	<xsl:value-of select="string(.)"/>
																</span>
															</xsl:for-each>
														</xsl:for-each>
													</td>
													<td>
														<xsl:choose>
															<xsl:when test="count (SerialNumber)">
																<xsl:for-each select="SerialNumber">
																	<xsl:apply-templates/>
																</xsl:for-each>
															</xsl:when>
															<xsl:otherwise>
																<span>
																	<xsl:text>N/A</xsl:text>
																</span>
															</xsl:otherwise>
														</xsl:choose>
													</td>
													<td>
														<xsl:for-each select="Type">
															<xsl:for-each select="@AsString">
																<span>
																	<xsl:value-of select="string(.)"/>
																</span>
															</xsl:for-each>
														</xsl:for-each>
														<span>
															<xsl:text>&#160;</xsl:text>
														</span>
														<xsl:for-each select="@DriveNo">
															<span>
																<xsl:value-of select="string(.)"/>
															</span>
														</xsl:for-each>
														<span>
															<xsl:text>: </xsl:text>
														</span>
														<br/>
														<span>
															<xsl:text>Port </xsl:text>
														</span>
														<xsl:for-each select="ScsiAddress">
															<xsl:for-each select="PortNo">
																<xsl:apply-templates/>
															</xsl:for-each>
														</xsl:for-each>
														<span>
															<xsl:text> Path </xsl:text>
														</span>
														<xsl:for-each select="ScsiAddress">
															<xsl:for-each select="PathId">
																<xsl:apply-templates/>
															</xsl:for-each>
														</xsl:for-each>
														<span>
															<xsl:text> Target </xsl:text>
														</span>
														<xsl:for-each select="ScsiAddress">
															<xsl:for-each select="TargetId">
																<xsl:apply-templates/>
															</xsl:for-each>
														</xsl:for-each>
														<span>
															<xsl:text> LUN </xsl:text>
														</span>
														<xsl:for-each select="ScsiAddress">
															<xsl:for-each select="LUN">
																<xsl:apply-templates/>
															</xsl:for-each>
														</xsl:for-each>
													</td>
													<td>
														<span>
															<xsl:text>PDO: </xsl:text>
														</span>
														<xsl:for-each select="PDO">
															<xsl:apply-templates/>
														</xsl:for-each>
														<br/>
														<span>
															<xsl:text>FDO: </xsl:text>
														</span>
														<xsl:for-each select="FDO">
															<xsl:apply-templates/>
														</xsl:for-each>
													</td>
												</tr>
											</xsl:for-each>
										</xsl:for-each>
									</xsl:for-each>
								</xsl:for-each>
							</tbody>
						</table>
						<br/>
						<br/>
						<h2>
							<a>
								<xsl:attribute name="name">
									<xsl:value-of select="&apos;System Volumes&apos;"/>
								</xsl:attribute>
								<span>
									<xsl:text>System Volumes</xsl:text>
								</span>
							</a>
						</h2>
						<table border="1" cellpadding="2" cellspacing="0">
							<xsl:variable name="altova:CurrContextGrid_64" select="."/>
							<thead>
								<tr>
									<th>
										<span>
											<xsl:text>Mount Point(s)</xsl:text>
										</span>
									</th>
									<th>
										<span>
											<xsl:text>Label</xsl:text>
										</span>
									</th>
									<th>
										<span>
											<xsl:text>Serial Number</xsl:text>
										</span>
									</th>
									<th>
										<span>
											<xsl:text>File System</xsl:text>
										</span>
									</th>
								</tr>
							</thead>
							<tbody>
								<xsl:for-each select="Root">
									<xsl:for-each select="OperatingSystem">
										<xsl:for-each select="Volumes">
											<xsl:for-each select="Volume">
												<tr>
													<td>
														<table border="0">
															<xsl:variable name="altova:CurrContextGrid_65" select="."/>
															<tbody>
																<xsl:for-each select="MountPoints">
																	<tr>
																		<td>
																			<xsl:for-each select="PathName">
																				<xsl:apply-templates/>
																			</xsl:for-each>
																		</td>
																	</tr>
																</xsl:for-each>
															</tbody>
														</table>
													</td>
													<td>
														<xsl:choose>
															<xsl:when test="boolean( @Label ) and @Label != &quot;&quot;">
																<xsl:for-each select="@Label">
																	<span>
																		<xsl:value-of select="string(.)"/>
																	</span>
																</xsl:for-each>
															</xsl:when>
															<xsl:otherwise>
																<span>
																	<xsl:text>N/A</xsl:text>
																</span>
															</xsl:otherwise>
														</xsl:choose>
													</td>
													<td style="text-align:center; ">
														<xsl:choose>
															<xsl:when test="boolean( @SerialNumber ) and @SerialNumber != &quot;&quot;">
																<xsl:for-each select="@SerialNumber">
																	<span>
																		<xsl:value-of select="string(.)"/>
																	</span>
																</xsl:for-each>
															</xsl:when>
															<xsl:otherwise>
																<span>
																	<xsl:text>N/A</xsl:text>
																</span>
															</xsl:otherwise>
														</xsl:choose>
													</td>
													<td>
														<table border="0" cellpadding="2" cellspacing="0" width="100%">
															<xsl:variable name="altova:CurrContextGrid_66" select="."/>
															<tbody>
																<tr>
																	<td>
																		<span>
																			<xsl:text>Name:</xsl:text>
																		</span>
																	</td>
																	<td align="left">
																		<xsl:choose>
																			<xsl:when test="count(  FileSystem/Name  ) != 0">
																				<xsl:for-each select="FileSystem">
																					<xsl:for-each select="Name">
																						<xsl:apply-templates/>
																					</xsl:for-each>
																				</xsl:for-each>
																			</xsl:when>
																			<xsl:otherwise>
																				<span>
																					<xsl:text>N/A</xsl:text>
																				</span>
																			</xsl:otherwise>
																		</xsl:choose>
																	</td>
																</tr>
																<tr>
																	<td>
																		<span>
																			<xsl:text>Size:</xsl:text>
																		</span>
																	</td>
																	<td align="left">
																		<xsl:choose>
																			<xsl:when test="FileSystem/Size != 0">
																				<xsl:for-each select="FileSystem">
																					<xsl:for-each select="Size">
																						<xsl:apply-templates/>
																					</xsl:for-each>
																				</xsl:for-each>
																				<span>
																					<xsl:text>&#160;</xsl:text>
																				</span>
																				<xsl:for-each select="FileSystem">
																					<xsl:for-each select="Size">
																						<xsl:for-each select="@Unit">
																							<span>
																								<xsl:value-of select="string(.)"/>
																							</span>
																						</xsl:for-each>
																					</xsl:for-each>
																				</xsl:for-each>
																				<xsl:for-each select="FileSystem">
																					<span>
																						<xsl:text> (</xsl:text>
																					</span>
																					<xsl:for-each select="Usage">
																						<xsl:apply-templates/>
																					</xsl:for-each>
																				</xsl:for-each>
																				<span>
																					<xsl:text>% in use)</xsl:text>
																				</span>
																			</xsl:when>
																			<xsl:otherwise>
																				<span>
																					<xsl:text>N/A</xsl:text>
																				</span>
																			</xsl:otherwise>
																		</xsl:choose>
																	</td>
																</tr>
																<tr>
																	<td valign="top">
																		<span>
																			<xsl:text>Partitions:</xsl:text>
																		</span>
																	</td>
																	<td>
																		<xsl:choose>
																			<xsl:when test="count(   FileSystem/Partitions   ) != 0">
																				<table border="1" cellpadding="2" cellspacing="0">
																					<xsl:variable name="altova:CurrContextGrid_67" select="."/>
																					<thead>
																						<tr>
																							<th>
																								<span>
																									<xsl:text>Location</xsl:text>
																								</span>
																							</th>
																							<th colspan="2">
																								<span>
																									<xsl:text>Size</xsl:text>
																								</span>
																							</th>
																							<th colspan="2">
																								<span>
																									<xsl:text>Type</xsl:text>
																								</span>
																							</th>
																						</tr>
																					</thead>
																					<tbody>
																						<xsl:for-each select="FileSystem">
																							<xsl:for-each select="Partitions">
																								<xsl:for-each select="Partition">
																									<xsl:sort select="@No" data-type="text" order="ascending"/>
																									<tr>
																										<td align="right">
																											<span>
																												<xsl:text>Disk </xsl:text>
																											</span>
																											<xsl:for-each select="@DriveNo">
																												<span>
																													<xsl:value-of select="string(.)"/>
																												</span>
																											</xsl:for-each>
																											<span>
																												<xsl:text> Partition </xsl:text>
																											</span>
																											<xsl:for-each select="@PartitionNo">
																												<span>
																													<xsl:value-of select="string(.)"/>
																												</span>
																											</xsl:for-each>
																										</td>
																										<td style="border-right:0; " align="right">
																											<xsl:for-each select="Size">
																												<xsl:apply-templates/>
																											</xsl:for-each>
																										</td>
																										<td style="border-left:0; " align="right">
																											<span>
																												<xsl:text>MByte</xsl:text>
																											</span>
																										</td>
																										<td style="border-right:0; " align="right">
																											<xsl:for-each select="Type">
																												<xsl:apply-templates/>
																											</xsl:for-each>
																										</td>
																										<td style="border-left:0; ">
																											<span>
																												<xsl:text>(</xsl:text>
																											</span>
																											<xsl:for-each select="Type">
																												<xsl:for-each select="@AsString">
																													<span>
																														<xsl:value-of select="string(.)"/>
																													</span>
																												</xsl:for-each>
																											</xsl:for-each>
																											<span>
																												<xsl:text>)</xsl:text>
																											</span>
																										</td>
																									</tr>
																								</xsl:for-each>
																							</xsl:for-each>
																						</xsl:for-each>
																					</tbody>
																				</table>
																			</xsl:when>
																			<xsl:otherwise>
																				<span>
																					<xsl:text>N/A</xsl:text>
																				</span>
																			</xsl:otherwise>
																		</xsl:choose>
																	</td>
																</tr>
															</tbody>
														</table>
													</td>
												</tr>
											</xsl:for-each>
										</xsl:for-each>
									</xsl:for-each>
								</xsl:for-each>
							</tbody>
						</table>
						<br/>
						<br/>
						<h2>
							<a>
								<xsl:attribute name="name">
									<xsl:value-of select="&apos;OS Processes&apos;"/>
								</xsl:attribute>
								<span>
									<xsl:text>Running processes</xsl:text>
								</span>
							</a>
						</h2>
						<xsl:for-each select="Root">
							<xsl:for-each select="OperatingSystem">
								<xsl:for-each select="Processes">
									<table style="empty-cells:inherit; " border="1" cellpadding="2" cellspacing="0">
										<xsl:variable name="altova:CurrContextGrid_68" select="."/>
										<thead>
											<tr>
												<th>
													<span>
														<xsl:text>PID</xsl:text>
													</span>
												</th>
												<th>
													<span>
														<xsl:text>Name</xsl:text>
													</span>
												</th>
												<th>
													<span>
														<xsl:text>Description</xsl:text>
													</span>
												</th>
												<th>
													<span>
														<xsl:text>File Version</xsl:text>
													</span>
												</th>
												<th>
													<span>
														<xsl:text>Product Version</xsl:text>
													</span>
												</th>
												<th>
													<span>
														<xsl:text>Created</xsl:text>
													</span>
												</th>
												<th>
													<span>
														<xsl:text>Company Name</xsl:text>
													</span>
												</th>
												<th>
													<span>
														<xsl:text>Location</xsl:text>
													</span>
												</th>
											</tr>
										</thead>
										<tbody>
											<xsl:for-each select="Process">
												<tr>
													<td>
														<xsl:for-each select="@Pid">
															<span>
																<xsl:value-of select="string(.)"/>
															</span>
														</xsl:for-each>
													</td>
													<td>
														<xsl:for-each select="@Name">
															<span>
																<xsl:value-of select="string(.)"/>
															</span>
														</xsl:for-each>
													</td>
													<td>
														<xsl:choose>
															<xsl:when test="(Version/Description) != &quot;&quot;">
																<xsl:for-each select="Version">
																	<xsl:for-each select="Description">
																		<xsl:apply-templates/>
																	</xsl:for-each>
																</xsl:for-each>
															</xsl:when>
															<xsl:otherwise>
																<span>
																	<xsl:text>N/A</xsl:text>
																</span>
															</xsl:otherwise>
														</xsl:choose>
													</td>
													<td>
														<xsl:choose>
															<xsl:when test="( Version/FileVersion  ) != &quot;&quot;">
																<xsl:for-each select="Version">
																	<xsl:for-each select="FileVersion">
																		<xsl:apply-templates/>
																	</xsl:for-each>
																</xsl:for-each>
															</xsl:when>
															<xsl:otherwise>
																<span>
																	<xsl:text>N/A</xsl:text>
																</span>
															</xsl:otherwise>
														</xsl:choose>
													</td>
													<td>
														<xsl:choose>
															<xsl:when test="count(  Version/ProductVersion  ) != 0">
																<xsl:for-each select="Version">
																	<xsl:for-each select="ProductVersion">
																		<xsl:apply-templates/>
																	</xsl:for-each>
																</xsl:for-each>
															</xsl:when>
															<xsl:otherwise>
																<span>
																	<xsl:text>N/A</xsl:text>
																</span>
															</xsl:otherwise>
														</xsl:choose>
													</td>
													<td>
														<xsl:choose>
															<xsl:when test="count(  Version/Created  ) != 0">
																<xsl:for-each select="Version">
																	<xsl:for-each select="Created">
																		<xsl:apply-templates/>
																	</xsl:for-each>
																</xsl:for-each>
															</xsl:when>
															<xsl:otherwise>
																<span>
																	<xsl:text>N/A</xsl:text>
																</span>
															</xsl:otherwise>
														</xsl:choose>
													</td>
													<td>
														<xsl:choose>
															<xsl:when test="count(  Version/CompanyName  ) != 0">
																<xsl:for-each select="Version">
																	<xsl:for-each select="CompanyName">
																		<xsl:apply-templates/>
																	</xsl:for-each>
																</xsl:for-each>
															</xsl:when>
															<xsl:otherwise>
																<span>
																	<xsl:text>N/A</xsl:text>
																</span>
															</xsl:otherwise>
														</xsl:choose>
													</td>
													<td>
														<xsl:choose>
															<xsl:when test="count(  Version/Location  ) != 0">
																<xsl:for-each select="Version">
																	<xsl:for-each select="Location">
																		<xsl:apply-templates/>
																	</xsl:for-each>
																</xsl:for-each>
															</xsl:when>
															<xsl:otherwise>
																<span>
																	<xsl:text>N/A</xsl:text>
																</span>
															</xsl:otherwise>
														</xsl:choose>
													</td>
												</tr>
											</xsl:for-each>
										</tbody>
									</table>
								</xsl:for-each>
							</xsl:for-each>
						</xsl:for-each>
						<br/>
						<br/>
						<h2>
							<a>
								<xsl:attribute name="name">
									<xsl:value-of select="&apos;OS Process Counters&apos;"/>
								</xsl:attribute>
								<span>
									<xsl:text>Process Performance Counters</xsl:text>
								</span>
							</a>
						</h2>
						<xsl:for-each select="Root">
							<xsl:for-each select="OperatingSystem">
								<xsl:for-each select="Processes">
									<table style="empty-cells:inherit; " border="1" cellpadding="2" cellspacing="0">
										<xsl:variable name="altova:CurrContextGrid_69" select="."/>
										<thead>
											<tr>
												<th>
													<span>
														<xsl:text>PID</xsl:text>
													</span>
												</th>
												<th>
													<span>
														<xsl:text>Name</xsl:text>
													</span>
												</th>
												<th style="text-align:center; " align="center">
													<span>
														<xsl:text>CPU </xsl:text>
													</span>
													<br/>
													<span>
														<xsl:text>Usage</xsl:text>
													</span>
												</th>
												<th style="text-align:center; " align="center">
													<span>
														<xsl:text>Page File Usage</xsl:text>
													</span>
													<br/>
													<span>
														<xsl:text>(Current KBytes)</xsl:text>
													</span>
												</th>
												<th style="text-align:center; " align="center">
													<span>
														<xsl:text>Page File Usage</xsl:text>
													</span>
													<br/>
													<span>
														<xsl:text> (Peak KBytes)</xsl:text>
													</span>
												</th>
												<th style="text-align:center; " align="center">
													<span>
														<xsl:text>Working Set Size</xsl:text>
													</span>
													<br/>
													<span>
														<xsl:text> (Current KBytes)</xsl:text>
													</span>
												</th>
												<th style="text-align:center; " align="center">
													<span>
														<xsl:text>Working Set Size</xsl:text>
													</span>
													<br/>
													<span>
														<xsl:text>(Peak KBytes)</xsl:text>
													</span>
												</th>
												<th style="text-align:center; " align="center">
													<span>
														<xsl:text>Private Usage </xsl:text>
													</span>
													<br/>
													<span>
														<xsl:text>(KBytes)</xsl:text>
													</span>
												</th>
												<th style="text-align:center; " align="center">
													<span>
														<xsl:text>Handle Count</xsl:text>
													</span>
												</th>
											</tr>
										</thead>
										<tbody>
											<xsl:for-each select="Process">
												<tr>
													<td>
														<xsl:for-each select="@Pid">
															<span>
																<xsl:value-of select="string(.)"/>
															</span>
														</xsl:for-each>
													</td>
													<td>
														<xsl:for-each select="@Name">
															<span>
																<xsl:value-of select="string(.)"/>
															</span>
														</xsl:for-each>
													</td>
													<td style="text-align:right; ">
														<xsl:choose>
															<xsl:when test="count(  Utilization/CPU/Average  ) != 0">
																<xsl:for-each select="Utilization">
																	<xsl:for-each select="CPU">
																		<xsl:for-each select="Current">
																			<xsl:apply-templates/>
																		</xsl:for-each>
																	</xsl:for-each>
																</xsl:for-each>
																<span>
																	<xsl:text>%</xsl:text>
																</span>
															</xsl:when>
															<xsl:otherwise>
																<span>
																	<xsl:text>N/A</xsl:text>
																</span>
															</xsl:otherwise>
														</xsl:choose>
													</td>
													<td style="text-align:right; ">
														<xsl:choose>
															<xsl:when test="count(  Counters/PagefileUsage/Current  ) != 0">
																<xsl:for-each select="Counters">
																	<xsl:for-each select="PagefileUsage">
																		<xsl:for-each select="Current">
																			<xsl:apply-templates/>
																		</xsl:for-each>
																	</xsl:for-each>
																</xsl:for-each>
															</xsl:when>
															<xsl:otherwise>
																<span>
																	<xsl:text>N/A</xsl:text>
																</span>
															</xsl:otherwise>
														</xsl:choose>
													</td>
													<td style="text-align:right; ">
														<xsl:choose>
															<xsl:when test="count(  Counters/PagefileUsage/Peak  ) != 0">
																<xsl:for-each select="Counters">
																	<xsl:for-each select="PagefileUsage">
																		<xsl:for-each select="Peak">
																			<xsl:apply-templates/>
																		</xsl:for-each>
																	</xsl:for-each>
																</xsl:for-each>
															</xsl:when>
															<xsl:otherwise>
																<span>
																	<xsl:text>N/A</xsl:text>
																</span>
															</xsl:otherwise>
														</xsl:choose>
													</td>
													<td style="text-align:right; ">
														<xsl:choose>
															<xsl:when test="count(  Counters/WorkingSetSize/Current  ) != 0">
																<xsl:for-each select="Counters">
																	<xsl:for-each select="WorkingSetSize">
																		<xsl:for-each select="Current">
																			<xsl:apply-templates/>
																		</xsl:for-each>
																	</xsl:for-each>
																</xsl:for-each>
															</xsl:when>
															<xsl:otherwise>
																<span>
																	<xsl:text>N/A</xsl:text>
																</span>
															</xsl:otherwise>
														</xsl:choose>
													</td>
													<td style="text-align:right; ">
														<xsl:choose>
															<xsl:when test="count(  Counters/WorkingSetSize/Peak  ) != 0">
																<xsl:for-each select="Counters">
																	<xsl:for-each select="WorkingSetSize">
																		<xsl:for-each select="Peak">
																			<xsl:apply-templates/>
																		</xsl:for-each>
																	</xsl:for-each>
																</xsl:for-each>
															</xsl:when>
															<xsl:otherwise>
																<span>
																	<xsl:text>N/A</xsl:text>
																</span>
															</xsl:otherwise>
														</xsl:choose>
													</td>
													<td style="text-align:right; ">
														<xsl:choose>
															<xsl:when test="count(  Counters/PrivateUsage  )">
																<xsl:for-each select="Counters">
																	<xsl:for-each select="PrivateUsage">
																		<xsl:apply-templates/>
																	</xsl:for-each>
																</xsl:for-each>
															</xsl:when>
															<xsl:otherwise>
																<span>
																	<xsl:text>N/A</xsl:text>
																</span>
															</xsl:otherwise>
														</xsl:choose>
													</td>
													<td style="text-align:right; ">
														<xsl:choose>
															<xsl:when test="count(  Counters/HandleCount  ) != 0">
																<xsl:for-each select="Counters">
																	<xsl:for-each select="HandleCount">
																		<xsl:apply-templates/>
																	</xsl:for-each>
																</xsl:for-each>
															</xsl:when>
															<xsl:otherwise>
																<span>
																	<xsl:text>N/A</xsl:text>
																</span>
															</xsl:otherwise>
														</xsl:choose>
													</td>
												</tr>
											</xsl:for-each>
										</tbody>
									</table>
								</xsl:for-each>
							</xsl:for-each>
						</xsl:for-each>
						<br/>
						<br/>
						<h2>
							<a>
								<xsl:attribute name="name">
									<xsl:value-of select="&apos;OS Eventlog&apos;"/>
								</xsl:attribute>
								<span>
									<xsl:text>Eventlog Errors and Warnings</xsl:text>
								</span>
							</a>
						</h2>
						<h4>
							<span>
								<xsl:text>Application Log:</xsl:text>
							</span>
						</h4>
						<span>
							<xsl:text>Count: </xsl:text>
						</span>
						<xsl:for-each select="Root">
							<xsl:for-each select="OperatingSystem">
								<xsl:for-each select="Eventlog">
									<xsl:for-each select="Application">
										<xsl:for-each select="@Count">
											<span>
												<xsl:value-of select="string(.)"/>
											</span>
										</xsl:for-each>
									</xsl:for-each>
								</xsl:for-each>
							</xsl:for-each>
						</xsl:for-each>
						<span>
							<xsl:text> (Max: </xsl:text>
						</span>
						<xsl:for-each select="Root">
							<xsl:for-each select="OperatingSystem">
								<xsl:for-each select="Eventlog">
									<xsl:for-each select="Application">
										<xsl:for-each select="@MaxCount">
											<span>
												<xsl:value-of select="string(.)"/>
											</span>
										</xsl:for-each>
									</xsl:for-each>
								</xsl:for-each>
							</xsl:for-each>
						</xsl:for-each>
						<span>
							<xsl:text>)</xsl:text>
						</span>
						<br/>
						<br/>
						<xsl:choose>
							<xsl:when test="count(  Root/OperatingSystem/Eventlog/Application/Record  ) != 0">
								<xsl:for-each select="Root">
									<xsl:for-each select="OperatingSystem">
										<xsl:for-each select="Eventlog">
											<xsl:for-each select="Application">
												<table border="1" cellpadding="2" cellspacing="0">
													<xsl:variable name="altova:CurrContextGrid_70" select="."/>
													<thead align="center">
														<tr>
															<th width="125">
																<span>
																	<xsl:text>Created</xsl:text>
																</span>
															</th>
															<th>
																<span>
																	<xsl:text>Type</xsl:text>
																</span>
															</th>
															<th>
																<span>
																	<xsl:text>Event ID</xsl:text>
																</span>
															</th>
															<th>
																<span>
																	<xsl:text>Source</xsl:text>
																</span>
															</th>
															<th>
																<span>
																	<xsl:text>Message</xsl:text>
																</span>
															</th>
														</tr>
													</thead>
													<tbody>
														<xsl:for-each select="Record">
															<tr>
																<td width="125">
																	<xsl:for-each select="@Created">
																		<span>
																			<xsl:value-of select="string(.)"/>
																		</span>
																	</xsl:for-each>
																</td>
																<td align="center">
																	<xsl:choose>
																		<xsl:when test="@Type = &quot;Error&quot;">
																			<xsl:for-each select="@Type">
																				<span style="color:red; ">
																					<xsl:value-of select="string(.)"/>
																				</span>
																			</xsl:for-each>
																		</xsl:when>
																		<xsl:when test="@Type  = &quot;Info&quot;">
																			<xsl:for-each select="@Type">
																				<span style="color:blue; ">
																					<xsl:value-of select="string(.)"/>
																				</span>
																			</xsl:for-each>
																		</xsl:when>
																		<xsl:when test="@Type = &quot;Warning&quot;">
																			<xsl:for-each select="@Type">
																				<span>
																					<xsl:value-of select="string(.)"/>
																				</span>
																			</xsl:for-each>
																		</xsl:when>
																		<xsl:otherwise>
																			<xsl:for-each select="@Type">
																				<span>
																					<xsl:value-of select="string(.)"/>
																				</span>
																			</xsl:for-each>
																		</xsl:otherwise>
																	</xsl:choose>
																</td>
																<td align="center">
																	<xsl:for-each select="@EventId">
																		<span>
																			<xsl:value-of select="string(.)"/>
																		</span>
																	</xsl:for-each>
																</td>
																<td>
																	<xsl:choose>
																		<xsl:when test="@Important  = true()">
																			<xsl:for-each select="@Source">
																				<span style="font-weight:bold; ">
																					<xsl:value-of select="string(.)"/>
																				</span>
																			</xsl:for-each>
																		</xsl:when>
																		<xsl:when test="@Important  = false()">
																			<xsl:for-each select="@Source">
																				<span>
																					<xsl:value-of select="string(.)"/>
																				</span>
																			</xsl:for-each>
																		</xsl:when>
																	</xsl:choose>
																</td>
																<td>
																	<xsl:for-each select="Message">
																		<xsl:apply-templates/>
																	</xsl:for-each>
																</td>
															</tr>
														</xsl:for-each>
													</tbody>
												</table>
											</xsl:for-each>
										</xsl:for-each>
									</xsl:for-each>
								</xsl:for-each>
							</xsl:when>
							<xsl:otherwise>
								<span>
									<xsl:text>No errors or warnings in application event log!</xsl:text>
								</span>
							</xsl:otherwise>
						</xsl:choose>
						<br/>
						<h4>
							<span>
								<xsl:text>System Log:</xsl:text>
							</span>
						</h4>
						<span>
							<xsl:text>Count: </xsl:text>
						</span>
						<xsl:for-each select="Root">
							<xsl:for-each select="OperatingSystem">
								<xsl:for-each select="Eventlog">
									<xsl:for-each select="System">
										<xsl:for-each select="@Count">
											<span>
												<xsl:value-of select="string(.)"/>
											</span>
										</xsl:for-each>
									</xsl:for-each>
								</xsl:for-each>
							</xsl:for-each>
						</xsl:for-each>
						<span>
							<xsl:text> (Max: </xsl:text>
						</span>
						<xsl:for-each select="Root">
							<xsl:for-each select="OperatingSystem">
								<xsl:for-each select="Eventlog">
									<xsl:for-each select="System">
										<xsl:for-each select="@MaxCount">
											<span>
												<xsl:value-of select="string(.)"/>
											</span>
										</xsl:for-each>
									</xsl:for-each>
								</xsl:for-each>
							</xsl:for-each>
						</xsl:for-each>
						<span>
							<xsl:text>)</xsl:text>
						</span>
						<br/>
						<br/>
						<xsl:choose>
							<xsl:when test="count(  Root/OperatingSystem/Eventlog/System/Record  ) != 0">
								<xsl:for-each select="Root">
									<xsl:for-each select="OperatingSystem">
										<xsl:for-each select="Eventlog">
											<xsl:for-each select="System">
												<table border="1" cellpadding="2" cellspacing="0">
													<xsl:variable name="altova:CurrContextGrid_71" select="."/>
													<thead align="center">
														<tr>
															<th width="125">
																<span>
																	<xsl:text>Created</xsl:text>
																</span>
															</th>
															<th>
																<span>
																	<xsl:text>Type</xsl:text>
																</span>
															</th>
															<th>
																<span>
																	<xsl:text>Event ID</xsl:text>
																</span>
															</th>
															<th>
																<span>
																	<xsl:text>Source</xsl:text>
																</span>
															</th>
															<th>
																<span>
																	<xsl:text>Message</xsl:text>
																</span>
															</th>
														</tr>
													</thead>
													<tbody>
														<xsl:for-each select="Record">
															<tr>
																<td width="125">
																	<xsl:for-each select="@Created">
																		<span>
																			<xsl:value-of select="string(.)"/>
																		</span>
																	</xsl:for-each>
																</td>
																<td align="center">
																	<xsl:choose>
																		<xsl:when test="@Type  = &quot;Error&quot;">
																			<xsl:for-each select="@Type">
																				<span style="color:red; ">
																					<xsl:value-of select="string(.)"/>
																				</span>
																			</xsl:for-each>
																		</xsl:when>
																		<xsl:when test="@Type  = &quot;Info&quot;">
																			<xsl:for-each select="@Type">
																				<span style="color:blue; ">
																					<xsl:value-of select="string(.)"/>
																				</span>
																			</xsl:for-each>
																		</xsl:when>
																		<xsl:when test="@Type = &quot;Warning&quot;">
																			<xsl:for-each select="@Type">
																				<span>
																					<xsl:value-of select="string(.)"/>
																				</span>
																			</xsl:for-each>
																		</xsl:when>
																		<xsl:otherwise>
																			<xsl:for-each select="@Type">
																				<span>
																					<xsl:value-of select="string(.)"/>
																				</span>
																			</xsl:for-each>
																		</xsl:otherwise>
																	</xsl:choose>
																</td>
																<td align="center">
																	<xsl:for-each select="@EventId">
																		<span>
																			<xsl:value-of select="string(.)"/>
																		</span>
																	</xsl:for-each>
																</td>
																<td>
																	<xsl:choose>
																		<xsl:when test="@Important = true()">
																			<xsl:for-each select="@Source">
																				<span style="font-weight:bold; ">
																					<xsl:value-of select="string(.)"/>
																				</span>
																			</xsl:for-each>
																		</xsl:when>
																		<xsl:when test="@Important =  false()">
																			<xsl:for-each select="@Source">
																				<span>
																					<xsl:value-of select="string(.)"/>
																				</span>
																			</xsl:for-each>
																		</xsl:when>
																	</xsl:choose>
																</td>
																<td>
																	<xsl:for-each select="Message">
																		<xsl:apply-templates/>
																	</xsl:for-each>
																</td>
															</tr>
														</xsl:for-each>
													</tbody>
												</table>
											</xsl:for-each>
										</xsl:for-each>
									</xsl:for-each>
								</xsl:for-each>
							</xsl:when>
							<xsl:otherwise>
								<span>
									<xsl:text>No errors or warning in system event log!</xsl:text>
								</span>
							</xsl:otherwise>
						</xsl:choose>
						<br/>
						<br/>
						<h2>
							<a>
								<xsl:attribute name="name">
									<xsl:value-of select="&apos;OS Programs&apos;"/>
								</xsl:attribute>
								<span>
									<xsl:text>Installed Programs (installed by Microsoft Installer)</xsl:text>
								</span>
							</a>
						</h2>
						<xsl:for-each select="Root">
							<xsl:for-each select="OperatingSystem">
								<xsl:for-each select="Software">
									<table border="1" cellpadding="2" cellspacing="0">
										<xsl:variable name="altova:CurrContextGrid_72" select="."/>
										<thead>
											<tr>
												<th width="240">
													<span>
														<xsl:text>Name</xsl:text>
													</span>
												</th>
												<th>
													<span>
														<xsl:text>Version</xsl:text>
													</span>
												</th>
												<th>
													<span>
														<xsl:text>Manufacturer</xsl:text>
													</span>
												</th>
												<th>
													<span>
														<xsl:text>Install Date</xsl:text>
													</span>
												</th>
												<th>
													<span>
														<xsl:text>Product Code</xsl:text>
													</span>
												</th>
												<th>
													<span>
														<xsl:text>Location</xsl:text>
													</span>
												</th>
											</tr>
										</thead>
										<tbody>
											<xsl:for-each select="Product">
												<tr>
													<td width="240">
														<xsl:for-each select="Name">
															<xsl:apply-templates/>
														</xsl:for-each>
													</td>
													<td>
														<xsl:for-each select="Version">
															<xsl:apply-templates/>
														</xsl:for-each>
													</td>
													<td>
														<xsl:for-each select="Manufacturer">
															<xsl:apply-templates/>
														</xsl:for-each>
													</td>
													<td>
														<xsl:for-each select="InstallDate">
															<xsl:apply-templates/>
														</xsl:for-each>
													</td>
													<td>
														<xsl:for-each select="@ProductCode">
															<span>
																<xsl:value-of select="string(.)"/>
															</span>
														</xsl:for-each>
													</td>
													<td>
														<xsl:choose>
															<xsl:when test="count(  Location )  != 0">
																<xsl:for-each select="Location">
																	<xsl:apply-templates/>
																</xsl:for-each>
															</xsl:when>
															<xsl:otherwise>
																<span>
																	<xsl:text>N/A</xsl:text>
																</span>
															</xsl:otherwise>
														</xsl:choose>
													</td>
												</tr>
											</xsl:for-each>
										</tbody>
									</table>
								</xsl:for-each>
							</xsl:for-each>
						</xsl:for-each>
						<br/>
						<br/>
						<h2>
							<a>
								<xsl:attribute name="name">
									<xsl:value-of select="&apos;OS Network Ports&apos;"/>
								</xsl:attribute>
								<span>
									<xsl:text>Open network ports</xsl:text>
								</span>
							</a>
						</h2>
						<xsl:for-each select="Root">
							<xsl:for-each select="Network">
								<xsl:for-each select="Ports">
									<table style="font-size:smaller; " border="1" cellpadding="2" cellspacing="0">
										<xsl:variable name="altova:CurrContextGrid_73" select="."/>
										<thead>
											<tr>
												<th>
													<span>
														<xsl:text>Protocol</xsl:text>
													</span>
												</th>
												<th>
													<span>
														<xsl:text>Interface</xsl:text>
													</span>
												</th>
												<th>
													<span>
														<xsl:text>Source Port</xsl:text>
													</span>
												</th>
												<th>
													<span>
														<xsl:text>Source Address</xsl:text>
													</span>
												</th>
												<th>
													<span>
														<xsl:text>Service</xsl:text>
													</span>
												</th>
												<th>
													<span>
														<xsl:text>DestinationPort</xsl:text>
													</span>
												</th>
												<th>
													<span>
														<xsl:text>DestinationIP</xsl:text>
													</span>
												</th>
												<th>
													<span>
														<xsl:text>Port Status</xsl:text>
													</span>
												</th>
												<th>
													<span>
														<xsl:text>PID</xsl:text>
													</span>
												</th>
												<th>
													<span>
														<xsl:text>Name</xsl:text>
													</span>
												</th>
											</tr>
										</thead>
										<tbody>
											<xsl:for-each select="Port">
												<tr>
													<td>
														<xsl:for-each select="@Protocol">
															<span>
																<xsl:value-of select="string(.)"/>
															</span>
														</xsl:for-each>
													</td>
													<td>
														<xsl:for-each select="@Interface">
															<span>
																<xsl:value-of select="string(.)"/>
															</span>
														</xsl:for-each>
													</td>
													<td>
														<xsl:for-each select="Source">
															<xsl:for-each select="Port">
																<xsl:apply-templates/>
															</xsl:for-each>
														</xsl:for-each>
													</td>
													<td>
														<xsl:for-each select="Source">
															<xsl:for-each select="IPAddress">
																<xsl:apply-templates/>
															</xsl:for-each>
														</xsl:for-each>
														<br/>
														<xsl:if test="count(Source/HostName)">
															<span>
																<xsl:text>(</xsl:text>
															</span>
															<xsl:for-each select="Source">
																<xsl:for-each select="HostName">
																	<xsl:apply-templates/>
																</xsl:for-each>
															</xsl:for-each>
															<span>
																<xsl:text>)</xsl:text>
															</span>
														</xsl:if>
													</td>
													<td>
														<xsl:for-each select="Source">
															<xsl:choose>
																<xsl:when test="count(  Source/ServiceName ) != 0">
																	<xsl:for-each select="ServiceName">
																		<xsl:apply-templates/>
																	</xsl:for-each>
																</xsl:when>
																<xsl:otherwise>
																	<span>
																		<xsl:text>N/A</xsl:text>
																	</span>
																</xsl:otherwise>
															</xsl:choose>
														</xsl:for-each>
													</td>
													<td>
														<xsl:choose>
															<xsl:when test="count( Destination/Port ) != 0">
																<xsl:for-each select="Destination">
																	<xsl:for-each select="Port">
																		<xsl:apply-templates/>
																	</xsl:for-each>
																</xsl:for-each>
															</xsl:when>
															<xsl:otherwise>
																<span>
																	<xsl:text>N/A</xsl:text>
																</span>
															</xsl:otherwise>
														</xsl:choose>
													</td>
													<td>
														<xsl:choose>
															<xsl:when test="count(  Destination/IPAddress  ) != 0">
																<xsl:for-each select="Destination">
																	<xsl:for-each select="IPAddress">
																		<xsl:apply-templates/>
																	</xsl:for-each>
																</xsl:for-each>
																<br/>
																<xsl:if test="count(Destination/HostName)">
																	<span>
																		<xsl:text>(</xsl:text>
																	</span>
																	<xsl:for-each select="Destination">
																		<xsl:for-each select="HostName">
																			<xsl:apply-templates/>
																		</xsl:for-each>
																	</xsl:for-each>
																	<span>
																		<xsl:text>)</xsl:text>
																	</span>
																</xsl:if>
															</xsl:when>
															<xsl:otherwise>
																<span>
																	<xsl:text>N/A</xsl:text>
																</span>
															</xsl:otherwise>
														</xsl:choose>
													</td>
													<td>
														<xsl:choose>
															<xsl:when test="count( Status ) != 0">
																<xsl:for-each select="Status">
																	<xsl:apply-templates/>
																</xsl:for-each>
															</xsl:when>
															<xsl:otherwise>
																<span>
																	<xsl:text>N/A</xsl:text>
																</span>
															</xsl:otherwise>
														</xsl:choose>
													</td>
													<td>
														<xsl:choose>
															<xsl:when test="count( Owner/Pid )">
																<xsl:for-each select="Owner">
																	<xsl:for-each select="Pid">
																		<xsl:apply-templates/>
																	</xsl:for-each>
																</xsl:for-each>
															</xsl:when>
															<xsl:otherwise>
																<span>
																	<xsl:text>N/A</xsl:text>
																</span>
															</xsl:otherwise>
														</xsl:choose>
													</td>
													<td>
														<xsl:choose>
															<xsl:when test="count(  Owner/Name  ) != 0">
																<xsl:for-each select="Owner">
																	<xsl:for-each select="Name">
																		<xsl:apply-templates/>
																	</xsl:for-each>
																</xsl:for-each>
															</xsl:when>
															<xsl:otherwise>
																<span>
																	<xsl:text>N/A</xsl:text>
																</span>
															</xsl:otherwise>
														</xsl:choose>
													</td>
												</tr>
											</xsl:for-each>
										</tbody>
									</table>
								</xsl:for-each>
							</xsl:for-each>
						</xsl:for-each>
						<br/>
						<br/>
						<br/>
						<h2>
							<a>
								<xsl:attribute name="name">
									<xsl:value-of select="&apos;OS SNMP&apos;"/>
								</xsl:attribute>
								<span>
									<xsl:text>SNMP</xsl:text>
								</span>
							</a>
						</h2>
						<span>
							<xsl:text>Service Status: &quot;</xsl:text>
						</span>
						<xsl:choose>
							<xsl:when test="Root/SNMP/Service/Status">
								<xsl:for-each select="Root">
									<xsl:for-each select="SNMP">
										<xsl:for-each select="Service">
											<xsl:for-each select="Status">
												<xsl:apply-templates/>
											</xsl:for-each>
										</xsl:for-each>
									</xsl:for-each>
								</xsl:for-each>
							</xsl:when>
							<xsl:otherwise>
								<span>
									<xsl:text>not installed</xsl:text>
								</span>
							</xsl:otherwise>
						</xsl:choose>
						<span>
							<xsl:text>&quot;</xsl:text>
						</span>
						<br/>
						<br/>
						<h3>
							<span>
								<xsl:text>Communities:</xsl:text>
							</span>
							<xsl:if test="Root/SNMP/Configuration/Security/Communities/@GroupPolicyControlled=&quot;true&quot;">
								<span>
									<xsl:text> (configured by Group Policies)</xsl:text>
								</span>
							</xsl:if>
						</h3>
						<xsl:choose>
							<xsl:when test="count(  Root/SNMP/Configuration/Security/Communities/Community  )">
								<table border="1" cellpadding="2" cellspacing="0">
									<xsl:variable name="altova:CurrContextGrid_74" select="."/>
									<thead>
										<tr>
											<th>
												<span>
													<xsl:text>Community Name</xsl:text>
												</span>
											</th>
											<th>
												<span>
													<xsl:text>Access</xsl:text>
												</span>
											</th>
										</tr>
									</thead>
									<tbody>
										<xsl:for-each select="Root">
											<xsl:for-each select="SNMP">
												<xsl:for-each select="Configuration">
													<xsl:for-each select="Security">
														<xsl:for-each select="Communities">
															<xsl:for-each select="Community">
																<tr>
																	<td>
																		<xsl:for-each select="@Name">
																			<span>
																				<xsl:value-of select="string(.)"/>
																			</span>
																		</xsl:for-each>
																	</td>
																	<td>
																		<xsl:for-each select="Access">
																			<xsl:apply-templates/>
																		</xsl:for-each>
																	</td>
																</tr>
															</xsl:for-each>
														</xsl:for-each>
													</xsl:for-each>
												</xsl:for-each>
											</xsl:for-each>
										</xsl:for-each>
									</tbody>
								</table>
							</xsl:when>
							<xsl:otherwise>
								<span>
									<xsl:text>No community strings are configured!</xsl:text>
								</span>
							</xsl:otherwise>
						</xsl:choose>
						<br/>
						<br/>
						<h3>
							<span>
								<xsl:text>Permitted Managers:</xsl:text>
							</span>
							<xsl:if test="Root/SNMP/Configuration/Security/PermittedManagers/@GroupPolicyControlled=&quot;true&quot;">
								<span>
									<xsl:text> (configured by Group Policies)</xsl:text>
								</span>
							</xsl:if>
						</h3>
						<xsl:choose>
							<xsl:when test="count(  Root/SNMP/Configuration/Security/PermittedManagers/PermittedManager  )">
								<table border="1" cellpadding="2" cellspacing="0">
									<xsl:variable name="altova:CurrContextGrid_75" select="."/>
									<thead>
										<tr>
											<th>
												<span>
													<xsl:text>Host Name</xsl:text>
												</span>
											</th>
										</tr>
									</thead>
									<tbody>
										<xsl:for-each select="Root">
											<xsl:for-each select="SNMP">
												<xsl:for-each select="Configuration">
													<xsl:for-each select="Security">
														<xsl:for-each select="PermittedManagers">
															<xsl:for-each select="PermittedManager">
																<tr>
																	<td>
																		<xsl:for-each select="@Name">
																			<span>
																				<xsl:value-of select="string(.)"/>
																			</span>
																		</xsl:for-each>
																	</td>
																</tr>
															</xsl:for-each>
														</xsl:for-each>
													</xsl:for-each>
												</xsl:for-each>
											</xsl:for-each>
										</xsl:for-each>
									</tbody>
								</table>
							</xsl:when>
							<xsl:otherwise>
								<span>
									<xsl:text>Access is not restricted!</xsl:text>
								</span>
							</xsl:otherwise>
						</xsl:choose>
						<br/>
						<br/>
						<h3>
							<span>
								<xsl:text>Trap Destinations:</xsl:text>
							</span>
							<xsl:if test="//Root/SNMP/Configuration/TrapDestinations/@GroupPolicyControlled=&quot;true&quot;">
								<span>
									<xsl:text> (configured by Group Policies)</xsl:text>
								</span>
							</xsl:if>
						</h3>
						<xsl:choose>
							<xsl:when test="count(Root/SNMP/Configuration/TrapDestinations/Host)">
								<xsl:for-each select="Root">
									<xsl:for-each select="SNMP">
										<xsl:for-each select="Configuration">
											<xsl:for-each select="TrapDestinations">
												<table border="1" cellpadding="2" cellspacing="0">
													<xsl:variable name="altova:CurrContextGrid_76" select="."/>
													<thead>
														<tr>
															<th width="267">
																<span>
																	<xsl:text>Host Name</xsl:text>
																</span>
															</th>
															<th width="247">
																<span>
																	<xsl:text>Community Name</xsl:text>
																</span>
															</th>
														</tr>
													</thead>
													<tbody>
														<xsl:for-each select="Host">
															<tr>
																<td width="267">
																	<xsl:for-each select="Name">
																		<xsl:apply-templates/>
																	</xsl:for-each>
																</td>
																<td width="247">
																	<xsl:for-each select="Community">
																		<xsl:apply-templates/>
																	</xsl:for-each>
																</td>
															</tr>
														</xsl:for-each>
													</tbody>
												</table>
											</xsl:for-each>
										</xsl:for-each>
									</xsl:for-each>
								</xsl:for-each>
							</xsl:when>
							<xsl:otherwise>
								<span>
									<xsl:text>No SNMP trap destinations configured!</xsl:text>
								</span>
							</xsl:otherwise>
						</xsl:choose>
						<br/>
						<br/>
						<h3>
							<span>
								<xsl:text>Installed SNMP Agents:</xsl:text>
							</span>
						</h3>
						<xsl:for-each select="Root">
							<xsl:for-each select="SNMP">
								<xsl:for-each select="Agents">
									<table border="1" cellpadding="2" cellspacing="0">
										<xsl:variable name="altova:CurrContextGrid_77" select="."/>
										<thead>
											<tr>
												<th>
													<span>
														<xsl:text>Name</xsl:text>
													</span>
												</th>
												<th>
													<span>
														<xsl:text>Description</xsl:text>
													</span>
												</th>
												<th>
													<span>
														<xsl:text>File Version</xsl:text>
													</span>
												</th>
												<th>
													<span>
														<xsl:text>Product Version</xsl:text>
													</span>
												</th>
												<th>
													<span>
														<xsl:text>Created</xsl:text>
													</span>
												</th>
												<th>
													<span>
														<xsl:text>Company Name</xsl:text>
													</span>
												</th>
												<th>
													<span>
														<xsl:text>Location</xsl:text>
													</span>
												</th>
												<th>
													<span>
														<xsl:text>Load Address</xsl:text>
													</span>
												</th>
												<th>
													<span>
														<xsl:text>Status</xsl:text>
													</span>
												</th>
											</tr>
										</thead>
										<tbody>
											<xsl:for-each select="Agent">
												<tr>
													<td>
														<xsl:for-each select="@Name">
															<span>
																<xsl:value-of select="string(.)"/>
															</span>
														</xsl:for-each>
													</td>
													<td>
														<xsl:for-each select="Version">
															<xsl:for-each select="Description">
																<xsl:apply-templates/>
															</xsl:for-each>
														</xsl:for-each>
													</td>
													<td>
														<xsl:for-each select="Version">
															<xsl:for-each select="FileVersion">
																<xsl:apply-templates/>
															</xsl:for-each>
														</xsl:for-each>
													</td>
													<td>
														<xsl:for-each select="Version">
															<xsl:for-each select="ProductVersion">
																<xsl:apply-templates/>
															</xsl:for-each>
														</xsl:for-each>
													</td>
													<td>
														<xsl:for-each select="Version">
															<xsl:for-each select="Created">
																<xsl:apply-templates/>
															</xsl:for-each>
														</xsl:for-each>
													</td>
													<td>
														<xsl:for-each select="Version">
															<xsl:for-each select="CompanyName">
																<xsl:apply-templates/>
															</xsl:for-each>
														</xsl:for-each>
													</td>
													<td>
														<xsl:for-each select="Version">
															<xsl:for-each select="Location">
																<xsl:apply-templates/>
															</xsl:for-each>
														</xsl:for-each>
													</td>
													<td align="center">
														<xsl:choose>
															<xsl:when test="count( LoadAddress )">
																<xsl:for-each select="LoadAddress">
																	<xsl:for-each select="@AsString">
																		<span>
																			<xsl:value-of select="string(.)"/>
																		</span>
																	</xsl:for-each>
																</xsl:for-each>
															</xsl:when>
															<xsl:otherwise>
																<span>
																	<xsl:text>N/A</xsl:text>
																</span>
															</xsl:otherwise>
														</xsl:choose>
													</td>
													<td align="center">
														<xsl:choose>
															<xsl:when test="count( Status ) != 0">
																<xsl:for-each select="Status">
																	<xsl:apply-templates/>
																</xsl:for-each>
															</xsl:when>
															<xsl:otherwise>
																<span>
																	<xsl:text>N/A</xsl:text>
																</span>
															</xsl:otherwise>
														</xsl:choose>
													</td>
												</tr>
											</xsl:for-each>
										</tbody>
									</table>
								</xsl:for-each>
							</xsl:for-each>
						</xsl:for-each>
						<br/>
						<h3>
							<span>
								<xsl:text>Microsoft MIB II request check</xsl:text>
							</span>
						</h3>
						<xsl:for-each select="Root">
							<xsl:for-each select="SNMP">
								<xsl:for-each select="Tests">
									<table border="1" cellpadding="2" cellspacing="0">
										<xsl:variable name="altova:CurrContextGrid_78" select="."/>
										<thead>
											<tr>
												<th>
													<span>
														<xsl:text>OID</xsl:text>
													</span>
												</th>
												<th>
													<span>
														<xsl:text>PDU</xsl:text>
													</span>
												</th>
												<th>
													<span>
														<xsl:text>Community </xsl:text>
													</span>
												</th>
												<th>
													<span>
														<xsl:text>Return Data</xsl:text>
													</span>
												</th>
												<th>
													<span>
														<xsl:text>Status</xsl:text>
													</span>
												</th>
											</tr>
										</thead>
										<tbody>
											<xsl:for-each select="Request">
												<tr style="font-weight:normal; ">
													<td>
														<xsl:for-each select="@OID">
															<span>
																<xsl:value-of select="string(.)"/>
															</span>
														</xsl:for-each>
													</td>
													<td>
														<xsl:for-each select="@PDU">
															<span>
																<xsl:value-of select="string(.)"/>
															</span>
														</xsl:for-each>
													</td>
													<td>
														<xsl:choose>
															<xsl:when test="count( Community ) != 0">
																<xsl:for-each select="Community">
																	<xsl:apply-templates/>
																</xsl:for-each>
															</xsl:when>
															<xsl:otherwise>
																<span>
																	<xsl:text>N/A</xsl:text>
																</span>
															</xsl:otherwise>
														</xsl:choose>
													</td>
													<td>
														<xsl:choose>
															<xsl:when test="count( Data )  != 0">
																<xsl:for-each select="Data">
																	<xsl:apply-templates/>
																</xsl:for-each>
															</xsl:when>
															<xsl:otherwise>
																<span>
																	<xsl:text>N/A</xsl:text>
																</span>
															</xsl:otherwise>
														</xsl:choose>
													</td>
													<td align="center">
														<xsl:for-each select="Status">
															<xsl:apply-templates/>
														</xsl:for-each>
													</td>
												</tr>
											</xsl:for-each>
										</tbody>
									</table>
								</xsl:for-each>
							</xsl:for-each>
						</xsl:for-each>
						<br/>
						<h3>
							<span>
								<xsl:text>Request response check</xsl:text>
							</span>
						</h3>
						<span>
							<xsl:text>Response time for </xsl:text>
						</span>
						<xsl:for-each select="Root">
							<xsl:for-each select="SNMP">
								<xsl:for-each select="Tests">
									<xsl:for-each select="Response">
										<xsl:for-each select="@Count">
											<span>
												<xsl:value-of select="string(.)"/>
											</span>
										</xsl:for-each>
									</xsl:for-each>
								</xsl:for-each>
							</xsl:for-each>
						</xsl:for-each>
						<span>
							<xsl:text> SNMP requests: </xsl:text>
						</span>
						<xsl:for-each select="Root">
							<xsl:for-each select="SNMP">
								<xsl:for-each select="Tests">
									<xsl:for-each select="Response">
										<xsl:for-each select="Time">
											<xsl:apply-templates/>
										</xsl:for-each>
									</xsl:for-each>
								</xsl:for-each>
							</xsl:for-each>
						</xsl:for-each>
						<span>
							<xsl:text>&#160;</xsl:text>
						</span>
						<xsl:for-each select="Root">
							<xsl:for-each select="SNMP">
								<xsl:for-each select="Tests">
									<xsl:for-each select="Response">
										<xsl:for-each select="Time">
											<xsl:for-each select="@Unit">
												<span>
													<xsl:value-of select="string(.)"/>
												</span>
											</xsl:for-each>
										</xsl:for-each>
									</xsl:for-each>
								</xsl:for-each>
							</xsl:for-each>
						</xsl:for-each>
						<br/>
						<br/>
					</xsl:if>
					<br/>
					<xsl:if test="count (Root/VersionView)">
						<br/>
						<h1>
							<span>
								<xsl:text>3. System Inventory</xsl:text>
							</span>
						</h1>
						<br/>
						<h2>
							<a>
								<xsl:attribute name="name">
									<xsl:value-of select="&apos;VersionView&apos;"/>
								</xsl:attribute>
								<span>
									<xsl:text>VersionView Data</xsl:text>
								</span>
							</a>
						</h2>
						<xsl:choose>
							<xsl:when test="count(   /Root/VersionView/ScanState   ) != 0">
								<br/>
								<span style="font-weight:bold; ">
									<xsl:text>Scan Result:</xsl:text>
								</span>
								<span>
									<xsl:text>&#160;</xsl:text>
								</span>
								<xsl:for-each select="Root">
									<xsl:for-each select="VersionView">
										<xsl:for-each select="ScanMessage">
											<xsl:apply-templates/>
										</xsl:for-each>
									</xsl:for-each>
								</xsl:for-each>
								<span>
									<xsl:text> (</xsl:text>
								</span>
								<xsl:for-each select="Root">
									<xsl:for-each select="VersionView">
										<xsl:for-each select="ScanState">
											<xsl:apply-templates/>
										</xsl:for-each>
									</xsl:for-each>
								</xsl:for-each>
								<span>
									<xsl:text>)</xsl:text>
								</span>
								<br/>
								<br/>
								<xsl:for-each select="Root">
									<xsl:for-each select="VersionView">
										<xsl:for-each select="Components">
											<table border="1" cellpadding="2" cellspacing="0">
												<xsl:variable name="altova:CurrContextGrid_79" select="."/>
												<thead>
													<tr>
														<th>
															<span>
																<xsl:text>Type Name</xsl:text>
															</span>
														</th>
														<th>
															<span>
																<xsl:text>Vendor</xsl:text>
															</span>
														</th>
														<th>
															<span>
																<xsl:text>Name</xsl:text>
															</span>
														</th>
														<th>
															<span>
																<xsl:text>Part Number</xsl:text>
															</span>
														</th>
														<th>
															<span>
																<xsl:text>Description</xsl:text>
															</span>
														</th>
														<th>
															<span>
																<xsl:text>Manufacturing Date</xsl:text>
															</span>
														</th>
														<th>
															<span>
																<xsl:text>Version</xsl:text>
															</span>
														</th>
														<th>
															<span>
																<xsl:text>Serial Number</xsl:text>
															</span>
														</th>
														<th>
															<span>
																<xsl:text>Language</xsl:text>
															</span>
														</th>
														<th>
															<span>
																<xsl:text>Unique ID</xsl:text>
															</span>
														</th>
													</tr>
												</thead>
												<tbody>
													<xsl:for-each select="Component">
														<tr>
															<td>
																<xsl:for-each select="@TypeName">
																	<span>
																		<xsl:value-of select="string(.)"/>
																	</span>
																</xsl:for-each>
															</td>
															<td>
																<xsl:for-each select="Vendor">
																	<xsl:apply-templates/>
																</xsl:for-each>
															</td>
															<td>
																<xsl:for-each select="Name">
																	<xsl:apply-templates/>
																</xsl:for-each>
															</td>
															<td>
																<xsl:for-each select="PartNumber">
																	<xsl:apply-templates/>
																</xsl:for-each>
															</td>
															<td>
																<xsl:for-each select="Description">
																	<xsl:apply-templates/>
																</xsl:for-each>
															</td>
															<td>
																<xsl:for-each select="ManufacturingDate">
																	<xsl:apply-templates/>
																</xsl:for-each>
															</td>
															<td>
																<xsl:for-each select="Version">
																	<xsl:apply-templates/>
																</xsl:for-each>
															</td>
															<td>
																<xsl:for-each select="SerialNumber">
																	<xsl:apply-templates/>
																</xsl:for-each>
															</td>
															<td>
																<xsl:for-each select="Language">
																	<xsl:apply-templates/>
																</xsl:for-each>
															</td>
															<td>
																<xsl:for-each select="UniqueID">
																	<xsl:apply-templates/>
																</xsl:for-each>
															</td>
														</tr>
													</xsl:for-each>
												</tbody>
											</table>
										</xsl:for-each>
									</xsl:for-each>
								</xsl:for-each>
							</xsl:when>
							<xsl:otherwise>
								<span>
									<xsl:text>VersionView data not available</xsl:text>
								</span>
							</xsl:otherwise>
						</xsl:choose>
						<br/>
						<br/>
					</xsl:if>
					<br/>
					<h1>
						<span>
							<xsl:text>4. Software</xsl:text>
						</span>
					</h1>
					<br/>
					<h2>
						<a>
							<xsl:attribute name="name">
								<xsl:value-of select="&apos;ServerView Agents&apos;"/>
							</xsl:attribute>
							<span>
								<xsl:text>ServerView SNMP Agents</xsl:text>
							</span>
						</a>
					</h2>
					<xsl:choose>
						<xsl:when test="count(  /Root/Software/ServerView/SNMPAgents/ProductVersion  ) != 0">
							<span>
								<xsl:text>Product Version: </xsl:text>
							</span>
							<xsl:for-each select="Root">
								<xsl:for-each select="Software">
									<xsl:for-each select="ServerView">
										<xsl:for-each select="SNMPAgents">
											<xsl:for-each select="ProductVersion">
												<xsl:apply-templates/>
											</xsl:for-each>
										</xsl:for-each>
									</xsl:for-each>
								</xsl:for-each>
							</xsl:for-each>
							<br/>
							<br/>
							<h3>
								<span style="font-weight:bold; ">
									<xsl:text>Security:</xsl:text>
								</span>
							</h3>
							<xsl:for-each select="Root">
								<xsl:for-each select="Software">
									<xsl:for-each select="ServerView">
										<xsl:for-each select="SNMPAgents">
											<table border="0" class="TableWithoutBorder">
												<xsl:variable name="altova:CurrContextGrid_80" select="."/>
												<tbody>
													<tr>
														<td width="125">
															<span>
																<xsl:text>Settings allowed:</xsl:text>
															</span>
														</td>
														<xsl:for-each select="Security">
															<td>
																<xsl:for-each select="SetAllowed">
																	<xsl:apply-templates/>
																</xsl:for-each>
															</td>
														</xsl:for-each>
													</tr>
													<tr>
														<td width="125">
															<span>
																<xsl:text>Account check:</xsl:text>
															</span>
														</td>
														<xsl:for-each select="Security">
															<td>
																<xsl:for-each select="AccountCheck">
																	<xsl:apply-templates/>
																</xsl:for-each>
															</td>
														</xsl:for-each>
													</tr>
													<tr>
														<td width="125">
															<span>
																<xsl:text>User group:</xsl:text>
															</span>
														</td>
														<xsl:for-each select="Security">
															<td>
																<xsl:choose>
																	<xsl:when test="count( Security ) != 0">
																		<xsl:for-each select="UserGroup">
																			<xsl:apply-templates/>
																		</xsl:for-each>
																	</xsl:when>
																	<xsl:otherwise>
																		<span>
																			<xsl:text>&lt;not set&gt;</xsl:text>
																		</span>
																	</xsl:otherwise>
																</xsl:choose>
															</td>
														</xsl:for-each>
													</tr>
												</tbody>
											</table>
										</xsl:for-each>
									</xsl:for-each>
								</xsl:for-each>
							</xsl:for-each>
							<br/>
							<h3>
								<span>
									<xsl:text>System Status Tree:</xsl:text>
								</span>
							</h3>
							<table border="0" class="TableWithoutBorder">
								<xsl:variable name="altova:CurrContextGrid_81" select="."/>
								<tbody>
									<tr>
										<td width="156">
											<span>
												<xsl:text>System Summary Status:</xsl:text>
											</span>
										</td>
										<td width="935">
											<xsl:for-each select="Root">
												<xsl:for-each select="Software">
													<xsl:for-each select="ServerView">
														<xsl:for-each select="SNMPAgents">
															<xsl:for-each select="StatusTree">
																<xsl:for-each select="System">
																	<xsl:for-each select="Status">
																		<xsl:apply-templates/>
																	</xsl:for-each>
																</xsl:for-each>
															</xsl:for-each>
														</xsl:for-each>
													</xsl:for-each>
												</xsl:for-each>
											</xsl:for-each>
											<span>
												<xsl:text> (</xsl:text>
											</span>
											<xsl:for-each select="Root">
												<xsl:for-each select="Software">
													<xsl:for-each select="ServerView">
														<xsl:for-each select="SNMPAgents">
															<xsl:for-each select="StatusTree">
																<xsl:for-each select="System">
																	<xsl:for-each select="Status">
																		<xsl:for-each select="@Description">
																			<span>
																				<xsl:value-of select="string(.)"/>
																			</span>
																		</xsl:for-each>
																	</xsl:for-each>
																</xsl:for-each>
															</xsl:for-each>
														</xsl:for-each>
													</xsl:for-each>
												</xsl:for-each>
											</xsl:for-each>
											<span>
												<xsl:text>)</xsl:text>
											</span>
										</td>
									</tr>
								</tbody>
							</table>
							<br/>
							<xsl:if test="count(   Root/Software/ServerView/SNMPAgents/StatusTree/Subsystem  ) !=  0">
								<xsl:for-each select="Root">
									<xsl:for-each select="Software">
										<xsl:for-each select="ServerView">
											<xsl:for-each select="SNMPAgents">
												<xsl:for-each select="StatusTree">
													<table style="table-layout:fixed; " border="1" cellpadding="2" cellspacing="0">
														<xsl:variable name="altova:CurrContextGrid_82" select="."/>
														<thead>
															<tr>
																<th>
																	<span>
																		<xsl:text>Name</xsl:text>
																	</span>
																</th>
																<th>
																	<span>
																		<xsl:text>Component</xsl:text>
																	</span>
																</th>
															</tr>
														</thead>
														<tbody>
															<xsl:for-each select="Subsystem">
																<tr>
																	<td>
																		<xsl:for-each select="@Name">
																			<span>
																				<xsl:value-of select="string(.)"/>
																			</span>
																		</xsl:for-each>
																	</td>
																	<td>
																		<table border="0" cellpadding="2" cellspacing="0">
																			<xsl:variable name="altova:CurrContextGrid_83" select="."/>
																			<tbody>
																				<xsl:for-each select="Component">
																					<tr>
																						<td width="301">
																							<xsl:for-each select="@Name">
																								<span>
																									<xsl:value-of select="string(.)"/>
																								</span>
																							</xsl:for-each>
																						</td>
																						<td align="center" valign="middle" width="220">
																							<xsl:for-each select="Status">
																								<xsl:apply-templates/>
																							</xsl:for-each>
																							<span>
																								<xsl:text> (</xsl:text>
																							</span>
																							<xsl:for-each select="Status">
																								<xsl:for-each select="@Description">
																									<span>
																										<xsl:value-of select="string(.)"/>
																									</span>
																								</xsl:for-each>
																							</xsl:for-each>
																							<span>
																								<xsl:text>)</xsl:text>
																							</span>
																						</td>
																					</tr>
																				</xsl:for-each>
																			</tbody>
																		</table>
																	</td>
																</tr>
															</xsl:for-each>
														</tbody>
													</table>
												</xsl:for-each>
											</xsl:for-each>
										</xsl:for-each>
									</xsl:for-each>
								</xsl:for-each>
							</xsl:if>
							<h3>
								<span>
									<xsl:text>S.M.A.R.T</xsl:text>
								</span>
							</h3>
							<span>
								<xsl:text>Enabled: </xsl:text>
							</span>
							<xsl:for-each select="Root">
								<xsl:for-each select="Software">
									<xsl:for-each select="ServerView">
										<xsl:for-each select="SNMPAgents">
											<xsl:for-each select="SMART">
												<xsl:for-each select="HD_MIB">
													<xsl:for-each select="Enabled">
														<xsl:apply-templates/>
													</xsl:for-each>
												</xsl:for-each>
											</xsl:for-each>
										</xsl:for-each>
									</xsl:for-each>
								</xsl:for-each>
							</xsl:for-each>
							<br/>
							<br/>
							<xsl:if test="count(  Root/Software/ServerView/SNMPAgents/MIBWalk  )">
								<h3>
									<span>
										<xsl:text>SNMP Walk</xsl:text>
									</span>
								</h3>
								<table style="background-color:transparent; " border="0" class="TableWithoutBorder">
									<xsl:variable name="altova:CurrContextGrid_84" select="."/>
									<tbody>
										<xsl:for-each select="Root">
											<xsl:for-each select="Software">
												<xsl:for-each select="ServerView">
													<xsl:for-each select="SNMPAgents">
														<xsl:for-each select="MIBWalk">
															<xsl:for-each select="Agent">
																<tr>
																	<td>
																		<table style="background-color:transparent; " border="0" cellpadding="2" cellspacing="0" width="100%">
																			<xsl:variable name="altova:CurrContextGrid_85" select="."/>
																			<tbody>
																				<tr style="background-color:transparent; font-weight:bold; ">
																					<td>
																						<xsl:for-each select="@Name">
																							<span>
																								<xsl:value-of select="string(.)"/>
																							</span>
																						</xsl:for-each>
																						<span>
																							<xsl:text> MIB</xsl:text>
																						</span>
																						<br/>
																						<span>
																							<xsl:text>Root OID: </xsl:text>
																						</span>
																						<xsl:for-each select="@RootOid">
																							<span>
																								<xsl:value-of select="string(.)"/>
																							</span>
																						</xsl:for-each>
																						<br/>
																						<br/>
																					</td>
																				</tr>
																				<tr>
																					<td>
																						<table border="1" cellpadding="2" cellspacing="0">
																							<xsl:variable name="altova:CurrContextGrid_86" select="."/>
																							<thead>
																								<tr>
																									<th style="text-align:center; ">
																										<span>
																											<xsl:text>Status</xsl:text>
																										</span>
																									</th>
																									<th style="text-align:center; ">
																										<span>
																											<xsl:text>Oid</xsl:text>
																										</span>
																									</th>
																									<th>
																										<span>
																											<xsl:text>Type</xsl:text>
																										</span>
																									</th>
																									<th>
																										<span>
																											<xsl:text>Value</xsl:text>
																										</span>
																									</th>
																								</tr>
																							</thead>
																							<tbody>
																								<xsl:for-each select="Object">
																									<tr>
																										<td style="text-align:center; ">
																											<xsl:for-each select="Status">
																												<xsl:apply-templates/>
																											</xsl:for-each>
																										</td>
																										<td style="text-align:left; ">
																											<xsl:for-each select="Oid">
																												<xsl:apply-templates/>
																											</xsl:for-each>
																										</td>
																										<td>
																											<xsl:for-each select="Type">
																												<xsl:for-each select="@AsString">
																													<span>
																														<xsl:value-of select="string(.)"/>
																													</span>
																												</xsl:for-each>
																											</xsl:for-each>
																										</td>
																										<td>
																											<xsl:choose>
																												<xsl:when test="count(  Value  )">
																													<xsl:for-each select="Value">
																														<xsl:apply-templates/>
																													</xsl:for-each>
																												</xsl:when>
																												<xsl:otherwise>
																													<span>
																														<xsl:text>N/A</xsl:text>
																													</span>
																												</xsl:otherwise>
																											</xsl:choose>
																										</td>
																									</tr>
																								</xsl:for-each>
																							</tbody>
																						</table>
																					</td>
																				</tr>
																				<tr style="height:20px; ">
																					<td/>
																				</tr>
																			</tbody>
																		</table>
																	</td>
																</tr>
															</xsl:for-each>
														</xsl:for-each>
													</xsl:for-each>
												</xsl:for-each>
											</xsl:for-each>
										</xsl:for-each>
									</tbody>
								</table>
							</xsl:if>
							<br/>
						</xsl:when>
						<xsl:otherwise>
							<span>
								<xsl:text>ServerView Agents are not installed</xsl:text>
							</span>
						</xsl:otherwise>
					</xsl:choose>
					<xsl:if test="count (Root/Software/ServerView/ServerControl)">
						<h2>
							<a>
								<xsl:attribute name="name">
									<xsl:value-of select="&apos;ServerControl&apos;"/>
								</xsl:attribute>
								<span>
									<xsl:text>ServerView Server Control</xsl:text>
								</span>
							</a>
						</h2>
						<table border="0" cellpadding="2" cellspacing="0" class="TableWithoutBorder" width="100%">
							<xsl:variable name="altova:CurrContextGrid_87" select="."/>
							<tbody>
								<tr>
									<td width="120">
										<span>
											<xsl:text>Product Version:</xsl:text>
										</span>
									</td>
									<td>
										<xsl:for-each select="Root">
											<xsl:for-each select="Software">
												<xsl:for-each select="ServerView">
													<xsl:for-each select="ServerControl">
														<xsl:for-each select="ProductVersion">
															<xsl:apply-templates/>
														</xsl:for-each>
													</xsl:for-each>
												</xsl:for-each>
											</xsl:for-each>
										</xsl:for-each>
									</td>
								</tr>
								<tr>
									<td width="120">
										<span>
											<xsl:text>Service Status:</xsl:text>
										</span>
									</td>
									<td>
										<span>
											<xsl:text>&quot;</xsl:text>
										</span>
										<xsl:for-each select="Root">
											<xsl:for-each select="Software">
												<xsl:for-each select="ServerView">
													<xsl:for-each select="ServerControl">
														<xsl:for-each select="Service">
															<xsl:for-each select="Status">
																<xsl:apply-templates/>
															</xsl:for-each>
														</xsl:for-each>
													</xsl:for-each>
												</xsl:for-each>
											</xsl:for-each>
										</xsl:for-each>
										<span>
											<xsl:text>&quot;</xsl:text>
										</span>
									</td>
								</tr>
								<tr>
									<td width="120">
										<span>
											<xsl:text>DCOM registered:</xsl:text>
										</span>
									</td>
									<td>
										<xsl:for-each select="Root">
											<xsl:for-each select="Software">
												<xsl:for-each select="ServerView">
													<xsl:for-each select="ServerControl">
														<xsl:for-each select="DCOM">
															<xsl:for-each select="Registered">
																<xsl:apply-templates/>
															</xsl:for-each>
														</xsl:for-each>
													</xsl:for-each>
												</xsl:for-each>
											</xsl:for-each>
										</xsl:for-each>
									</td>
								</tr>
							</tbody>
						</table>
						<br/>
						<h3>
							<span>
								<xsl:text>Registered Extension Modules:</xsl:text>
							</span>
						</h3>
						<xsl:choose>
							<xsl:when test="count(  Root/Software/ServerView/ServerControl/Modules/Module  )  != 0">
								<xsl:for-each select="Root">
									<xsl:for-each select="Software">
										<xsl:for-each select="ServerView">
											<xsl:for-each select="ServerControl">
												<xsl:for-each select="Modules">
													<table border="1" cellpadding="2" cellspacing="0">
														<xsl:variable name="altova:CurrContextGrid_88" select="."/>
														<thead>
															<tr>
																<th>
																	<span>
																		<xsl:text>Name</xsl:text>
																	</span>
																</th>
																<th style="text-align:center; ">
																	<span>
																		<xsl:text>Installed</xsl:text>
																	</span>
																</th>
																<th style="text-align:center; ">
																	<span>
																		<xsl:text>Detected</xsl:text>
																	</span>
																</th>
																<th style="text-align:center; ">
																	<span>
																		<xsl:text>Status</xsl:text>
																	</span>
																</th>
																<th>
																	<span>
																		<xsl:text>Description</xsl:text>
																	</span>
																</th>
																<th style="text-align:center; ">
																	<span>
																		<xsl:text>File Version</xsl:text>
																	</span>
																</th>
																<th style="text-align:center; ">
																	<span>
																		<xsl:text>Product Version</xsl:text>
																	</span>
																</th>
																<th>
																	<span>
																		<xsl:text>Created</xsl:text>
																	</span>
																</th>
																<th>
																	<span>
																		<xsl:text>Location</xsl:text>
																	</span>
																</th>
																<th>
																	<span>
																		<xsl:text>Load Address</xsl:text>
																	</span>
																</th>
															</tr>
														</thead>
														<tbody>
															<xsl:for-each select="Module">
																<tr>
																	<td>
																		<xsl:for-each select="@Name">
																			<span>
																				<xsl:value-of select="string(.)"/>
																			</span>
																		</xsl:for-each>
																	</td>
																	<td style="text-align:center; ">
																		<xsl:choose>
																			<xsl:when test="Installed  != 0">
																				<span>
																					<xsl:text>yes (</xsl:text>
																				</span>
																				<xsl:for-each select="Installed">
																					<xsl:apply-templates/>
																				</xsl:for-each>
																				<span>
																					<xsl:text>)</xsl:text>
																				</span>
																			</xsl:when>
																			<xsl:otherwise>
																				<span>
																					<xsl:text>no</xsl:text>
																				</span>
																			</xsl:otherwise>
																		</xsl:choose>
																	</td>
																	<td style="text-align:center; ">
																		<xsl:choose>
																			<xsl:when test="count( Detected ) != 0">
																				<xsl:for-each select="Detected">
																					<xsl:apply-templates/>
																				</xsl:for-each>
																			</xsl:when>
																			<xsl:otherwise>
																				<span>
																					<xsl:text>N/A</xsl:text>
																				</span>
																			</xsl:otherwise>
																		</xsl:choose>
																	</td>
																	<td style="text-align:center; ">
																		<xsl:choose>
																			<xsl:when test="count( Status )  != 0">
																				<xsl:for-each select="Status">
																					<xsl:apply-templates/>
																				</xsl:for-each>
																			</xsl:when>
																			<xsl:otherwise>
																				<span>
																					<xsl:text>N/A</xsl:text>
																				</span>
																			</xsl:otherwise>
																		</xsl:choose>
																	</td>
																	<td>
																		<xsl:choose>
																			<xsl:when test="count(  Version/Description  ) != 0">
																				<xsl:for-each select="Version">
																					<xsl:for-each select="Description">
																						<xsl:apply-templates/>
																					</xsl:for-each>
																				</xsl:for-each>
																			</xsl:when>
																			<xsl:otherwise>
																				<span>
																					<xsl:text>N/A</xsl:text>
																				</span>
																			</xsl:otherwise>
																		</xsl:choose>
																	</td>
																	<td style="text-align:center; ">
																		<xsl:choose>
																			<xsl:when test="count(  Version/FileVersion  ) != 0">
																				<xsl:for-each select="Version">
																					<xsl:for-each select="FileVersion">
																						<xsl:apply-templates/>
																					</xsl:for-each>
																				</xsl:for-each>
																			</xsl:when>
																			<xsl:otherwise>
																				<span>
																					<xsl:text>N/A</xsl:text>
																				</span>
																			</xsl:otherwise>
																		</xsl:choose>
																	</td>
																	<td style="text-align:center; ">
																		<xsl:choose>
																			<xsl:when test="count(  Version/ProductVersion  ) != 0">
																				<xsl:for-each select="Version">
																					<xsl:for-each select="ProductVersion">
																						<xsl:apply-templates/>
																					</xsl:for-each>
																				</xsl:for-each>
																			</xsl:when>
																			<xsl:otherwise>
																				<span>
																					<xsl:text>N/A</xsl:text>
																				</span>
																			</xsl:otherwise>
																		</xsl:choose>
																	</td>
																	<td>
																		<xsl:choose>
																			<xsl:when test="count(  Version/Created  ) != 0">
																				<xsl:for-each select="Version">
																					<xsl:for-each select="Created">
																						<xsl:apply-templates/>
																					</xsl:for-each>
																				</xsl:for-each>
																			</xsl:when>
																			<xsl:otherwise>
																				<span>
																					<xsl:text>N/A</xsl:text>
																				</span>
																			</xsl:otherwise>
																		</xsl:choose>
																	</td>
																	<td>
																		<xsl:choose>
																			<xsl:when test="count(  Version/Location  ) !=0">
																				<xsl:for-each select="Version">
																					<xsl:for-each select="Location">
																						<xsl:apply-templates/>
																					</xsl:for-each>
																				</xsl:for-each>
																			</xsl:when>
																			<xsl:otherwise>
																				<span>
																					<xsl:text>N/A</xsl:text>
																				</span>
																			</xsl:otherwise>
																		</xsl:choose>
																	</td>
																	<td>
																		<xsl:choose>
																			<xsl:when test="count( LoadAddress )">
																				<xsl:for-each select="LoadAddress">
																					<xsl:for-each select="@AsString">
																						<span>
																							<xsl:value-of select="string(.)"/>
																						</span>
																					</xsl:for-each>
																				</xsl:for-each>
																			</xsl:when>
																			<xsl:otherwise>
																				<span>
																					<xsl:text>N/A</xsl:text>
																				</span>
																			</xsl:otherwise>
																		</xsl:choose>
																	</td>
																</tr>
															</xsl:for-each>
														</tbody>
													</table>
												</xsl:for-each>
											</xsl:for-each>
										</xsl:for-each>
									</xsl:for-each>
								</xsl:for-each>
							</xsl:when>
							<xsl:otherwise>
								<span>
									<xsl:text>No registered extension modules found!</xsl:text>
								</span>
							</xsl:otherwise>
						</xsl:choose>
						<br/>
						<h3>
							<span>
								<xsl:text>Registered Drivers:</xsl:text>
							</span>
						</h3>
						<xsl:choose>
							<xsl:when test="count(  /Root/Software/ServerView/ServerControl/Drivers/Driver  )  != 0">
								<xsl:for-each select="Root">
									<xsl:for-each select="Software">
										<xsl:for-each select="ServerView">
											<xsl:for-each select="ServerControl">
												<xsl:for-each select="Drivers">
													<table border="1" cellpadding="2" cellspacing="0">
														<xsl:variable name="altova:CurrContextGrid_89" select="."/>
														<thead>
															<tr>
																<th>
																	<span>
																		<xsl:text>Name</xsl:text>
																	</span>
																</th>
																<th>
																	<span>
																		<xsl:text>Status</xsl:text>
																	</span>
																</th>
																<th width="241">
																	<span>
																		<xsl:text>Description</xsl:text>
																	</span>
																</th>
																<th style="text-align:center; ">
																	<span>
																		<xsl:text>File Version</xsl:text>
																	</span>
																</th>
																<th style="text-align:center; ">
																	<span>
																		<xsl:text>Product Version</xsl:text>
																	</span>
																</th>
																<th>
																	<span>
																		<xsl:text>Created</xsl:text>
																	</span>
																</th>
																<th>
																	<span>
																		<xsl:text>Location</xsl:text>
																	</span>
																</th>
															</tr>
														</thead>
														<tbody>
															<xsl:for-each select="Driver">
																<tr>
																	<td>
																		<xsl:for-each select="@Name">
																			<span>
																				<xsl:value-of select="string(.)"/>
																			</span>
																		</xsl:for-each>
																	</td>
																	<td align="center">
																		<xsl:choose>
																			<xsl:when test="count( Status ) != 0">
																				<xsl:for-each select="Status">
																					<xsl:apply-templates/>
																				</xsl:for-each>
																			</xsl:when>
																			<xsl:otherwise>
																				<span>
																					<xsl:text>not installed</xsl:text>
																				</span>
																			</xsl:otherwise>
																		</xsl:choose>
																	</td>
																	<td width="241">
																		<xsl:choose>
																			<xsl:when test="count( Version/Description )  != 0">
																				<xsl:for-each select="Version">
																					<xsl:for-each select="Description">
																						<xsl:apply-templates/>
																					</xsl:for-each>
																				</xsl:for-each>
																			</xsl:when>
																			<xsl:otherwise>
																				<span>
																					<xsl:text>N/A</xsl:text>
																				</span>
																			</xsl:otherwise>
																		</xsl:choose>
																	</td>
																	<td style="text-align:center; ">
																		<xsl:choose>
																			<xsl:when test="count( Version/FileVersion ) != 0">
																				<xsl:for-each select="Version">
																					<xsl:for-each select="FileVersion">
																						<xsl:apply-templates/>
																					</xsl:for-each>
																				</xsl:for-each>
																			</xsl:when>
																			<xsl:otherwise>
																				<span>
																					<xsl:text>N/A</xsl:text>
																				</span>
																			</xsl:otherwise>
																		</xsl:choose>
																	</td>
																	<td style="text-align:center; ">
																		<xsl:choose>
																			<xsl:when test="count( Version/ProductVersion ) != 0">
																				<xsl:for-each select="Version">
																					<xsl:for-each select="ProductVersion">
																						<xsl:apply-templates/>
																					</xsl:for-each>
																				</xsl:for-each>
																			</xsl:when>
																			<xsl:otherwise>
																				<span>
																					<xsl:text>N/A</xsl:text>
																				</span>
																			</xsl:otherwise>
																		</xsl:choose>
																	</td>
																	<td>
																		<xsl:choose>
																			<xsl:when test="count( Version/Created ) != 0">
																				<xsl:for-each select="Version">
																					<xsl:for-each select="Created">
																						<xsl:apply-templates/>
																					</xsl:for-each>
																				</xsl:for-each>
																			</xsl:when>
																			<xsl:otherwise>
																				<span>
																					<xsl:text>N/A</xsl:text>
																				</span>
																			</xsl:otherwise>
																		</xsl:choose>
																	</td>
																	<td>
																		<xsl:choose>
																			<xsl:when test="count( Version/Location ) != 0">
																				<xsl:for-each select="Version">
																					<xsl:for-each select="Location">
																						<xsl:apply-templates/>
																					</xsl:for-each>
																				</xsl:for-each>
																			</xsl:when>
																			<xsl:otherwise>
																				<span>
																					<xsl:text>N/A</xsl:text>
																				</span>
																			</xsl:otherwise>
																		</xsl:choose>
																	</td>
																</tr>
															</xsl:for-each>
														</tbody>
													</table>
												</xsl:for-each>
											</xsl:for-each>
										</xsl:for-each>
									</xsl:for-each>
								</xsl:for-each>
							</xsl:when>
							<xsl:otherwise>
								<span>
									<xsl:text>No registered drivers found!</xsl:text>
								</span>
							</xsl:otherwise>
						</xsl:choose>
						<br/>
						<br/>
						<h3>
							<span>
								<xsl:text>Connect Status:</xsl:text>
							</span>
						</h3>
						<xsl:for-each select="Root">
							<xsl:for-each select="Software">
								<xsl:for-each select="ServerView">
									<xsl:for-each select="ServerControl">
										<xsl:for-each select="Tests">
											<xsl:for-each select="Connect">
												<xsl:for-each select="Status">
													<xsl:apply-templates/>
												</xsl:for-each>
											</xsl:for-each>
										</xsl:for-each>
									</xsl:for-each>
								</xsl:for-each>
							</xsl:for-each>
						</xsl:for-each>
						<span>
							<xsl:text> (</xsl:text>
						</span>
						<xsl:for-each select="Root">
							<xsl:for-each select="Software">
								<xsl:for-each select="ServerView">
									<xsl:for-each select="ServerControl">
										<xsl:for-each select="Tests">
											<xsl:for-each select="Connect">
												<xsl:for-each select="LastError">
													<xsl:apply-templates/>
												</xsl:for-each>
											</xsl:for-each>
										</xsl:for-each>
									</xsl:for-each>
								</xsl:for-each>
							</xsl:for-each>
						</xsl:for-each>
						<span>
							<xsl:text>: </xsl:text>
						</span>
						<xsl:for-each select="Root">
							<xsl:for-each select="Software">
								<xsl:for-each select="ServerView">
									<xsl:for-each select="ServerControl">
										<xsl:for-each select="Tests">
											<xsl:for-each select="Connect">
												<xsl:for-each select="LastErrorMsg">
													<xsl:apply-templates/>
												</xsl:for-each>
											</xsl:for-each>
										</xsl:for-each>
									</xsl:for-each>
								</xsl:for-each>
							</xsl:for-each>
						</xsl:for-each>
						<span>
							<xsl:text>)</xsl:text>
						</span>
						<br/>
						<h3>
							<span>
								<xsl:text>Important values:</xsl:text>
							</span>
						</h3>
						<xsl:for-each select="Root">
							<xsl:for-each select="Software">
								<xsl:for-each select="ServerView">
									<xsl:for-each select="ServerControl">
										<xsl:for-each select="Tests">
											<table border="0" cellpadding="2" cellspacing="0" class="TableWithoutBorder">
												<xsl:variable name="altova:CurrContextGrid_90" select="."/>
												<tbody>
													<tr>
														<td width="162">
															<span>
																<xsl:text>Server Cabinet Number</xsl:text>
															</span>
														</td>
														<xsl:for-each select="Requests">
															<td>
																<xsl:for-each select="ServerCabinetNr">
																	<xsl:apply-templates/>
																</xsl:for-each>
															</td>
														</xsl:for-each>
													</tr>
													<tr>
														<td width="162">
															<span>
																<xsl:text>Server Model</xsl:text>
															</span>
														</td>
														<xsl:for-each select="Requests">
															<td>
																<xsl:for-each select="ServerModel">
																	<xsl:apply-templates/>
																</xsl:for-each>
															</td>
														</xsl:for-each>
													</tr>
													<tr>
														<td width="162">
															<span>
																<xsl:text>Chassis Model</xsl:text>
															</span>
														</td>
														<xsl:for-each select="Requests">
															<td>
																<xsl:for-each select="ChassisModel">
																	<xsl:apply-templates/>
																</xsl:for-each>
															</td>
														</xsl:for-each>
													</tr>
													<tr>
														<td width="162">
															<span>
																<xsl:text>Cabinet Serial Number</xsl:text>
															</span>
														</td>
														<xsl:for-each select="Requests">
															<td>
																<xsl:for-each select="CabinetSerialNumber">
																	<xsl:apply-templates/>
																</xsl:for-each>
															</td>
														</xsl:for-each>
													</tr>
													<tr>
														<td width="162">
															<span>
																<xsl:text>System Board</xsl:text>
															</span>
														</td>
														<xsl:for-each select="Requests">
															<td>
																<xsl:for-each select="Systemboard">
																	<xsl:apply-templates/>
																</xsl:for-each>
															</td>
														</xsl:for-each>
													</tr>
													<tr>
														<td width="162">
															<span>
																<xsl:text>Controller Model</xsl:text>
															</span>
														</td>
														<xsl:for-each select="Requests">
															<td>
																<xsl:choose>
																	<xsl:when test="count(ControllerModel)">
																		<xsl:for-each select="ControllerModel">
																			<xsl:apply-templates/>
																		</xsl:for-each>
																	</xsl:when>
																	<xsl:otherwise>
																		<span>
																			<xsl:text>N/A</xsl:text>
																		</span>
																	</xsl:otherwise>
																</xsl:choose>
															</td>
														</xsl:for-each>
													</tr>
													<tr>
														<td width="162">
															<span>
																<xsl:text>Controller Firmware</xsl:text>
															</span>
														</td>
														<xsl:for-each select="Requests">
															<td>
																<xsl:choose>
																	<xsl:when test="count (ControllerFirmware)">
																		<xsl:for-each select="ControllerFirmware">
																			<xsl:apply-templates/>
																		</xsl:for-each>
																	</xsl:when>
																	<xsl:otherwise>
																		<span>
																			<xsl:text>N/A</xsl:text>
																		</span>
																	</xsl:otherwise>
																</xsl:choose>
															</td>
														</xsl:for-each>
													</tr>
													<tr>
														<td width="162">
															<span>
																<xsl:text>System Time</xsl:text>
															</span>
														</td>
														<xsl:for-each select="Requests">
															<td>
																<xsl:for-each select="SystemTime">
																	<xsl:apply-templates/>
																</xsl:for-each>
															</td>
														</xsl:for-each>
													</tr>
													<tr>
														<td width="162">
															<span>
																<xsl:text>Controller Time</xsl:text>
															</span>
														</td>
														<xsl:for-each select="Requests">
															<td>
																<xsl:choose>
																	<xsl:when test="count (ControllerTime)">
																		<xsl:for-each select="ControllerTime">
																			<xsl:apply-templates/>
																		</xsl:for-each>
																	</xsl:when>
																	<xsl:otherwise>
																		<span>
																			<xsl:text>N/A</xsl:text>
																		</span>
																	</xsl:otherwise>
																</xsl:choose>
															</td>
														</xsl:for-each>
													</tr>
												</tbody>
											</table>
										</xsl:for-each>
									</xsl:for-each>
								</xsl:for-each>
							</xsl:for-each>
						</xsl:for-each>
						<h3>
							<span>
								<xsl:text>Server Control Status Tree</xsl:text>
							</span>
						</h3>
						<xsl:choose>
							<xsl:when test="count(Root/Software/ServerView/ServerControl/Tests/StatusTree)">
								<table border="0" cellpadding="2" cellspacing="0" class="TableWithoutBorder" width="100%">
									<xsl:variable name="altova:CurrContextGrid_91" select="."/>
									<tbody>
										<tr>
											<td width="167">
												<span>
													<xsl:text>System Status:</xsl:text>
												</span>
											</td>
											<td>
												<xsl:for-each select="Root">
													<xsl:for-each select="Software">
														<xsl:for-each select="ServerView">
															<xsl:for-each select="ServerControl">
																<xsl:for-each select="Tests">
																	<xsl:for-each select="StatusTree">
																		<xsl:for-each select="System">
																			<xsl:for-each select="Status">
																				<xsl:for-each select="@Description">
																					<span>
																						<xsl:value-of select="string(.)"/>
																					</span>
																				</xsl:for-each>
																			</xsl:for-each>
																		</xsl:for-each>
																	</xsl:for-each>
																</xsl:for-each>
															</xsl:for-each>
														</xsl:for-each>
													</xsl:for-each>
												</xsl:for-each>
											</td>
										</tr>
									</tbody>
								</table>
								<br/>
							</xsl:when>
							<xsl:otherwise>
								<span>
									<xsl:text>Not available!</xsl:text>
								</span>
							</xsl:otherwise>
						</xsl:choose>
						<xsl:choose>
							<xsl:when test="count(Root/Software/ServerView/ServerControl/Tests/StatusTree/Subsystem)  != 0">
								<xsl:if test="count(Root/Software/ServerView/ServerControl/Tests/StatusTree)">
									<xsl:for-each select="Root">
										<xsl:for-each select="Software">
											<xsl:for-each select="ServerView">
												<xsl:for-each select="ServerControl">
													<xsl:for-each select="Tests">
														<xsl:for-each select="StatusTree">
															<table border="1" cellpadding="2" cellspacing="0">
																<xsl:variable name="altova:CurrContextGrid_92" select="."/>
																<thead>
																	<tr>
																		<th>
																			<span>
																				<xsl:text>Name</xsl:text>
																			</span>
																		</th>
																		<th width="180">
																			<span>
																				<xsl:text>Description</xsl:text>
																			</span>
																		</th>
																		<th width="779">
																			<span>
																				<xsl:text>Component</xsl:text>
																			</span>
																		</th>
																	</tr>
																</thead>
																<tbody>
																	<xsl:for-each select="Subsystem">
																		<tr>
																			<td>
																				<xsl:for-each select="@Name">
																					<span>
																						<xsl:value-of select="string(.)"/>
																					</span>
																				</xsl:for-each>
																			</td>
																			<td width="180">
																				<xsl:for-each select="@Description">
																					<span>
																						<xsl:value-of select="string(.)"/>
																					</span>
																				</xsl:for-each>
																			</td>
																			<td width="779">
																				<table border="1" cellpadding="2" cellspacing="0">
																					<xsl:variable name="altova:CurrContextGrid_93" select="."/>
																					<tbody>
																						<xsl:for-each select="Component">
																							<tr>
																								<td width="150">
																									<xsl:for-each select="@Description">
																										<span>
																											<xsl:value-of select="string(.)"/>
																										</span>
																									</xsl:for-each>
																									<span style="font-weight:normal; ">
																										<xsl:text>:</xsl:text>
																									</span>
																								</td>
																								<td width="90">
																									<span style="font-weight:normal; ">
																										<xsl:text>Status: </xsl:text>
																									</span>
																									<xsl:for-each select="Status">
																										<xsl:apply-templates/>
																									</xsl:for-each>
																									<span style="font-weight:normal; ">
																										<xsl:text> (</xsl:text>
																									</span>
																									<xsl:for-each select="Status">
																										<xsl:for-each select="@Description">
																											<span>
																												<xsl:value-of select="string(.)"/>
																											</span>
																										</xsl:for-each>
																									</xsl:for-each>
																									<span style="font-weight:normal; ">
																										<xsl:text>)</xsl:text>
																									</span>
																								</td>
																								<td width="480">
																									<table border="0" width="100%">
																										<xsl:variable name="altova:CurrContextGrid_94" select="."/>
																										<tbody>
																											<tr>
																												<td width="90">
																													<span>
																														<xsl:text>Object:</xsl:text>
																													</span>
																												</td>
																												<td width="160">
																													<xsl:for-each select="SourceName">
																														<xsl:apply-templates/>
																													</xsl:for-each>
																													<span>
																														<xsl:text>: </xsl:text>
																													</span>
																													<xsl:for-each select="Object">
																														<xsl:for-each select="@Name">
																															<span>
																																<xsl:value-of select="string(.)"/>
																															</span>
																														</xsl:for-each>
																													</xsl:for-each>
																												</td>
																											</tr>
																											<tr>
																												<td width="90">
																													<span>
																														<xsl:text>Object Status:</xsl:text>
																													</span>
																												</td>
																												<td width="160">
																													<xsl:for-each select="Object">
																														<xsl:for-each select="StatusValue">
																															<xsl:apply-templates/>
																														</xsl:for-each>
																													</xsl:for-each>
																													<span>
																														<xsl:text> (</xsl:text>
																													</span>
																													<xsl:for-each select="Object">
																														<xsl:for-each select="StatusComment">
																															<xsl:apply-templates/>
																														</xsl:for-each>
																													</xsl:for-each>
																													<span>
																														<xsl:text>)</xsl:text>
																													</span>
																												</td>
																											</tr>
																											<tr>
																												<td width="90">
																													<span>
																														<xsl:text>Confirm</xsl:text>
																													</span>
																												</td>
																												<td width="160">
																													<xsl:for-each select="@ConfirmSupported">
																														<span>
																															<xsl:value-of select="string(.)"/>
																														</span>
																													</xsl:for-each>
																												</td>
																											</tr>
																										</tbody>
																									</table>
																								</td>
																							</tr>
																						</xsl:for-each>
																					</tbody>
																				</table>
																			</td>
																		</tr>
																	</xsl:for-each>
																</tbody>
															</table>
														</xsl:for-each>
													</xsl:for-each>
												</xsl:for-each>
											</xsl:for-each>
										</xsl:for-each>
									</xsl:for-each>
								</xsl:if>
							</xsl:when>
							<xsl:otherwise>
								<xsl:if test="count(Root/Software/ServerView/ServerControl/Tests/StatusTree)">
									<span>
										<xsl:text>Subsystem status tree not available!</xsl:text>
									</span>
								</xsl:if>
							</xsl:otherwise>
						</xsl:choose>
					</xsl:if>
					<br/>
					<xsl:if test="count (Root/Software/ServerView/ServerViewRaid)">
						<h2>
							<a>
								<xsl:attribute name="name">
									<xsl:value-of select="&apos;ServerView RAID&apos;"/>
								</xsl:attribute>
								<span>
									<xsl:text>ServerView RAID</xsl:text>
								</span>
							</a>
						</h2>
						<xsl:choose>
							<xsl:when test="Root/Software/ServerView/ServerViewRaid/@Installed = &apos;true&apos;">
								<span style="font-weight:bold; ">
									<xsl:text>Version:</xsl:text>
								</span>
								<span>
									<xsl:text>&#160; </xsl:text>
								</span>
								<xsl:choose>
									<xsl:when test="count( Root/Software/ServerView/ServerViewRaid/Version )">
										<xsl:for-each select="Root">
											<xsl:for-each select="Software">
												<xsl:for-each select="ServerView">
													<xsl:for-each select="ServerViewRaid">
														<xsl:for-each select="Version">
															<xsl:apply-templates/>
														</xsl:for-each>
													</xsl:for-each>
												</xsl:for-each>
											</xsl:for-each>
										</xsl:for-each>
									</xsl:when>
									<xsl:otherwise>
										<span>
											<xsl:text>N/A</xsl:text>
										</span>
									</xsl:otherwise>
								</xsl:choose>
								<br/>
								<br/>
								<xsl:if test="count (Root/Software/ServerView/ServerViewRaid/amEMSV/System/Multiplexer/StatusOverall)">
									<span>
										<xsl:text>Summary Status: </xsl:text>
									</span>
									<xsl:for-each select="Root">
										<xsl:for-each select="Software">
											<xsl:for-each select="ServerView">
												<xsl:for-each select="ServerViewRaid">
													<xsl:for-each select="amEMSV">
														<xsl:for-each select="System">
															<xsl:for-each select="Multiplexer">
																<xsl:for-each select="StatusOverall">
																	<xsl:apply-templates/>
																</xsl:for-each>
															</xsl:for-each>
														</xsl:for-each>
													</xsl:for-each>
												</xsl:for-each>
											</xsl:for-each>
										</xsl:for-each>
									</xsl:for-each>
									<br/>
								</xsl:if>
								<br/>
								<xsl:if test="count(  Root/Software/ServerView/ServerViewRaid/amEMSV  )">
									<span style="font-weight:bold; ">
										<xsl:text>Installed RAID Adapters</xsl:text>
									</span>
									<br/>
									<br/>
									<xsl:choose>
										<xsl:when test="Root/Software/ServerView/ServerViewRaid/amEMSV/System/Adapter">
											<table border="1" cellpadding="2" cellspacing="0">
												<xsl:variable name="altova:CurrContextGrid_95" select="."/>
												<thead>
													<tr>
														<th colspan="2" style="text-align:center; ">
															<span>
																<xsl:text>Adapter </xsl:text>
															</span>
														</th>
														<th rowspan="2">
															<span>
																<xsl:text>Hardware</xsl:text>
															</span>
															<br/>
															<span>
																<xsl:text>Type</xsl:text>
															</span>
														</th>
														<th rowspan="2">
															<span>
																<xsl:text>Type</xsl:text>
															</span>
														</th>
														<th rowspan="2" style="text-align:center; ">
															<span>
																<xsl:text>Chipset</xsl:text>
															</span>
														</th>
														<th rowspan="2">
															<span>
																<xsl:text>Bus</xsl:text>
															</span>
															<br/>
															<span>
																<xsl:text>Type</xsl:text>
															</span>
														</th>
														<th colspan="7">
															<span>
																<xsl:text>PCI</xsl:text>
															</span>
														</th>
														<th rowspan="2">
															<span>
																<xsl:text>Flash ROM</xsl:text>
															</span>
															<br/>
															<span>
																<xsl:text>Size</xsl:text>
															</span>
														</th>
														<th rowspan="2" style="text-align:center; ">
															<span>
																<xsl:text>Max </xsl:text>
															</span>
															<br/>
															<span>
																<xsl:text>Logical Drives</xsl:text>
															</span>
														</th>
														<th rowspan="2" style="text-align:center; ">
															<span>
																<xsl:text>Max</xsl:text>
															</span>
															<br/>
															<span>
																<xsl:text>Physical Devices</xsl:text>
															</span>
														</th>
														<th rowspan="2">
															<span>
																<xsl:text>Memory</xsl:text>
															</span>
															<br/>
															<span>
																<xsl:text>Size</xsl:text>
															</span>
														</th>
														<th rowspan="2">
															<span>
																<xsl:text>NVRAM</xsl:text>
															</span>
															<br/>
															<span>
																<xsl:text>Present</xsl:text>
															</span>
														</th>
														<th rowspan="2">
															<span>
																<xsl:text>NVRAM</xsl:text>
															</span>
															<br/>
															<span>
																<xsl:text>Size</xsl:text>
															</span>
														</th>
														<th rowspan="2">
															<span>
																<xsl:text>NoRAID</xsl:text>
															</span>
															<br/>
															<span>
																<xsl:text>LevelMix</xsl:text>
															</span>
														</th>
														<th rowspan="2">
															<span>
																<xsl:text>Protocol</xsl:text>
															</span>
														</th>
														<th rowspan="2">
															<span>
																<xsl:text>SAS Address</xsl:text>
															</span>
														</th>
														<th rowspan="2">
															<span>
																<xsl:text>Serial</xsl:text>
															</span>
															<br/>
															<span>
																<xsl:text>Number</xsl:text>
															</span>
														</th>
														<th rowspan="2">
															<span>
																<xsl:text>BBU</xsl:text>
															</span>
															<br/>
															<span>
																<xsl:text>Present</xsl:text>
															</span>
														</th>
														<th rowspan="2">
															<span>
																<xsl:text>UART</xsl:text>
															</span>
															<br/>
															<span>
																<xsl:text>Present</xsl:text>
															</span>
														</th>
													</tr>
													<tr>
														<th style="text-align:center; ">
															<span>
																<xsl:text>Nr</xsl:text>
															</span>
														</th>
														<th style="text-align:center; " width="128">
															<span>
																<xsl:text>Name</xsl:text>
															</span>
														</th>
														<th style="text-align:center; ">
															<span>
																<xsl:text>Bus</xsl:text>
															</span>
															<br/>
															<span>
																<xsl:text>No</xsl:text>
															</span>
														</th>
														<th style="text-align:center; ">
															<span>
																<xsl:text>Device</xsl:text>
															</span>
															<br/>
															<span>
																<xsl:text>No</xsl:text>
															</span>
														</th>
														<th style="text-align:center; ">
															<span>
																<xsl:text>Function</xsl:text>
															</span>
															<br/>
															<span>
																<xsl:text>No</xsl:text>
															</span>
														</th>
														<th>
															<span>
																<xsl:text>Device ID</xsl:text>
															</span>
														</th>
														<th>
															<span>
																<xsl:text>SubDevice ID</xsl:text>
															</span>
														</th>
														<th>
															<span>
																<xsl:text>Vendor ID</xsl:text>
															</span>
														</th>
														<th>
															<span>
																<xsl:text>SubVendor ID</xsl:text>
															</span>
														</th>
													</tr>
												</thead>
												<tbody>
													<xsl:for-each select="Root">
														<xsl:for-each select="Software">
															<xsl:for-each select="ServerView">
																<xsl:for-each select="ServerViewRaid">
																	<xsl:for-each select="amEMSV">
																		<xsl:for-each select="System">
																			<xsl:for-each select="Adapter">
																				<tr>
																					<td style="text-align:center; ">
																						<xsl:for-each select="@Nr">
																							<span>
																								<xsl:value-of select="string(.)"/>
																							</span>
																						</xsl:for-each>
																					</td>
																					<td width="128">
																						<xsl:for-each select="@Name">
																							<span>
																								<xsl:value-of select="string(.)"/>
																							</span>
																						</xsl:for-each>
																					</td>
																					<td>
																						<xsl:for-each select="HardwareType">
																							<xsl:apply-templates/>
																						</xsl:for-each>
																					</td>
																					<td>
																						<xsl:for-each select="@Type">
																							<span>
																								<xsl:value-of select="string(.)"/>
																							</span>
																						</xsl:for-each>
																					</td>
																					<td style="text-align:center; ">
																						<xsl:choose>
																							<xsl:when test="count(  Chipset ) != 0">
																								<xsl:for-each select="Chipset">
																									<xsl:apply-templates/>
																								</xsl:for-each>
																							</xsl:when>
																							<xsl:otherwise>
																								<span>
																									<xsl:text>N/A</xsl:text>
																								</span>
																							</xsl:otherwise>
																						</xsl:choose>
																					</td>
																					<td>
																						<xsl:for-each select="BusType">
																							<xsl:apply-templates/>
																						</xsl:for-each>
																					</td>
																					<td style="text-align:center; ">
																						<xsl:for-each select="PCIBus">
																							<xsl:apply-templates/>
																						</xsl:for-each>
																					</td>
																					<td style="text-align:center; ">
																						<xsl:for-each select="PCIDevice">
																							<xsl:apply-templates/>
																						</xsl:for-each>
																					</td>
																					<td style="text-align:center; ">
																						<xsl:for-each select="PCIFunction">
																							<xsl:apply-templates/>
																						</xsl:for-each>
																					</td>
																					<td align="center">
																						<xsl:choose>
																							<xsl:when test="count( DeviceID ) != 0">
																								<xsl:for-each select="DeviceID">
																									<xsl:apply-templates/>
																								</xsl:for-each>
																							</xsl:when>
																							<xsl:otherwise>
																								<span>
																									<xsl:text>N/A</xsl:text>
																								</span>
																							</xsl:otherwise>
																						</xsl:choose>
																					</td>
																					<td align="center">
																						<xsl:choose>
																							<xsl:when test="count( SubDeviceID ) != 0">
																								<xsl:for-each select="SubDeviceID">
																									<xsl:apply-templates/>
																								</xsl:for-each>
																							</xsl:when>
																							<xsl:otherwise>
																								<span>
																									<xsl:text>N/A</xsl:text>
																								</span>
																							</xsl:otherwise>
																						</xsl:choose>
																					</td>
																					<td align="center">
																						<xsl:choose>
																							<xsl:when test="count( VendorID ) != 0">
																								<xsl:for-each select="VendorID">
																									<xsl:apply-templates/>
																								</xsl:for-each>
																							</xsl:when>
																							<xsl:otherwise>
																								<span>
																									<xsl:text>N/A</xsl:text>
																								</span>
																							</xsl:otherwise>
																						</xsl:choose>
																					</td>
																					<td align="center">
																						<xsl:choose>
																							<xsl:when test="count( SubVendorID ) != 0">
																								<xsl:for-each select="SubVendorID">
																									<xsl:apply-templates/>
																								</xsl:for-each>
																							</xsl:when>
																							<xsl:otherwise>
																								<span>
																									<xsl:text>N/A</xsl:text>
																								</span>
																							</xsl:otherwise>
																						</xsl:choose>
																					</td>
																					<td>
																						<xsl:choose>
																							<xsl:when test="count( FlashROMSize ) != 0">
																								<xsl:for-each select="FlashROMSize">
																									<xsl:apply-templates/>
																								</xsl:for-each>
																								<span>
																									<xsl:text> KByte</xsl:text>
																								</span>
																							</xsl:when>
																							<xsl:otherwise>
																								<span>
																									<xsl:text>N/A</xsl:text>
																								</span>
																							</xsl:otherwise>
																						</xsl:choose>
																					</td>
																					<td style="text-align:center; ">
																						<xsl:for-each select="MaxLogDrives">
																							<xsl:apply-templates/>
																						</xsl:for-each>
																					</td>
																					<td style="text-align:center; ">
																						<xsl:for-each select="MaxPhysDevices">
																							<xsl:apply-templates/>
																						</xsl:for-each>
																					</td>
																					<td>
																						<xsl:choose>
																							<xsl:when test="count( MemorySize ) != 0">
																								<xsl:for-each select="MemorySize">
																									<xsl:apply-templates/>
																								</xsl:for-each>
																								<span>
																									<xsl:text> Mbyte</xsl:text>
																								</span>
																							</xsl:when>
																							<xsl:otherwise>
																								<span>
																									<xsl:text>N/A</xsl:text>
																								</span>
																							</xsl:otherwise>
																						</xsl:choose>
																					</td>
																					<td>
																						<xsl:choose>
																							<xsl:when test="count( NVRAMPresent ) != 0">
																								<xsl:for-each select="NVRAMPresent">
																									<xsl:apply-templates/>
																								</xsl:for-each>
																							</xsl:when>
																							<xsl:otherwise>
																								<span>
																									<xsl:text>N/A</xsl:text>
																								</span>
																							</xsl:otherwise>
																						</xsl:choose>
																					</td>
																					<td>
																						<xsl:choose>
																							<xsl:when test="count( NVRAMSize ) != 0">
																								<xsl:for-each select="NVRAMSize">
																									<xsl:apply-templates/>
																								</xsl:for-each>
																							</xsl:when>
																							<xsl:otherwise>
																								<span>
																									<xsl:text>N/A</xsl:text>
																								</span>
																							</xsl:otherwise>
																						</xsl:choose>
																					</td>
																					<td align="center">
																						<xsl:choose>
																							<xsl:when test="count( NoRAIDLevelMix ) != 0">
																								<xsl:for-each select="NoRAIDLevelMix">
																									<xsl:apply-templates/>
																								</xsl:for-each>
																							</xsl:when>
																							<xsl:otherwise>
																								<span>
																									<xsl:text>N/A</xsl:text>
																								</span>
																							</xsl:otherwise>
																						</xsl:choose>
																					</td>
																					<td>
																						<xsl:for-each select="Protocol">
																							<p>
																								<xsl:apply-templates/>
																							</p>
																						</xsl:for-each>
																					</td>
																					<td>
																						<xsl:choose>
																							<xsl:when test="count( SASAddress ) != 0">
																								<xsl:for-each select="SASAddress">
																									<xsl:apply-templates/>
																								</xsl:for-each>
																							</xsl:when>
																							<xsl:otherwise>
																								<span>
																									<xsl:text>N/A</xsl:text>
																								</span>
																							</xsl:otherwise>
																						</xsl:choose>
																					</td>
																					<td>
																						<xsl:choose>
																							<xsl:when test="count( SerialNumber ) != 0">
																								<xsl:for-each select="SerialNumber">
																									<xsl:apply-templates/>
																								</xsl:for-each>
																							</xsl:when>
																							<xsl:otherwise>
																								<span>
																									<xsl:text>N/A</xsl:text>
																								</span>
																							</xsl:otherwise>
																						</xsl:choose>
																					</td>
																					<td align="center">
																						<xsl:choose>
																							<xsl:when test="count( BBUPresent )  != 0">
																								<xsl:for-each select="BBUPresent">
																									<xsl:apply-templates/>
																								</xsl:for-each>
																							</xsl:when>
																							<xsl:otherwise>
																								<span>
																									<xsl:text>N/A</xsl:text>
																								</span>
																							</xsl:otherwise>
																						</xsl:choose>
																					</td>
																					<td align="center">
																						<xsl:choose>
																							<xsl:when test="count( UARTPresent ) != 0">
																								<xsl:for-each select="UARTPresent">
																									<xsl:apply-templates/>
																								</xsl:for-each>
																							</xsl:when>
																							<xsl:otherwise>
																								<span>
																									<xsl:text>N/A</xsl:text>
																								</span>
																							</xsl:otherwise>
																						</xsl:choose>
																					</td>
																				</tr>
																			</xsl:for-each>
																		</xsl:for-each>
																	</xsl:for-each>
																</xsl:for-each>
															</xsl:for-each>
														</xsl:for-each>
													</xsl:for-each>
												</tbody>
											</table>
											<br/>
											<br/>
											<span style="font-weight:bold; ">
												<xsl:text>RAID Adapter Status</xsl:text>
											</span>
											<br/>
											<br/>
											<span>
												<xsl:text>Summary Status: </xsl:text>
											</span>
											<xsl:for-each select="Root">
												<xsl:for-each select="Software">
													<xsl:for-each select="ServerView">
														<xsl:for-each select="ServerViewRaid">
															<xsl:for-each select="amEMSV">
																<xsl:for-each select="System">
																	<xsl:for-each select="Multiplexer">
																		<xsl:for-each select="StatusAdapters">
																			<xsl:apply-templates/>
																		</xsl:for-each>
																	</xsl:for-each>
																</xsl:for-each>
															</xsl:for-each>
														</xsl:for-each>
													</xsl:for-each>
												</xsl:for-each>
											</xsl:for-each>
											<br/>
											<br/>
											<table border="1" cellpadding="2" cellspacing="0">
												<xsl:variable name="altova:CurrContextGrid_96" select="."/>
												<thead>
													<tr>
														<th colspan="2" style="text-align:center; ">
															<span>
																<xsl:text>Adpter </xsl:text>
															</span>
															<br/>
														</th>
														<th rowspan="2" style="text-align:center; ">
															<span>
																<xsl:text>Type</xsl:text>
															</span>
														</th>
														<th rowspan="2">
															<span>
																<xsl:text>Status</xsl:text>
															</span>
														</th>
														<th rowspan="2">
															<span>
																<xsl:text>Activity</xsl:text>
															</span>
														</th>
														<th rowspan="2">
															<span>
																<xsl:text>Correctable</xsl:text>
															</span>
															<br/>
															<span>
																<xsl:text> Error</xsl:text>
															</span>
															<br/>
														</th>
														<th rowspan="2">
															<span>
																<xsl:text>Uncorrectable</xsl:text>
															</span>
															<br/>
															<span>
																<xsl:text>Errors</xsl:text>
															</span>
														</th>
														<th rowspan="2">
															<span>
																<xsl:text>Full Arrays</xsl:text>
															</span>
														</th>
														<th rowspan="2" style="text-align:center; ">
															<span>
																<xsl:text>Polling</xsl:text>
															</span>
															<br/>
															<span>
																<xsl:text>Interval</xsl:text>
															</span>
														</th>
														<th rowspan="2">
															<span>
																<xsl:text>Auto </xsl:text>
															</span>
															<br/>
															<span>
																<xsl:text>Rebuild</xsl:text>
															</span>
														</th>
														<th rowspan="2">
															<span>
																<xsl:text>Rebuild</xsl:text>
															</span>
															<br/>
															<span>
																<xsl:text>Rate</xsl:text>
															</span>
														</th>
														<th rowspan="2">
															<span>
																<xsl:text>SMART</xsl:text>
															</span>
															<br/>
															<span>
																<xsl:text>Support</xsl:text>
															</span>
														</th>
													</tr>
													<tr>
														<th style="text-align:center; ">
															<span>
																<xsl:text>Nr</xsl:text>
															</span>
														</th>
														<th style="text-align:center; ">
															<span>
																<xsl:text>Name</xsl:text>
															</span>
														</th>
													</tr>
												</thead>
												<tbody>
													<xsl:for-each select="Root">
														<xsl:for-each select="Software">
															<xsl:for-each select="ServerView">
																<xsl:for-each select="ServerViewRaid">
																	<xsl:for-each select="amEMSV">
																		<xsl:for-each select="System">
																			<xsl:for-each select="Adapter">
																				<tr>
																					<td style="text-align:center; ">
																						<xsl:for-each select="@Nr">
																							<span>
																								<xsl:value-of select="string(.)"/>
																							</span>
																						</xsl:for-each>
																					</td>
																					<td>
																						<xsl:for-each select="@Name">
																							<span>
																								<xsl:value-of select="string(.)"/>
																							</span>
																						</xsl:for-each>
																					</td>
																					<td style="text-align:center; " align="center">
																						<xsl:for-each select="@Type">
																							<span>
																								<xsl:value-of select="string(.)"/>
																							</span>
																						</xsl:for-each>
																					</td>
																					<td align="center">
																						<xsl:for-each select="Status">
																							<xsl:apply-templates/>
																						</xsl:for-each>
																					</td>
																					<td align="center">
																						<xsl:for-each select="Activity">
																							<xsl:apply-templates/>
																						</xsl:for-each>
																					</td>
																					<td align="center">
																						<xsl:choose>
																							<xsl:when test="count( CorrErrorCount ) != 0">
																								<xsl:for-each select="CorrErrorCount">
																									<xsl:apply-templates/>
																								</xsl:for-each>
																							</xsl:when>
																							<xsl:otherwise>
																								<span>
																									<xsl:text>N/A</xsl:text>
																								</span>
																							</xsl:otherwise>
																						</xsl:choose>
																					</td>
																					<td align="center">
																						<xsl:choose>
																							<xsl:when test="count( UncorrErrorCount ) != 0">
																								<xsl:for-each select="UncorrErrorCount">
																									<xsl:apply-templates/>
																								</xsl:for-each>
																							</xsl:when>
																							<xsl:otherwise>
																								<span>
																									<xsl:text>N/A</xsl:text>
																								</span>
																							</xsl:otherwise>
																						</xsl:choose>
																					</td>
																					<td align="center">
																						<xsl:for-each select="FullArrays">
																							<xsl:apply-templates/>
																						</xsl:for-each>
																					</td>
																					<td style="text-align:center; ">
																						<xsl:choose>
																							<xsl:when test="count( PollingInterval ) != 0">
																								<xsl:for-each select="PollingInterval">
																									<xsl:apply-templates/>
																								</xsl:for-each>
																							</xsl:when>
																							<xsl:otherwise>
																								<span>
																									<xsl:text>N/A</xsl:text>
																								</span>
																							</xsl:otherwise>
																						</xsl:choose>
																					</td>
																					<td>
																						<xsl:for-each select="AutoRebuild">
																							<xsl:apply-templates/>
																						</xsl:for-each>
																					</td>
																					<td align="center">
																						<xsl:choose>
																							<xsl:when test="count( RebuildRate ) != 0">
																								<xsl:for-each select="RebuildRate">
																									<xsl:apply-templates/>
																								</xsl:for-each>
																							</xsl:when>
																							<xsl:otherwise>
																								<span>
																									<xsl:text>N/A</xsl:text>
																								</span>
																							</xsl:otherwise>
																						</xsl:choose>
																					</td>
																					<td align="center">
																						<xsl:choose>
																							<xsl:when test="count( SMARTSupport ) != 0">
																								<xsl:for-each select="SMARTSupport">
																									<xsl:apply-templates/>
																								</xsl:for-each>
																							</xsl:when>
																							<xsl:otherwise>
																								<span>
																									<xsl:text>N/A</xsl:text>
																								</span>
																							</xsl:otherwise>
																						</xsl:choose>
																					</td>
																				</tr>
																			</xsl:for-each>
																		</xsl:for-each>
																	</xsl:for-each>
																</xsl:for-each>
															</xsl:for-each>
														</xsl:for-each>
													</xsl:for-each>
												</tbody>
											</table>
											<br/>
											<xsl:if test="Root/Software/ServerView/ServerViewRaid/amEMSV/System/Adapter/@Type = &quot;SATA&quot;  or Root/Software/ServerView/ServerViewRaid/amEMSV/System/Adapter/@Type = &quot;SAS&quot;">
												<br/>
												<span style="font-weight:bold; ">
													<xsl:text>SATA and SAS-RAID Adapter(s) (SATA/SAS-Ports)</xsl:text>
												</span>
												<br/>
												<br/>
												<table border="1" cellpadding="2" cellspacing="0">
													<xsl:variable name="altova:CurrContextGrid_97" select="."/>
													<thead>
														<tr>
															<th colspan="3" style="text-align:center; ">
																<span>
																	<xsl:text>Adapter</xsl:text>
																</span>
																<br/>
															</th>
															<th rowspan="2">
																<span>
																	<xsl:text>SATA and SAS Ports</xsl:text>
																</span>
															</th>
														</tr>
														<tr>
															<th style="text-align:center; ">
																<span>
																	<xsl:text>Nr</xsl:text>
																</span>
															</th>
															<th style="text-align:center; ">
																<span>
																	<xsl:text>Name</xsl:text>
																</span>
															</th>
															<th style="text-align:center; ">
																<span>
																	<xsl:text>Type</xsl:text>
																</span>
															</th>
														</tr>
													</thead>
													<tbody>
														<xsl:for-each select="Root">
															<xsl:for-each select="Software">
																<xsl:for-each select="ServerView">
																	<xsl:for-each select="ServerViewRaid">
																		<xsl:for-each select="amEMSV">
																			<xsl:for-each select="System">
																				<xsl:for-each select="Adapter">
																					<tr>
																						<td style="text-align:center; ">
																							<xsl:if test="(@Type=&quot;SAS&quot;) or (@Type=&quot;SATA&quot;)">
																								<xsl:for-each select="@Nr">
																									<span>
																										<xsl:value-of select="string(.)"/>
																									</span>
																								</xsl:for-each>
																							</xsl:if>
																						</td>
																						<td>
																							<xsl:if test="(@Type=&quot;SAS&quot;) or (@Type=&quot;SATA&quot;)">
																								<xsl:for-each select="@Name">
																									<span>
																										<xsl:value-of select="string(.)"/>
																									</span>
																								</xsl:for-each>
																							</xsl:if>
																						</td>
																						<td style="text-align:center; ">
																							<xsl:if test="(@Type=&quot;SAS&quot;) or (@Type=&quot;SATA&quot;)">
																								<xsl:for-each select="@Type">
																									<span>
																										<xsl:value-of select="string(.)"/>
																									</span>
																								</xsl:for-each>
																							</xsl:if>
																						</td>
																						<td>
																							<xsl:if test="(@Type=&quot;SAS&quot;) or (@Type=&quot;SATA&quot;)">
																								<xsl:choose>
																									<xsl:when test="@Type = &quot;SAS&quot;  or  @Type=&quot;SATA&quot;">
																										<table border="1" cellpadding="2" cellspacing="0">
																											<xsl:variable name="altova:CurrContextGrid_98" select="."/>
																											<thead>
																												<tr>
																													<th width="100">
																														<span>
																															<xsl:text>SAS Address</xsl:text>
																														</span>
																													</th>
																													<th align="left">
																														<span>
																															<xsl:text>Physical Drives</xsl:text>
																														</span>
																													</th>
																												</tr>
																											</thead>
																											<tbody>
																												<xsl:for-each select="Ports">
																													<xsl:for-each select="Port">
																														<tr>
																															<td align="center" width="100">
																																<xsl:choose>
																																	<xsl:when test="count(  SASAddress   )  != 0">
																																		<xsl:for-each select="SASAddress">
																																			<xsl:apply-templates/>
																																		</xsl:for-each>
																																	</xsl:when>
																																	<xsl:otherwise>
																																		<span>
																																			<xsl:text>N/A</xsl:text>
																																		</span>
																																	</xsl:otherwise>
																																</xsl:choose>
																															</td>
																															<td>
																																<xsl:if test="count(  PhysicalDrive  )">
																																	<table border="1" cellpadding="2" cellspacing="0">
																																		<xsl:variable name="altova:CurrContextGrid_99" select="."/>
																																		<thead>
																																			<tr>
																																				<th style="text-align:center; " width="100">
																																					<span>
																																						<xsl:text>Type</xsl:text>
																																					</span>
																																				</th>
																																				<th width="100">
																																					<span>
																																						<xsl:text>Name</xsl:text>
																																					</span>
																																				</th>
																																				<th>
																																					<span>
																																						<xsl:text>Status</xsl:text>
																																					</span>
																																				</th>
																																				<th>
																																					<span>
																																						<xsl:text>Port</xsl:text>
																																					</span>
																																				</th>
																																				<th>
																																					<span>
																																						<xsl:text>Activity</xsl:text>
																																					</span>
																																				</th>
																																				<th style="text-align:center; ">
																																					<span>
																																						<xsl:text>Size</xsl:text>
																																					</span>
																																				</th>
																																				<th>
																																					<span>
																																						<xsl:text>RPM</xsl:text>
																																					</span>
																																				</th>
																																				<th style="text-align:center; ">
																																					<span>
																																						<xsl:text>Transfer</xsl:text>
																																					</span>
																																					<br/>
																																					<span>
																																						<xsl:text>Speed</xsl:text>
																																					</span>
																																				</th>
																																				<th style="text-align:center; ">
																																					<span>
																																						<xsl:text>Transfer</xsl:text>
																																					</span>
																																					<br/>
																																					<span>
																																						<xsl:text>Width</xsl:text>
																																					</span>
																																				</th>
																																				<th style="text-align:center; ">
																																					<span>
																																						<xsl:text>Enclosure</xsl:text>
																																					</span>
																																					<br/>
																																					<span>
																																						<xsl:text>Number</xsl:text>
																																					</span>
																																				</th>
																																				<th style="text-align:center; ">
																																					<span>
																																						<xsl:text>Firmware</xsl:text>
																																					</span>
																																					<br/>
																																					<span>
																																						<xsl:text>Version</xsl:text>
																																					</span>
																																				</th>
																																				<th>
																																					<span>
																																						<xsl:text>PFA Count</xsl:text>
																																					</span>
																																				</th>
																																				<th>
																																					<span>
																																						<xsl:text>Serial Number</xsl:text>
																																					</span>
																																				</th>
																																				<th style="text-align:center; ">
																																					<span>
																																						<xsl:text>Rebuild</xsl:text>
																																					</span>
																																					<br/>
																																					<span>
																																						<xsl:text>Progress</xsl:text>
																																					</span>
																																				</th>
																																			</tr>
																																		</thead>
																																		<tbody>
																																			<xsl:for-each select="PhysicalDrive">
																																				<tr>
																																					<td style="text-align:center; " width="100">
																																						<span>
																																							<xsl:text>Hard Disk Drive</xsl:text>
																																						</span>
																																					</td>
																																					<td width="100">
																																						<xsl:for-each select="@Name">
																																							<span>
																																								<xsl:value-of select="string(.)"/>
																																							</span>
																																						</xsl:for-each>
																																					</td>
																																					<td>
																																						<xsl:for-each select="Status">
																																							<xsl:apply-templates/>
																																						</xsl:for-each>
																																					</td>
																																					<td style="text-align:center; ">
																																						<xsl:for-each select="PortNumber">
																																							<xsl:apply-templates/>
																																						</xsl:for-each>
																																					</td>
																																					<td align="center">
																																						<xsl:for-each select="Activity">
																																							<xsl:apply-templates/>
																																						</xsl:for-each>
																																					</td>
																																					<td style="text-align:center; ">
																																						<xsl:for-each select="PhysicalSize">
																																							<xsl:apply-templates/>
																																						</xsl:for-each>
																																						<span>
																																							<xsl:text> MByte</xsl:text>
																																						</span>
																																					</td>
																																					<td>
																																						<xsl:for-each select="RPM">
																																							<xsl:apply-templates/>
																																						</xsl:for-each>
																																					</td>
																																					<td style="text-align:center; ">
																																						<xsl:for-each select="TransferSpeed">
																																							<xsl:apply-templates/>
																																						</xsl:for-each>
																																						<span>
																																							<xsl:text> MBit</xsl:text>
																																						</span>
																																					</td>
																																					<td style="text-align:center; ">
																																						<xsl:for-each select="TransferWidth">
																																							<xsl:apply-templates/>
																																						</xsl:for-each>
																																						<span>
																																							<xsl:text> Bit</xsl:text>
																																						</span>
																																					</td>
																																					<td style="text-align:center; ">
																																						<xsl:for-each select="EnclosureNumber">
																																							<xsl:apply-templates/>
																																						</xsl:for-each>
																																					</td>
																																					<td style="text-align:center; ">
																																						<xsl:for-each select="FirmwareVersion">
																																							<xsl:apply-templates/>
																																						</xsl:for-each>
																																					</td>
																																					<td align="center">
																																						<xsl:for-each select="PFACount">
																																							<xsl:apply-templates/>
																																						</xsl:for-each>
																																					</td>
																																					<td>
																																						<xsl:for-each select="SerialNumber">
																																							<xsl:apply-templates/>
																																						</xsl:for-each>
																																					</td>
																																					<td style="text-align:center; ">
																																						<xsl:for-each select="RebuildProgress">
																																							<xsl:apply-templates/>
																																						</xsl:for-each>
																																					</td>
																																				</tr>
																																			</xsl:for-each>
																																		</tbody>
																																	</table>
																																</xsl:if>
																																<xsl:if test="count( CDROM )">
																																	<table border="1" cellpadding="2" cellspacing="0">
																																		<xsl:variable name="altova:CurrContextGrid_100" select="."/>
																																		<thead>
																																			<tr>
																																				<th style="text-align:center; ">
																																					<span>
																																						<xsl:text>Type</xsl:text>
																																					</span>
																																				</th>
																																				<th>
																																					<span>
																																						<xsl:text>Name</xsl:text>
																																					</span>
																																				</th>
																																				<th>
																																					<span>
																																						<xsl:text>Status</xsl:text>
																																					</span>
																																				</th>
																																				<th>
																																					<span>
																																						<xsl:text>Port</xsl:text>
																																					</span>
																																				</th>
																																				<th style="text-align:center; ">
																																					<span>
																																						<xsl:text>Activity</xsl:text>
																																					</span>
																																				</th>
																																				<th style="text-align:center; ">
																																					<span>
																																						<xsl:text>Size</xsl:text>
																																					</span>
																																				</th>
																																				<th style="text-align:center; ">
																																					<span>
																																						<xsl:text>RPM</xsl:text>
																																					</span>
																																				</th>
																																				<th style="text-align:center; ">
																																					<span>
																																						<xsl:text>Transfer</xsl:text>
																																					</span>
																																					<br/>
																																					<span>
																																						<xsl:text>Speed</xsl:text>
																																					</span>
																																				</th>
																																				<th style="text-align:center; ">
																																					<span>
																																						<xsl:text>Tranfer</xsl:text>
																																					</span>
																																					<br/>
																																					<span>
																																						<xsl:text>Width</xsl:text>
																																					</span>
																																				</th>
																																				<th style="text-align:center; ">
																																					<span>
																																						<xsl:text>Enclosure </xsl:text>
																																					</span>
																																					<br/>
																																					<span>
																																						<xsl:text>Number</xsl:text>
																																					</span>
																																				</th>
																																				<th style="text-align:center; ">
																																					<span>
																																						<xsl:text>Firmware </xsl:text>
																																					</span>
																																					<br/>
																																					<span>
																																						<xsl:text>Version</xsl:text>
																																					</span>
																																				</th>
																																				<th style="text-align:center; ">
																																					<span>
																																						<xsl:text>PFA </xsl:text>
																																					</span>
																																					<br/>
																																					<span>
																																						<xsl:text>Count</xsl:text>
																																					</span>
																																				</th>
																																				<th style="text-align:center; ">
																																					<span>
																																						<xsl:text>Serial </xsl:text>
																																					</span>
																																					<br/>
																																					<span>
																																						<xsl:text>Number</xsl:text>
																																					</span>
																																				</th>
																																			</tr>
																																		</thead>
																																		<tbody>
																																			<xsl:for-each select="CDROM">
																																				<tr>
																																					<td style="text-align:center; ">
																																						<span>
																																							<xsl:text>CD/DVD Drive</xsl:text>
																																						</span>
																																					</td>
																																					<td>
																																						<xsl:for-each select="@Name">
																																							<span>
																																								<xsl:value-of select="string(.)"/>
																																							</span>
																																						</xsl:for-each>
																																					</td>
																																					<td>
																																						<xsl:for-each select="Status">
																																							<xsl:apply-templates/>
																																						</xsl:for-each>
																																					</td>
																																					<td style="text-align:center; ">
																																						<xsl:for-each select="PortNumber">
																																							<xsl:apply-templates/>
																																						</xsl:for-each>
																																					</td>
																																					<td style="text-align:center; ">
																																						<xsl:for-each select="Activity">
																																							<xsl:apply-templates/>
																																						</xsl:for-each>
																																					</td>
																																					<td style="text-align:center; ">
																																						<xsl:for-each select="PhysicalSize">
																																							<xsl:apply-templates/>
																																						</xsl:for-each>
																																					</td>
																																					<td style="text-align:center; ">
																																						<xsl:choose>
																																							<xsl:when test="count( RPM )">
																																								<xsl:for-each select="RPM">
																																									<xsl:apply-templates/>
																																								</xsl:for-each>
																																							</xsl:when>
																																							<xsl:otherwise>
																																								<span>
																																									<xsl:text>N/A</xsl:text>
																																								</span>
																																							</xsl:otherwise>
																																						</xsl:choose>
																																					</td>
																																					<td style="text-align:center; ">
																																						<xsl:for-each select="TransferSpeed">
																																							<xsl:apply-templates/>
																																						</xsl:for-each>
																																						<span>
																																							<xsl:text> MBit</xsl:text>
																																						</span>
																																					</td>
																																					<td style="text-align:center; ">
																																						<xsl:for-each select="TransferWidth">
																																							<xsl:apply-templates/>
																																						</xsl:for-each>
																																						<span>
																																							<xsl:text> Bit</xsl:text>
																																						</span>
																																					</td>
																																					<td style="text-align:center; ">
																																						<xsl:for-each select="EnclosureNumber">
																																							<xsl:apply-templates/>
																																						</xsl:for-each>
																																					</td>
																																					<td style="text-align:center; ">
																																						<xsl:for-each select="FirmwareVersion">
																																							<xsl:apply-templates/>
																																						</xsl:for-each>
																																					</td>
																																					<td style="text-align:center; ">
																																						<xsl:for-each select="PFACount">
																																							<xsl:apply-templates/>
																																						</xsl:for-each>
																																					</td>
																																					<td style="text-align:center; ">
																																						<xsl:choose>
																																							<xsl:when test="count( SerialNumber )">
																																								<xsl:for-each select="SerialNumber">
																																									<xsl:apply-templates/>
																																								</xsl:for-each>
																																							</xsl:when>
																																							<xsl:otherwise>
																																								<span>
																																									<xsl:text>N/A</xsl:text>
																																								</span>
																																							</xsl:otherwise>
																																						</xsl:choose>
																																					</td>
																																				</tr>
																																			</xsl:for-each>
																																		</tbody>
																																	</table>
																																</xsl:if>
																																<xsl:if test="count( Tape )">
																																	<table border="1" cellpadding="2" cellspacing="0">
																																		<xsl:variable name="altova:CurrContextGrid_101" select="."/>
																																		<thead>
																																			<tr>
																																				<th style="text-align:center; ">
																																					<span>
																																						<xsl:text>Type</xsl:text>
																																					</span>
																																				</th>
																																				<th>
																																					<span>
																																						<xsl:text>Name</xsl:text>
																																					</span>
																																				</th>
																																				<th>
																																					<span>
																																						<xsl:text>Status</xsl:text>
																																					</span>
																																				</th>
																																				<th>
																																					<span>
																																						<xsl:text>Port</xsl:text>
																																					</span>
																																				</th>
																																				<th style="text-align:center; ">
																																					<span>
																																						<xsl:text>Activity</xsl:text>
																																					</span>
																																				</th>
																																				<th style="text-align:center; ">
																																					<span>
																																						<xsl:text>Size</xsl:text>
																																					</span>
																																				</th>
																																				<th style="text-align:center; ">
																																					<span>
																																						<xsl:text>RPM</xsl:text>
																																					</span>
																																				</th>
																																				<th style="text-align:center; ">
																																					<span>
																																						<xsl:text>Transfer</xsl:text>
																																					</span>
																																					<br/>
																																					<span>
																																						<xsl:text>Speed</xsl:text>
																																					</span>
																																				</th>
																																				<th style="text-align:center; ">
																																					<span>
																																						<xsl:text>Tranfer</xsl:text>
																																					</span>
																																					<br/>
																																					<span>
																																						<xsl:text>Width</xsl:text>
																																					</span>
																																				</th>
																																				<th style="text-align:center; ">
																																					<span>
																																						<xsl:text>Enclosure </xsl:text>
																																					</span>
																																					<br/>
																																					<span>
																																						<xsl:text>Number</xsl:text>
																																					</span>
																																				</th>
																																				<th style="text-align:center; ">
																																					<span>
																																						<xsl:text>Firmware </xsl:text>
																																					</span>
																																					<br/>
																																					<span>
																																						<xsl:text>Version</xsl:text>
																																					</span>
																																				</th>
																																				<th style="text-align:center; ">
																																					<span>
																																						<xsl:text>PFA </xsl:text>
																																					</span>
																																					<br/>
																																					<span>
																																						<xsl:text>Count</xsl:text>
																																					</span>
																																				</th>
																																				<th style="text-align:center; ">
																																					<span>
																																						<xsl:text>Serial </xsl:text>
																																					</span>
																																					<br/>
																																					<span>
																																						<xsl:text>Number</xsl:text>
																																					</span>
																																				</th>
																																			</tr>
																																		</thead>
																																		<tbody>
																																			<xsl:for-each select="Tape">
																																				<tr>
																																					<td style="text-align:center; ">
																																						<span>
																																							<xsl:text>Tape Drive</xsl:text>
																																						</span>
																																					</td>
																																					<td>
																																						<xsl:for-each select="@Name">
																																							<span>
																																								<xsl:value-of select="string(.)"/>
																																							</span>
																																						</xsl:for-each>
																																					</td>
																																					<td>
																																						<xsl:for-each select="Status">
																																							<xsl:apply-templates/>
																																						</xsl:for-each>
																																					</td>
																																					<td style="text-align:center; ">
																																						<xsl:for-each select="PortNumber">
																																							<xsl:apply-templates/>
																																						</xsl:for-each>
																																					</td>
																																					<td style="text-align:center; ">
																																						<xsl:for-each select="Activity">
																																							<xsl:apply-templates/>
																																						</xsl:for-each>
																																					</td>
																																					<td style="text-align:center; ">
																																						<xsl:for-each select="PhysicalSize">
																																							<xsl:apply-templates/>
																																						</xsl:for-each>
																																					</td>
																																					<td style="text-align:center; ">
																																						<xsl:choose>
																																							<xsl:when test="count( RPM )">
																																								<xsl:for-each select="RPM">
																																									<xsl:apply-templates/>
																																								</xsl:for-each>
																																							</xsl:when>
																																							<xsl:otherwise>
																																								<span>
																																									<xsl:text>N/A</xsl:text>
																																								</span>
																																							</xsl:otherwise>
																																						</xsl:choose>
																																					</td>
																																					<td style="text-align:center; ">
																																						<xsl:for-each select="TransferSpeed">
																																							<xsl:apply-templates/>
																																						</xsl:for-each>
																																						<span>
																																							<xsl:text> MBit</xsl:text>
																																						</span>
																																					</td>
																																					<td style="text-align:center; ">
																																						<xsl:for-each select="TransferWidth">
																																							<xsl:apply-templates/>
																																						</xsl:for-each>
																																						<span>
																																							<xsl:text> Bit</xsl:text>
																																						</span>
																																					</td>
																																					<td style="text-align:center; ">
																																						<xsl:for-each select="EnclosureNumber">
																																							<xsl:apply-templates/>
																																						</xsl:for-each>
																																					</td>
																																					<td style="text-align:center; ">
																																						<xsl:for-each select="FirmwareVersion">
																																							<xsl:apply-templates/>
																																						</xsl:for-each>
																																					</td>
																																					<td style="text-align:center; ">
																																						<xsl:for-each select="PFACount">
																																							<xsl:apply-templates/>
																																						</xsl:for-each>
																																					</td>
																																					<td style="text-align:center; ">
																																						<xsl:choose>
																																							<xsl:when test="count( SerialNumber )">
																																								<xsl:for-each select="SerialNumber">
																																									<xsl:apply-templates/>
																																								</xsl:for-each>
																																							</xsl:when>
																																							<xsl:otherwise>
																																								<span>
																																									<xsl:text>N/A</xsl:text>
																																								</span>
																																							</xsl:otherwise>
																																						</xsl:choose>
																																					</td>
																																				</tr>
																																			</xsl:for-each>
																																		</tbody>
																																	</table>
																																</xsl:if>
																																<xsl:if test="not (count( CDROM ) ) and not (count(Tape)) and not (count(PhysicalDrive))">
																																	<span>
																																		<xsl:text>No drive attached</xsl:text>
																																	</span>
																																</xsl:if>
																															</td>
																														</tr>
																													</xsl:for-each>
																												</xsl:for-each>
																											</tbody>
																										</table>
																									</xsl:when>
																									<xsl:otherwise>
																										<xsl:for-each select="@Type">
																											<span>
																												<xsl:value-of select="string(.)"/>
																											</span>
																										</xsl:for-each>
																										<span>
																											<xsl:text> adapter - no SAS/SATA ports!</xsl:text>
																										</span>
																									</xsl:otherwise>
																								</xsl:choose>
																							</xsl:if>
																						</td>
																					</tr>
																				</xsl:for-each>
																			</xsl:for-each>
																		</xsl:for-each>
																	</xsl:for-each>
																</xsl:for-each>
															</xsl:for-each>
														</xsl:for-each>
													</tbody>
												</table>
											</xsl:if>
											<xsl:if test="Root/Software/ServerView/ServerViewRaid/amEMSV/System/Adapter/@Type =&quot;SCSI&quot;">
												<br/>
												<br/>
												<span style="font-weight:bold; ">
													<xsl:text>SCSI RAID Adapter(s)&#160; (SCSI-Channels</xsl:text>
												</span>
												<span>
													<xsl:text>)</xsl:text>
												</span>
												<br/>
												<br/>
												<table border="1" cellpadding="2" cellspacing="0">
													<xsl:variable name="altova:CurrContextGrid_102" select="."/>
													<thead>
														<tr>
															<th colspan="3" style="text-align:center; ">
																<span>
																	<xsl:text>Adapter</xsl:text>
																</span>
																<br/>
															</th>
															<th rowspan="2">
																<span>
																	<xsl:text>SCSI Channels</xsl:text>
																</span>
															</th>
														</tr>
														<tr>
															<th style="text-align:center; ">
																<span>
																	<xsl:text>Nr</xsl:text>
																</span>
															</th>
															<th style="text-align:center; ">
																<span>
																	<xsl:text>Name</xsl:text>
																</span>
															</th>
															<th style="text-align:center; ">
																<span>
																	<xsl:text>Type</xsl:text>
																</span>
															</th>
														</tr>
													</thead>
													<tbody>
														<xsl:for-each select="Root">
															<xsl:for-each select="Software">
																<xsl:for-each select="ServerView">
																	<xsl:for-each select="ServerViewRaid">
																		<xsl:for-each select="amEMSV">
																			<xsl:for-each select="System">
																				<xsl:for-each select="Adapter">
																					<tr>
																						<td style="text-align:center; ">
																							<xsl:if test="(@Type=&quot;SCSI&quot;)">
																								<xsl:for-each select="@Nr">
																									<span>
																										<xsl:value-of select="string(.)"/>
																									</span>
																								</xsl:for-each>
																							</xsl:if>
																						</td>
																						<td>
																							<xsl:if test="(@Type=&quot;SCSI&quot;)">
																								<xsl:for-each select="@Name">
																									<span>
																										<xsl:value-of select="string(.)"/>
																									</span>
																								</xsl:for-each>
																							</xsl:if>
																						</td>
																						<td>
																							<xsl:if test="(@Type=&quot;SCSI&quot;)">
																								<xsl:for-each select="@Type">
																									<span>
																										<xsl:value-of select="string(.)"/>
																									</span>
																								</xsl:for-each>
																							</xsl:if>
																						</td>
																						<td>
																							<xsl:if test="(@Type=&quot;SCSI&quot;)">
																								<xsl:choose>
																									<xsl:when test="@Type = &quot;SCSI&quot;">
																										<table border="1" cellpadding="2" cellspacing="0">
																											<xsl:variable name="altova:CurrContextGrid_103" select="."/>
																											<thead>
																												<tr>
																													<th style="text-align:center; ">
																														<span>
																															<xsl:text>Channel</xsl:text>
																														</span>
																													</th>
																													<th>
																														<span>
																															<xsl:text>Physical Drives</xsl:text>
																														</span>
																													</th>
																												</tr>
																											</thead>
																											<tbody>
																												<xsl:for-each select="Channels">
																													<xsl:for-each select="Channel">
																														<tr>
																															<td style="text-align:center; ">
																																<xsl:for-each select="@Nr">
																																	<span>
																																		<xsl:value-of select="string(.)"/>
																																	</span>
																																</xsl:for-each>
																															</td>
																															<td>
																																<xsl:choose>
																																	<xsl:when test="count(  PhysicalDrive  )">
																																		<table border="1" cellpadding="2" cellspacing="0">
																																			<xsl:variable name="altova:CurrContextGrid_104" select="."/>
																																			<thead>
																																				<tr>
																																					<th>
																																						<span>
																																							<xsl:text>Name</xsl:text>
																																						</span>
																																					</th>
																																					<th>
																																						<span>
																																							<xsl:text>Size</xsl:text>
																																						</span>
																																					</th>
																																					<th>
																																						<span>
																																							<xsl:text>RPM</xsl:text>
																																						</span>
																																					</th>
																																					<th>
																																						<span>
																																							<xsl:text>Transfer</xsl:text>
																																						</span>
																																						<br/>
																																						<span>
																																							<xsl:text>Speed</xsl:text>
																																						</span>
																																					</th>
																																					<th>
																																						<span>
																																							<xsl:text>Transfer </xsl:text>
																																						</span>
																																						<br/>
																																						<span>
																																							<xsl:text>Width</xsl:text>
																																						</span>
																																					</th>
																																					<th>
																																						<span>
																																							<xsl:text>Status</xsl:text>
																																						</span>
																																					</th>
																																					<th>
																																						<span>
																																							<xsl:text>Activity</xsl:text>
																																						</span>
																																					</th>
																																					<th>
																																						<span>
																																							<xsl:text>Slot</xsl:text>
																																						</span>
																																					</th>
																																					<th>
																																						<span>
																																							<xsl:text>Enclosure</xsl:text>
																																						</span>
																																						<br/>
																																						<span>
																																							<xsl:text> Number</xsl:text>
																																						</span>
																																					</th>
																																					<th>
																																						<span>
																																							<xsl:text>Firmware</xsl:text>
																																						</span>
																																						<br/>
																																						<span>
																																							<xsl:text>Version</xsl:text>
																																						</span>
																																					</th>
																																					<th>
																																						<span>
																																							<xsl:text>PFA</xsl:text>
																																						</span>
																																						<br/>
																																						<span>
																																							<xsl:text>Count</xsl:text>
																																						</span>
																																					</th>
																																					<th>
																																						<span>
																																							<xsl:text>Rebuild</xsl:text>
																																						</span>
																																						<br/>
																																						<span>
																																							<xsl:text>Progress</xsl:text>
																																						</span>
																																					</th>
																																					<th>
																																						<span>
																																							<xsl:text>Serial Number</xsl:text>
																																						</span>
																																					</th>
																																				</tr>
																																			</thead>
																																			<tbody>
																																				<xsl:for-each select="PhysicalDrive">
																																					<tr>
																																						<td>
																																							<xsl:for-each select="@Name">
																																								<span>
																																									<xsl:value-of select="string(.)"/>
																																								</span>
																																							</xsl:for-each>
																																						</td>
																																						<td>
																																							<xsl:for-each select="PhysicalSize">
																																								<xsl:apply-templates/>
																																							</xsl:for-each>
																																							<span>
																																								<xsl:text> MByte</xsl:text>
																																							</span>
																																						</td>
																																						<td align="center">
																																							<xsl:for-each select="RPM">
																																								<xsl:apply-templates/>
																																							</xsl:for-each>
																																						</td>
																																						<td align="center">
																																							<xsl:for-each select="TransferSpeed">
																																								<xsl:apply-templates/>
																																							</xsl:for-each>
																																							<span>
																																								<xsl:text> MBit</xsl:text>
																																							</span>
																																						</td>
																																						<td align="center">
																																							<xsl:for-each select="TransferWidth">
																																								<xsl:apply-templates/>
																																							</xsl:for-each>
																																							<span>
																																								<xsl:text> Bit</xsl:text>
																																							</span>
																																						</td>
																																						<td align="center">
																																							<xsl:for-each select="Status">
																																								<xsl:apply-templates/>
																																							</xsl:for-each>
																																						</td>
																																						<td align="center">
																																							<xsl:for-each select="Activity">
																																								<xsl:apply-templates/>
																																							</xsl:for-each>
																																						</td>
																																						<td align="center">
																																							<xsl:choose>
																																								<xsl:when test="count( Slot ) != 0">
																																									<xsl:for-each select="Slot">
																																										<xsl:apply-templates/>
																																									</xsl:for-each>
																																								</xsl:when>
																																								<xsl:otherwise>
																																									<span>
																																										<xsl:text>N/A</xsl:text>
																																									</span>
																																								</xsl:otherwise>
																																							</xsl:choose>
																																						</td>
																																						<td align="center">
																																							<xsl:choose>
																																								<xsl:when test="count( EnclosureNumber ) != 0">
																																									<xsl:for-each select="EnclosureNumber">
																																										<xsl:apply-templates/>
																																									</xsl:for-each>
																																								</xsl:when>
																																								<xsl:otherwise>
																																									<span>
																																										<xsl:text>N/A</xsl:text>
																																									</span>
																																								</xsl:otherwise>
																																							</xsl:choose>
																																						</td>
																																						<td align="center">
																																							<xsl:for-each select="FirmwareVersion">
																																								<xsl:apply-templates/>
																																							</xsl:for-each>
																																						</td>
																																						<td align="center">
																																							<xsl:for-each select="PFACount">
																																								<xsl:apply-templates/>
																																							</xsl:for-each>
																																						</td>
																																						<td align="center">
																																							<xsl:for-each select="RebuildProgress">
																																								<xsl:apply-templates/>
																																							</xsl:for-each>
																																						</td>
																																						<td>
																																							<xsl:for-each select="SerialNumber">
																																								<xsl:apply-templates/>
																																							</xsl:for-each>
																																						</td>
																																					</tr>
																																				</xsl:for-each>
																																			</tbody>
																																		</table>
																																	</xsl:when>
																																	<xsl:otherwise>
																																		<span>
																																			<xsl:text>No drives attached!</xsl:text>
																																		</span>
																																	</xsl:otherwise>
																																</xsl:choose>
																															</td>
																														</tr>
																													</xsl:for-each>
																												</xsl:for-each>
																											</tbody>
																										</table>
																									</xsl:when>
																									<xsl:otherwise>
																										<xsl:for-each select="@Type">
																											<span>
																												<xsl:value-of select="string(.)"/>
																											</span>
																										</xsl:for-each>
																										<span>
																											<xsl:text> adapter - no SCSI channels!</xsl:text>
																										</span>
																									</xsl:otherwise>
																								</xsl:choose>
																							</xsl:if>
																						</td>
																					</tr>
																				</xsl:for-each>
																			</xsl:for-each>
																		</xsl:for-each>
																	</xsl:for-each>
																</xsl:for-each>
															</xsl:for-each>
														</xsl:for-each>
													</tbody>
												</table>
											</xsl:if>
											<xsl:if test="count(  Root/Software/ServerView/ServerViewRaid/amEMSV/System/Adapter/Ports/Port/Enclosure  )  != 0">
												<br/>
												<br/>
												<span style="font-weight:bold; ">
													<xsl:text>RAID Adapter - SATA/SAS-Expander</xsl:text>
												</span>
												<br/>
												<br/>
												<table border="1">
													<xsl:variable name="altova:CurrContextGrid_105" select="."/>
													<tbody>
														<xsl:for-each select="Root">
															<xsl:for-each select="Software">
																<xsl:for-each select="ServerView">
																	<xsl:for-each select="ServerViewRaid">
																		<xsl:for-each select="amEMSV">
																			<xsl:for-each select="System">
																				<xsl:for-each select="Adapter">
																					<tr>
																						<td>
																							<xsl:for-each select="@Name">
																								<span>
																									<xsl:value-of select="string(.)"/>
																								</span>
																							</xsl:for-each>
																						</td>
																						<td>
																							<table border="1" cellpadding="2" cellspacing="0">
																								<xsl:variable name="altova:CurrContextGrid_106" select="."/>
																								<thead>
																									<tr>
																										<th width="70">
																											<span>
																												<xsl:text>Nr</xsl:text>
																											</span>
																										</th>
																										<th width="80">
																											<span>
																												<xsl:text>Type</xsl:text>
																											</span>
																										</th>
																										<th width="100">
																											<span>
																												<xsl:text>SAS Address</xsl:text>
																											</span>
																										</th>
																										<th align="left">
																											<span>
																												<xsl:text>Expander</xsl:text>
																											</span>
																										</th>
																									</tr>
																								</thead>
																								<tbody>
																									<xsl:for-each select="Ports">
																										<xsl:for-each select="Port">
																											<tr>
																												<td align="center" width="70">
																													<span>
																														<xsl:text>Port </xsl:text>
																													</span>
																													<xsl:for-each select="PortNumber">
																														<xsl:apply-templates/>
																													</xsl:for-each>
																												</td>
																												<td align="center" width="80">
																													<xsl:for-each select="@Type">
																														<span>
																															<xsl:value-of select="string(.)"/>
																														</span>
																													</xsl:for-each>
																												</td>
																												<td align="center" width="100">
																													<xsl:choose>
																														<xsl:when test="count(  SASAddress   )  != 0">
																															<xsl:for-each select="SASAddress">
																																<xsl:apply-templates/>
																															</xsl:for-each>
																														</xsl:when>
																														<xsl:otherwise>
																															<span>
																																<xsl:text>N/A</xsl:text>
																															</span>
																														</xsl:otherwise>
																													</xsl:choose>
																												</td>
																												<td>
																													<xsl:choose>
																														<xsl:when test="count(  Enclosure  )">
																															<table border="1" cellpadding="2" cellspacing="0">
																																<xsl:variable name="altova:CurrContextGrid_107" select="."/>
																																<thead>
																																	<tr>
																																		<th>
																																			<span>
																																				<xsl:text>Enclosure Number</xsl:text>
																																			</span>
																																		</th>
																																		<th>
																																			<span>
																																				<xsl:text>Name</xsl:text>
																																			</span>
																																		</th>
																																		<th>
																																			<span>
																																				<xsl:text>Status</xsl:text>
																																			</span>
																																		</th>
																																		<th>
																																			<span>
																																				<xsl:text>Physical Drives</xsl:text>
																																			</span>
																																		</th>
																																	</tr>
																																</thead>
																																<tbody>
																																	<xsl:for-each select="Enclosure">
																																		<tr>
																																			<td>
																																				<xsl:for-each select="EnclosureNumber">
																																					<xsl:apply-templates/>
																																				</xsl:for-each>
																																			</td>
																																			<td>
																																				<xsl:for-each select="@Name">
																																					<span>
																																						<xsl:value-of select="string(.)"/>
																																					</span>
																																				</xsl:for-each>
																																			</td>
																																			<td>
																																				<xsl:for-each select="Status">
																																					<xsl:apply-templates/>
																																				</xsl:for-each>
																																			</td>
																																			<td>
																																				<table border="1" cellpadding="2" cellspacing="0">
																																					<xsl:variable name="altova:CurrContextGrid_108" select="."/>
																																					<thead>
																																						<tr>
																																							<th>
																																								<span>
																																									<xsl:text>Nr</xsl:text>
																																								</span>
																																							</th>
																																							<th>
																																								<span>
																																									<xsl:text>Name</xsl:text>
																																								</span>
																																							</th>
																																							<th>
																																								<span>
																																									<xsl:text>Size</xsl:text>
																																								</span>
																																							</th>
																																							<th style="text-align:center; ">
																																								<span>
																																									<xsl:text>RPM</xsl:text>
																																								</span>
																																							</th>
																																							<th style="text-align:center; ">
																																								<span>
																																									<xsl:text>Transfer</xsl:text>
																																								</span>
																																								<br/>
																																								<span>
																																									<xsl:text>Width</xsl:text>
																																								</span>
																																							</th>
																																							<th style="text-align:center; ">
																																								<span>
																																									<xsl:text>Transfer</xsl:text>
																																								</span>
																																								<br/>
																																								<span>
																																									<xsl:text>Speed</xsl:text>
																																								</span>
																																							</th>
																																							<th style="text-align:center; ">
																																								<span>
																																									<xsl:text>Status</xsl:text>
																																								</span>
																																							</th>
																																							<th style="text-align:center; ">
																																								<span>
																																									<xsl:text>Activity</xsl:text>
																																								</span>
																																							</th>
																																							<th style="text-align:center; ">
																																								<span>
																																									<xsl:text>Slot</xsl:text>
																																								</span>
																																							</th>
																																							<th style="text-align:center; ">
																																								<span>
																																									<xsl:text>Firmware</xsl:text>
																																								</span>
																																								<br/>
																																								<span>
																																									<xsl:text>Version</xsl:text>
																																								</span>
																																							</th>
																																							<th style="text-align:center; ">
																																								<span>
																																									<xsl:text>PFA</xsl:text>
																																								</span>
																																								<br/>
																																								<span>
																																									<xsl:text>Count</xsl:text>
																																								</span>
																																							</th>
																																							<th style="text-align:center; ">
																																								<span>
																																									<xsl:text>Rebuild</xsl:text>
																																								</span>
																																								<br/>
																																								<span>
																																									<xsl:text>Progress</xsl:text>
																																								</span>
																																							</th>
																																							<th style="text-align:center; ">
																																								<span>
																																									<xsl:text>Serial</xsl:text>
																																								</span>
																																								<br/>
																																								<span>
																																									<xsl:text>Number</xsl:text>
																																								</span>
																																							</th>
																																						</tr>
																																					</thead>
																																					<tbody>
																																						<xsl:for-each select="PhysicalDrive">
																																							<tr>
																																								<td>
																																									<xsl:for-each select="@DeviceNumber">
																																										<span>
																																											<xsl:value-of select="string(.)"/>
																																										</span>
																																									</xsl:for-each>
																																								</td>
																																								<td>
																																									<xsl:for-each select="@Name">
																																										<span>
																																											<xsl:value-of select="string(.)"/>
																																										</span>
																																									</xsl:for-each>
																																								</td>
																																								<td>
																																									<xsl:for-each select="PhysicalSize">
																																										<xsl:apply-templates/>
																																									</xsl:for-each>
																																									<span>
																																										<xsl:text> MByte</xsl:text>
																																									</span>
																																								</td>
																																								<td style="text-align:center; ">
																																									<xsl:for-each select="RPM">
																																										<xsl:apply-templates/>
																																									</xsl:for-each>
																																								</td>
																																								<td style="text-align:center; ">
																																									<xsl:for-each select="TransferWidth">
																																										<xsl:apply-templates/>
																																									</xsl:for-each>
																																									<span>
																																										<xsl:text> Bit</xsl:text>
																																									</span>
																																								</td>
																																								<td style="text-align:center; ">
																																									<xsl:choose>
																																										<xsl:when test="count(  TransferSpeed )">
																																											<xsl:for-each select="TransferSpeed">
																																												<xsl:apply-templates/>
																																											</xsl:for-each>
																																										</xsl:when>
																																										<xsl:otherwise>
																																											<span>
																																												<xsl:text>N/A</xsl:text>
																																											</span>
																																										</xsl:otherwise>
																																									</xsl:choose>
																																								</td>
																																								<td style="text-align:center; ">
																																									<xsl:for-each select="@DeviceStatus">
																																										<span>
																																											<xsl:value-of select="string(.)"/>
																																										</span>
																																									</xsl:for-each>
																																								</td>
																																								<td style="text-align:center; ">
																																									<xsl:for-each select="Activity">
																																										<xsl:apply-templates/>
																																									</xsl:for-each>
																																								</td>
																																								<td style="text-align:center; ">
																																									<xsl:for-each select="Slot">
																																										<xsl:apply-templates/>
																																									</xsl:for-each>
																																								</td>
																																								<td style="text-align:center; ">
																																									<xsl:for-each select="FirmwareVersion">
																																										<xsl:apply-templates/>
																																									</xsl:for-each>
																																								</td>
																																								<td style="text-align:center; ">
																																									<xsl:for-each select="PFACount">
																																										<xsl:apply-templates/>
																																									</xsl:for-each>
																																								</td>
																																								<td style="text-align:center; ">
																																									<xsl:for-each select="RebuildProgress">
																																										<xsl:apply-templates/>
																																									</xsl:for-each>
																																								</td>
																																								<td style="text-align:center; ">
																																									<xsl:for-each select="SerialNumber">
																																										<xsl:apply-templates/>
																																									</xsl:for-each>
																																								</td>
																																							</tr>
																																						</xsl:for-each>
																																					</tbody>
																																				</table>
																																			</td>
																																		</tr>
																																	</xsl:for-each>
																																</tbody>
																															</table>
																														</xsl:when>
																														<xsl:otherwise>
																															<span>
																																<xsl:text>No drive attached</xsl:text>
																															</span>
																														</xsl:otherwise>
																													</xsl:choose>
																												</td>
																											</tr>
																										</xsl:for-each>
																									</xsl:for-each>
																								</tbody>
																							</table>
																						</td>
																					</tr>
																				</xsl:for-each>
																			</xsl:for-each>
																		</xsl:for-each>
																	</xsl:for-each>
																</xsl:for-each>
															</xsl:for-each>
														</xsl:for-each>
													</tbody>
												</table>
											</xsl:if>
											<br/>
											<br/>
											<span style="font-weight:bold; ">
												<xsl:text>RAID Adapter Software (BIOS and Firmware)</xsl:text>
											</span>
											<br/>
											<br/>
											<table border="1" cellpadding="2" cellspacing="0">
												<xsl:variable name="altova:CurrContextGrid_109" select="."/>
												<thead>
													<tr>
														<th colspan="2" style="text-align:center; ">
															<span>
																<xsl:text>Adapter </xsl:text>
															</span>
															<br/>
														</th>
														<th rowspan="2" style="text-align:center; ">
															<span>
																<xsl:text>Serial</xsl:text>
															</span>
															<br/>
															<span>
																<xsl:text>Number</xsl:text>
															</span>
														</th>
														<th rowspan="2">
															<span>
																<xsl:text>BIOS</xsl:text>
															</span>
															<br/>
															<span>
																<xsl:text>Status</xsl:text>
															</span>
														</th>
														<th rowspan="2">
															<span>
																<xsl:text>BIOS</xsl:text>
															</span>
															<br/>
															<span>
																<xsl:text>Version</xsl:text>
															</span>
														</th>
														<th rowspan="2">
															<span>
																<xsl:text>Driver</xsl:text>
															</span>
															<br/>
															<span>
																<xsl:text>Version</xsl:text>
															</span>
														</th>
														<th rowspan="2">
															<span>
																<xsl:text>Firmware Package</xsl:text>
															</span>
															<br/>
															<span>
																<xsl:text>Version</xsl:text>
															</span>
														</th>
														<th rowspan="2" style="text-align:center; ">
															<span>
																<xsl:text>Firmware</xsl:text>
															</span>
															<br/>
															<span>
																<xsl:text>Version</xsl:text>
															</span>
														</th>
													</tr>
													<tr>
														<th style="text-align:center; ">
															<span>
																<xsl:text>Nr</xsl:text>
															</span>
														</th>
														<th style="text-align:center; ">
															<span>
																<xsl:text>Name</xsl:text>
															</span>
														</th>
													</tr>
												</thead>
												<tbody>
													<xsl:for-each select="Root">
														<xsl:for-each select="Software">
															<xsl:for-each select="ServerView">
																<xsl:for-each select="ServerViewRaid">
																	<xsl:for-each select="amEMSV">
																		<xsl:for-each select="System">
																			<xsl:for-each select="Adapter">
																				<tr>
																					<td style="text-align:center; ">
																						<xsl:for-each select="@Nr">
																							<span>
																								<xsl:value-of select="string(.)"/>
																							</span>
																						</xsl:for-each>
																					</td>
																					<td>
																						<xsl:for-each select="Name">
																							<xsl:apply-templates/>
																						</xsl:for-each>
																					</td>
																					<td style="text-align:center; ">
																						<xsl:choose>
																							<xsl:when test="count( SerialNumber )">
																								<xsl:for-each select="SerialNumber">
																									<xsl:apply-templates/>
																								</xsl:for-each>
																							</xsl:when>
																							<xsl:otherwise>
																								<span>
																									<xsl:text>N/A</xsl:text>
																								</span>
																							</xsl:otherwise>
																						</xsl:choose>
																					</td>
																					<td align="center">
																						<xsl:choose>
																							<xsl:when test="count(  BIOSStatus )  != 0">
																								<xsl:for-each select="BIOSStatus">
																									<xsl:apply-templates/>
																								</xsl:for-each>
																							</xsl:when>
																							<xsl:otherwise>
																								<span>
																									<xsl:text>N/A</xsl:text>
																								</span>
																							</xsl:otherwise>
																						</xsl:choose>
																					</td>
																					<td>
																						<xsl:choose>
																							<xsl:when test="count( BIOSVersion ) != 0">
																								<xsl:for-each select="BIOSVersion">
																									<xsl:apply-templates/>
																								</xsl:for-each>
																							</xsl:when>
																							<xsl:otherwise>
																								<span>
																									<xsl:text>N/A</xsl:text>
																								</span>
																							</xsl:otherwise>
																						</xsl:choose>
																					</td>
																					<td>
																						<xsl:for-each select="DriverVersion">
																							<xsl:apply-templates/>
																						</xsl:for-each>
																					</td>
																					<td>
																						<xsl:choose>
																							<xsl:when test="count( FWPackageVersion ) != 0">
																								<xsl:for-each select="FWPackageVersion">
																									<xsl:apply-templates/>
																								</xsl:for-each>
																							</xsl:when>
																							<xsl:otherwise>
																								<span>
																									<xsl:text>N/A</xsl:text>
																								</span>
																							</xsl:otherwise>
																						</xsl:choose>
																					</td>
																					<td style="text-align:center; ">
																						<xsl:choose>
																							<xsl:when test="count( FirmwareVersion ) != 0">
																								<xsl:for-each select="FirmwareVersion">
																									<xsl:apply-templates/>
																								</xsl:for-each>
																							</xsl:when>
																							<xsl:otherwise>
																								<span>
																									<xsl:text>N/A</xsl:text>
																								</span>
																							</xsl:otherwise>
																						</xsl:choose>
																					</td>
																				</tr>
																			</xsl:for-each>
																		</xsl:for-each>
																	</xsl:for-each>
																</xsl:for-each>
															</xsl:for-each>
														</xsl:for-each>
													</xsl:for-each>
												</tbody>
											</table>
											<br/>
											<br/>
											<span style="font-weight:bold; ">
												<xsl:text>RAID Adapter Battery Backup Unit (BBU)</xsl:text>
											</span>
											<br/>
											<br/>
											<xsl:choose>
												<xsl:when test="count(  Root/Software/ServerView/ServerViewRaid/amEMSV/System/Adapter/Battery  )  != 0">
													<table border="1" cellpadding="2" cellspacing="0">
														<xsl:variable name="altova:CurrContextGrid_110" select="."/>
														<thead>
															<tr>
																<th colspan="2" style="text-align:center; ">
																	<span>
																		<xsl:text>Adapter</xsl:text>
																	</span>
																	<br/>
																</th>
																<th rowspan="2">
																	<span>
																		<xsl:text>Battery Backup Unit</xsl:text>
																	</span>
																</th>
															</tr>
															<tr>
																<th style="text-align:center; ">
																	<span>
																		<xsl:text>Nr</xsl:text>
																	</span>
																</th>
																<th style="text-align:center; ">
																	<span>
																		<xsl:text>Name</xsl:text>
																	</span>
																</th>
															</tr>
														</thead>
														<tbody>
															<xsl:for-each select="Root">
																<xsl:for-each select="Software">
																	<xsl:for-each select="ServerView">
																		<xsl:for-each select="ServerViewRaid">
																			<xsl:for-each select="amEMSV">
																				<xsl:for-each select="System">
																					<xsl:for-each select="Adapter">
																						<tr>
																							<td style="text-align:center; ">
																								<xsl:for-each select="@Nr">
																									<span>
																										<xsl:value-of select="string(.)"/>
																									</span>
																								</xsl:for-each>
																							</td>
																							<td>
																								<xsl:for-each select="@Name">
																									<span>
																										<xsl:value-of select="string(.)"/>
																									</span>
																								</xsl:for-each>
																							</td>
																							<td>
																								<xsl:choose>
																									<xsl:when test="count(  Battery  )">
																										<table border="1" cellpadding="2" cellspacing="0">
																											<xsl:variable name="altova:CurrContextGrid_111" select="."/>
																											<thead>
																												<tr>
																													<th style="text-align:center; ">
																														<span>
																															<xsl:text>Name</xsl:text>
																														</span>
																													</th>
																													<th style="text-align:center; ">
																														<span>
																															<xsl:text>Vendor</xsl:text>
																														</span>
																													</th>
																													<th style="text-align:center; ">
																														<span>
																															<xsl:text>Status</xsl:text>
																														</span>
																													</th>
																													<th style="text-align:center; ">
																														<span>
																															<xsl:text>Manufacturer</xsl:text>
																														</span>
																														<br/>
																														<span>
																															<xsl:text>Date</xsl:text>
																														</span>
																													</th>
																													<th style="text-align:center; ">
																														<span>
																															<xsl:text>Battery</xsl:text>
																														</span>
																														<br/>
																														<span>
																															<xsl:text>Type</xsl:text>
																														</span>
																													</th>
																													<th style="text-align:center; ">
																														<span>
																															<xsl:text>Design</xsl:text>
																														</span>
																														<br/>
																														<span>
																															<xsl:text>Capacity</xsl:text>
																														</span>
																													</th>
																													<th style="text-align:center; ">
																														<span>
																															<xsl:text>Remaining</xsl:text>
																														</span>
																														<br/>
																														<span>
																															<xsl:text>Capacity</xsl:text>
																														</span>
																													</th>
																													<th style="text-align:center; ">
																														<span>
																															<xsl:text>Design</xsl:text>
																														</span>
																														<br/>
																														<span>
																															<xsl:text>Voltage</xsl:text>
																														</span>
																													</th>
																													<th style="text-align:center; ">
																														<span>
																															<xsl:text>Current</xsl:text>
																														</span>
																														<br/>
																														<span>
																															<xsl:text>Voltage</xsl:text>
																														</span>
																													</th>
																													<th style="text-align:center; ">
																														<span>
																															<xsl:text>Serial</xsl:text>
																														</span>
																														<br/>
																														<span>
																															<xsl:text>Number</xsl:text>
																														</span>
																													</th>
																													<th style="text-align:center; ">
																														<span>
																															<xsl:text>Temperature</xsl:text>
																														</span>
																													</th>
																												</tr>
																											</thead>
																											<tbody>
																												<xsl:for-each select="Battery">
																													<tr>
																														<td style="text-align:center; ">
																															<xsl:choose>
																																<xsl:when test="count( Name )">
																																	<xsl:for-each select="Name">
																																		<xsl:apply-templates/>
																																	</xsl:for-each>
																																</xsl:when>
																																<xsl:otherwise>
																																	<span>
																																		<xsl:text>N/A</xsl:text>
																																	</span>
																																</xsl:otherwise>
																															</xsl:choose>
																														</td>
																														<td style="text-align:center; ">
																															<xsl:choose>
																																<xsl:when test="count( Vendor )">
																																	<xsl:for-each select="Vendor">
																																		<xsl:apply-templates/>
																																	</xsl:for-each>
																																</xsl:when>
																																<xsl:otherwise>
																																	<span>
																																		<xsl:text>N/A</xsl:text>
																																	</span>
																																</xsl:otherwise>
																															</xsl:choose>
																														</td>
																														<td style="text-align:center; ">
																															<xsl:for-each select="Status">
																																<xsl:apply-templates/>
																															</xsl:for-each>
																														</td>
																														<td style="text-align:center; ">
																															<xsl:choose>
																																<xsl:when test="count( ManufactureDate  )">
																																	<xsl:for-each select="ManufactureDate">
																																		<xsl:apply-templates/>
																																	</xsl:for-each>
																																</xsl:when>
																																<xsl:otherwise>
																																	<span>
																																		<xsl:text>N/A</xsl:text>
																																	</span>
																																</xsl:otherwise>
																															</xsl:choose>
																														</td>
																														<td style="text-align:center; ">
																															<xsl:choose>
																																<xsl:when test="count( Type )">
																																	<xsl:for-each select="Type">
																																		<xsl:apply-templates/>
																																	</xsl:for-each>
																																</xsl:when>
																																<xsl:otherwise>
																																	<span>
																																		<xsl:text>N/A</xsl:text>
																																	</span>
																																</xsl:otherwise>
																															</xsl:choose>
																														</td>
																														<td style="text-align:center; ">
																															<xsl:choose>
																																<xsl:when test="count( DesignCapacity )">
																																	<xsl:for-each select="DesignCapacity">
																																		<xsl:apply-templates/>
																																	</xsl:for-each>
																																</xsl:when>
																																<xsl:otherwise>
																																	<span>
																																		<xsl:text>N/A</xsl:text>
																																	</span>
																																</xsl:otherwise>
																															</xsl:choose>
																														</td>
																														<td style="text-align:center; ">
																															<xsl:choose>
																																<xsl:when test="count( RemainingCapacity )">
																																	<xsl:for-each select="RemainingCapacity">
																																		<xsl:apply-templates/>
																																	</xsl:for-each>
																																	<xsl:if test="count(  ../RelStateofCharge  )">
																																		<span>
																																			<xsl:text>(</xsl:text>
																																		</span>
																																		<xsl:for-each select="RelStateofCharge">
																																			<xsl:apply-templates/>
																																		</xsl:for-each>
																																		<span>
																																			<xsl:text>%)</xsl:text>
																																		</span>
																																	</xsl:if>
																																</xsl:when>
																																<xsl:otherwise>
																																	<span>
																																		<xsl:text>N/A</xsl:text>
																																	</span>
																																</xsl:otherwise>
																															</xsl:choose>
																														</td>
																														<td style="text-align:center; ">
																															<xsl:choose>
																																<xsl:when test="count( DesignVoltage  )">
																																	<xsl:for-each select="DesignVoltage">
																																		<xsl:apply-templates/>
																																	</xsl:for-each>
																																</xsl:when>
																																<xsl:otherwise>
																																	<span>
																																		<xsl:text>N/A</xsl:text>
																																	</span>
																																</xsl:otherwise>
																															</xsl:choose>
																														</td>
																														<td style="text-align:center; ">
																															<xsl:choose>
																																<xsl:when test="count( Voltage )">
																																	<xsl:for-each select="Voltage">
																																		<xsl:apply-templates/>
																																	</xsl:for-each>
																																</xsl:when>
																																<xsl:otherwise>
																																	<span>
																																		<xsl:text>N/A</xsl:text>
																																	</span>
																																</xsl:otherwise>
																															</xsl:choose>
																														</td>
																														<td style="text-align:center; ">
																															<xsl:choose>
																																<xsl:when test="count( SerialNumber )">
																																	<xsl:for-each select="SerialNumber">
																																		<xsl:apply-templates/>
																																	</xsl:for-each>
																																</xsl:when>
																																<xsl:otherwise>
																																	<span>
																																		<xsl:text>N/A</xsl:text>
																																	</span>
																																</xsl:otherwise>
																															</xsl:choose>
																														</td>
																														<td style="text-align:center; ">
																															<xsl:choose>
																																<xsl:when test="count( Temperature )">
																																	<xsl:for-each select="Temperature">
																																		<xsl:apply-templates/>
																																	</xsl:for-each>
																																	<span>
																																		<xsl:text>°C</xsl:text>
																																	</span>
																																</xsl:when>
																																<xsl:otherwise>
																																	<span>
																																		<xsl:text>N/A</xsl:text>
																																	</span>
																																</xsl:otherwise>
																															</xsl:choose>
																														</td>
																													</tr>
																												</xsl:for-each>
																											</tbody>
																										</table>
																									</xsl:when>
																									<xsl:otherwise>
																										<span style="text-align:center; ">
																											<xsl:text>No BBU installed!</xsl:text>
																										</span>
																									</xsl:otherwise>
																								</xsl:choose>
																							</td>
																						</tr>
																					</xsl:for-each>
																				</xsl:for-each>
																			</xsl:for-each>
																		</xsl:for-each>
																	</xsl:for-each>
																</xsl:for-each>
															</xsl:for-each>
														</tbody>
													</table>
												</xsl:when>
												<xsl:otherwise>
													<span>
														<xsl:text>No battery backup unit installed</xsl:text>
													</span>
													<br/>
												</xsl:otherwise>
											</xsl:choose>
											<br/>
											<br/>
											<span style="font-weight:bold; ">
												<xsl:text>RAID - Logical Drives</xsl:text>
											</span>
											<br/>
											<br/>
											<xsl:choose>
												<xsl:when test="Root/Software/ServerView/ServerViewRaid/amEMSV/System/Adapter/LogicalDrive">
													<span>
														<xsl:text>Summary Status: </xsl:text>
													</span>
													<xsl:for-each select="Root">
														<xsl:for-each select="Software">
															<xsl:for-each select="ServerView">
																<xsl:for-each select="ServerViewRaid">
																	<xsl:for-each select="amEMSV">
																		<xsl:for-each select="System">
																			<xsl:for-each select="Multiplexer">
																				<xsl:for-each select="StatusLogicalDrives">
																					<xsl:apply-templates/>
																				</xsl:for-each>
																			</xsl:for-each>
																		</xsl:for-each>
																	</xsl:for-each>
																</xsl:for-each>
															</xsl:for-each>
														</xsl:for-each>
													</xsl:for-each>
													<table border="1" cellpadding="2" cellspacing="0" class="TableWithoutBorder">
														<xsl:variable name="altova:CurrContextGrid_112" select="."/>
														<thead>
															<tr>
																<th>
																	<span>
																		<xsl:text>Name</xsl:text>
																	</span>
																</th>
																<th>
																	<span>
																		<xsl:text>Logical</xsl:text>
																	</span>
																	<br/>
																	<span>
																		<xsl:text>Size</xsl:text>
																	</span>
																</th>
																<th>
																	<span>
																		<xsl:text>Physical</xsl:text>
																	</span>
																	<br/>
																	<span>
																		<xsl:text>Size</xsl:text>
																	</span>
																</th>
																<th style="text-align:center; ">
																	<span>
																		<xsl:text>RAID Level</xsl:text>
																	</span>
																</th>
																<th>
																	<span>
																		<xsl:text>Stripe</xsl:text>
																	</span>
																	<br/>
																	<span>
																		<xsl:text>Size</xsl:text>
																	</span>
																</th>
																<th>
																	<span>
																		<xsl:text>Status</xsl:text>
																	</span>
																</th>
																<th>
																	<span>
																		<xsl:text>Activity</xsl:text>
																	</span>
																</th>
																<th>
																	<span>
																		<xsl:text>Write</xsl:text>
																	</span>
																	<br/>
																	<span>
																		<xsl:text>Mode</xsl:text>
																	</span>
																	<br/>
																</th>
                                <th>
                                  <span>
                                    <xsl:text>Read</xsl:text>
                                  </span>
                                  <br/>
                                  <span>
                                    <xsl:text>Mode</xsl:text>
                                  </span>
                                  <br/>
                                </th>
																<th>
																	<span>
																		<xsl:text>Cache</xsl:text>
																	</span>
																	<br/>
																	<span>
																		<xsl:text>Mode</xsl:text>
																	</span>
																</th>
																<th>
																	<span>
																		<xsl:text>BGI</xsl:text>
																	</span>
																	<br/>
																	<span>
																		<xsl:text>Progress</xsl:text>
																	</span>
																</th>
																<th>
																	<span>
																		<xsl:text>Check</xsl:text>
																	</span>
																	<br/>
																	<span>
																		<xsl:text>Progress</xsl:text>
																	</span>
																</th>
																<th>
																	<span>
																		<xsl:text>Init</xsl:text>
																	</span>
																	<br/>
																	<span>
																		<xsl:text>Progress</xsl:text>
																	</span>
																</th>
																<th>
																	<span>
																		<xsl:text>Locate</xsl:text>
																	</span>
																	<br/>
																	<span>
																		<xsl:text>Active</xsl:text>
																	</span>
																</th>
																<th>
																	<span>
																		<xsl:text>MDC</xsl:text>
																	</span>
																	<br/>
																	<span>
																		<xsl:text>Progress</xsl:text>
																	</span>
																</th>
																<th>
																	<span>
																		<xsl:text>Migration</xsl:text>
																	</span>
																	<br/>
																	<span>
																		<xsl:text>Progress</xsl:text>
																	</span>
																</th>
																<th>
																	<span>
																		<xsl:text>OS Device</xsl:text>
																	</span>
																</th>
																<th>
																	<span>
																		<xsl:text>Rebuild</xsl:text>
																	</span>
																	<br/>
																	<span>
																		<xsl:text>Progress</xsl:text>
																	</span>
																</th>
															</tr>
														</thead>
														<tbody>
															<xsl:for-each select="Root">
																<xsl:for-each select="Software">
																	<xsl:for-each select="ServerView">
																		<xsl:for-each select="ServerViewRaid">
																			<xsl:for-each select="amEMSV">
																				<xsl:for-each select="System">
																					<xsl:for-each select="Adapter">
																						<xsl:for-each select="LogicalDrive">
																							<tr>
																								<td>
																									<xsl:for-each select="@Name">
																										<span>
																											<xsl:value-of select="string(.)"/>
																										</span>
																									</xsl:for-each>
																								</td>
																								<td>
																									<xsl:for-each select="LogicalSize">
																										<xsl:apply-templates/>
																									</xsl:for-each>
																									<span>
																										<xsl:text> MByte</xsl:text>
																									</span>
																								</td>
																								<td>
																									<xsl:for-each select="PhysicalSize">
																										<xsl:apply-templates/>
																									</xsl:for-each>
																									<span>
																										<xsl:text> MByte </xsl:text>
																									</span>
																									<br/>
																								</td>
																								<td style="text-align:center; ">
																									<xsl:for-each select="RAIDLevel">
																										<xsl:apply-templates/>
																									</xsl:for-each>
																								</td>
																								<td align="center">
																									<xsl:for-each select="Stripesize">
																										<xsl:apply-templates/>
																									</xsl:for-each>
																								</td>
																								<td>
																									<xsl:for-each select="Status">
																										<xsl:apply-templates/>
																									</xsl:for-each>
																								</td>
																								<td align="center">
																									<xsl:for-each select="Activity">
																										<xsl:apply-templates/>
																									</xsl:for-each>
																								</td>
																								<td align="center">
																									<xsl:for-each select="WriteMode">
																										<xsl:apply-templates/>
																									</xsl:for-each>
																								</td>
                                                <td align="center">
                                                  <xsl:for-each select="ReadMode">
                                                    <xsl:apply-templates/>
                                                  </xsl:for-each>
                                                </td>
																								<td>
																									<xsl:for-each select="CacheMode">
																										<xsl:apply-templates/>
																									</xsl:for-each>
																								</td>
																								<td align="center">
																									<xsl:for-each select="BGIProgress">
																										<xsl:apply-templates/>
																									</xsl:for-each>
																								</td>
																								<td align="center">
																									<xsl:for-each select="CheckProgress">
																										<xsl:apply-templates/>
																									</xsl:for-each>
																								</td>
																								<td align="center">
																									<xsl:for-each select="InitProgress">
																										<xsl:apply-templates/>
																									</xsl:for-each>
																								</td>
																								<td align="center">
																									<xsl:for-each select="LocateActive">
																										<xsl:apply-templates/>
																									</xsl:for-each>
																								</td>
																								<td align="center">
																									<xsl:for-each select="MDCProgress">
																										<xsl:apply-templates/>
																									</xsl:for-each>
																								</td>
																								<td align="center">
																									<xsl:for-each select="MigrationProgress">
																										<xsl:apply-templates/>
																									</xsl:for-each>
																								</td>
																								<td>
																									<xsl:for-each select="OSDevice">
																										<xsl:apply-templates/>
																									</xsl:for-each>
																								</td>
																								<td align="center">
																									<xsl:for-each select="RebuildProgress">
																										<xsl:apply-templates/>
																									</xsl:for-each>
																								</td>
																							</tr>
																						</xsl:for-each>
																					</xsl:for-each>
																				</xsl:for-each>
																			</xsl:for-each>
																		</xsl:for-each>
																	</xsl:for-each>
																</xsl:for-each>
															</xsl:for-each>
														</tbody>
													</table>
												</xsl:when>
												<xsl:otherwise>
													<span>
														<xsl:text>No logical drives configured!</xsl:text>
													</span>
												</xsl:otherwise>
											</xsl:choose>
										</xsl:when>
										<xsl:otherwise>
											<span>
												<xsl:text>No RAID adapters configured!</xsl:text>
											</span>
										</xsl:otherwise>
									</xsl:choose>
									<br/>
								</xsl:if>
							</xsl:when>
							<xsl:otherwise>
								<span>
									<xsl:text>ServerView RAID not installed!</xsl:text>
								</span>
							</xsl:otherwise>
						</xsl:choose>
						<br/>
						<br/>
					</xsl:if>
					<xsl:if test="count (Root/Software/ServerView/DriverMonitor)">
						<h2>
							<a>
								<xsl:attribute name="name">
									<xsl:value-of select="&apos;ServerView Driver Monitor&apos;"/>
								</xsl:attribute>
								<span>
									<xsl:text>ServerView Driver Monitor</xsl:text>
								</span>
							</a>
						</h2>
						<h4>
							<span>
								<xsl:text>Driver Monitor Adapters</xsl:text>
							</span>
						</h4>
						<xsl:choose>
							<xsl:when test="Root/Software/ServerView/DriverMonitor/Components/Adapters/@Count != 0">
								<table border="1" cellpadding="2" cellspacing="0">
									<xsl:variable name="altova:CurrContextGrid_113" select="."/>
									<thead>
										<tr>
											<th>
												<span>
													<xsl:text>Status</xsl:text>
												</span>
											</th>
											<th>
												<span>
													<xsl:text>Name</xsl:text>
												</span>
											</th>
											<th>
												<span>
													<xsl:text>Class</xsl:text>
												</span>
											</th>
											<th>
												<span>
													<xsl:text>Designation</xsl:text>
												</span>
											</th>
											<th>
												<span>
													<xsl:text>Driver Name</xsl:text>
												</span>
											</th>
											<th>
												<span>
													<xsl:text>Location Key</xsl:text>
												</span>
											</th>
										</tr>
									</thead>
									<tbody>
										<xsl:for-each select="Root">
											<xsl:for-each select="Software">
												<xsl:for-each select="ServerView">
													<xsl:for-each select="DriverMonitor">
														<xsl:for-each select="Components">
															<xsl:for-each select="Adapters">
																<xsl:for-each select="Adapter">
																	<tr>
																		<td>
																			<xsl:for-each select="Status">
																				<xsl:for-each select="@AsString">
																					<span>
																						<xsl:value-of select="string(.)"/>
																					</span>
																				</xsl:for-each>
																				<span>
																					<xsl:text> (</xsl:text>
																				</span>
																			</xsl:for-each>
																			<xsl:for-each select="Status">
																				<xsl:apply-templates/>
																			</xsl:for-each>
																			<span>
																				<xsl:text>)</xsl:text>
																			</span>
																		</td>
																		<td>
																			<xsl:for-each select="Name">
																				<xsl:apply-templates/>
																			</xsl:for-each>
																		</td>
																		<td>
																			<xsl:for-each select="Class">
																				<xsl:for-each select="@AsString">
																					<span>
																						<xsl:value-of select="string(.)"/>
																					</span>
																				</xsl:for-each>
																			</xsl:for-each>
																			<span>
																				<xsl:text> (</xsl:text>
																			</span>
																			<xsl:for-each select="Class">
																				<xsl:apply-templates/>
																			</xsl:for-each>
																			<span>
																				<xsl:text>)</xsl:text>
																			</span>
																		</td>
																		<td>
																			<xsl:for-each select="Designation">
																				<xsl:apply-templates/>
																			</xsl:for-each>
																		</td>
																		<td>
																			<xsl:for-each select="DriverName">
																				<xsl:apply-templates/>
																			</xsl:for-each>
																		</td>
																		<td>
																			<xsl:for-each select="LocationKey">
																				<xsl:apply-templates/>
																			</xsl:for-each>
																		</td>
																	</tr>
																</xsl:for-each>
															</xsl:for-each>
														</xsl:for-each>
													</xsl:for-each>
												</xsl:for-each>
											</xsl:for-each>
										</xsl:for-each>
									</tbody>
								</table>
							</xsl:when>
							<xsl:otherwise>
								<span>
									<xsl:text>No monitored adapters found!</xsl:text>
								</span>
							</xsl:otherwise>
						</xsl:choose>
						<h4>
							<span>
								<xsl:text>Driver Monitor Drives</xsl:text>
							</span>
						</h4>
						<xsl:choose>
							<xsl:when test="Root/Software/ServerView/DriverMonitor/Components/Drives/@Count != 0">
								<table border="1" cellpadding="2" cellspacing="0">
									<xsl:variable name="altova:CurrContextGrid_114" select="."/>
									<thead>
										<tr>
											<th>
												<span>
													<xsl:text>Status</xsl:text>
												</span>
											</th>
											<th>
												<span>
													<xsl:text>Name</xsl:text>
												</span>
											</th>
											<th>
												<span>
													<xsl:text>Vendor</xsl:text>
												</span>
											</th>
											<th>
												<span>
													<xsl:text>Serial Number</xsl:text>
												</span>
											</th>
											<th>
												<span>
													<xsl:text>Designation</xsl:text>
												</span>
											</th>
											<th>
												<span>
													<xsl:text>Logical Name</xsl:text>
												</span>
											</th>
										</tr>
									</thead>
									<tbody>
										<xsl:for-each select="Root">
											<xsl:for-each select="Software">
												<xsl:for-each select="ServerView">
													<xsl:for-each select="DriverMonitor">
														<xsl:for-each select="Components">
															<xsl:for-each select="Drives">
																<xsl:for-each select="Drive">
																	<tr>
																		<td>
																			<xsl:choose>
																				<xsl:when test="count (Status)">
																					<xsl:for-each select="Status">
																						<xsl:for-each select="@AsString">
																							<span>
																								<xsl:value-of select="string(.)"/>
																							</span>
																						</xsl:for-each>
																					</xsl:for-each>
																					<span>
																						<xsl:text> (</xsl:text>
																					</span>
																					<xsl:for-each select="Status">
																						<xsl:apply-templates/>
																					</xsl:for-each>
																					<span>
																						<xsl:text>)</xsl:text>
																					</span>
																				</xsl:when>
																				<xsl:otherwise>
																					<span>
																						<xsl:text>N/A</xsl:text>
																					</span>
																				</xsl:otherwise>
																			</xsl:choose>
																		</td>
																		<td>
																			<xsl:for-each select="Name">
																				<xsl:apply-templates/>
																			</xsl:for-each>
																		</td>
																		<td>
																			<xsl:for-each select="Vendor">
																				<xsl:apply-templates/>
																			</xsl:for-each>
																		</td>
																		<td>
																			<xsl:choose>
																				<xsl:when test="count(SerialNumber)">
																					<xsl:for-each select="SerialNumber">
																						<xsl:apply-templates/>
																					</xsl:for-each>
																				</xsl:when>
																				<xsl:otherwise>
																					<span>
																						<xsl:text>N/A</xsl:text>
																					</span>
																				</xsl:otherwise>
																			</xsl:choose>
																		</td>
																		<td>
																			<xsl:for-each select="Designation">
																				<xsl:apply-templates/>
																			</xsl:for-each>
																		</td>
																		<td>
																			<xsl:for-each select="LogicalName">
																				<xsl:apply-templates/>
																			</xsl:for-each>
																		</td>
																	</tr>
																</xsl:for-each>
															</xsl:for-each>
														</xsl:for-each>
													</xsl:for-each>
												</xsl:for-each>
											</xsl:for-each>
										</xsl:for-each>
									</tbody>
								</table>
							</xsl:when>
							<xsl:otherwise>
								<span>
									<xsl:text>No monitored drives found!</xsl:text>
								</span>
							</xsl:otherwise>
						</xsl:choose>
						<br/>
						<h4>
							<span>
								<xsl:text>Driver Monitor Events</xsl:text>
							</span>
						</h4>
						<xsl:choose>
							<xsl:when test="Root/Software/ServerView/DriverMonitor/Events/@Count != 0">
								<table border="1" cellpadding="2" cellspacing="0" class="TableWithoutBorder">
									<xsl:variable name="altova:CurrContextGrid_115" select="."/>
									<thead>
										<tr style="height:0.16in; ">
											<th rowspan="2">
												<span>
													<xsl:text>Time</xsl:text>
												</span>
											</th>
											<th rowspan="2">
												<span>
													<xsl:text>Event ID</xsl:text>
												</span>
											</th>
											<th rowspan="2">
												<span>
													<xsl:text>Severity</xsl:text>
												</span>
											</th>
											<th rowspan="2">
												<span>
													<xsl:text>Error Code</xsl:text>
												</span>
											</th>
											<th rowspan="2">
												<span>
													<xsl:text>Message</xsl:text>
												</span>
											</th>
											<th colspan="4">
												<span>
													<xsl:text>Originator</xsl:text>
												</span>
												<br/>
											</th>
										</tr>
										<tr style="height:0.16in; ">
											<th>
												<span>
													<xsl:text>Message</xsl:text>
												</span>
											</th>
											<th>
												<span>
													<xsl:text>Source</xsl:text>
												</span>
											</th>
											<th>
												<span>
													<xsl:text>Event ID</xsl:text>
												</span>
											</th>
											<th>
												<span>
													<xsl:text>Severity</xsl:text>
												</span>
											</th>
										</tr>
									</thead>
									<tbody>
										<xsl:for-each select="Root">
											<xsl:for-each select="Software">
												<xsl:for-each select="ServerView">
													<xsl:for-each select="DriverMonitor">
														<xsl:for-each select="Events">
															<xsl:for-each select="Event">
																<tr>
																	<td>
																		<xsl:for-each select="Time">
																			<xsl:for-each select="@AsString">
																				<span>
																					<xsl:value-of select="string(.)"/>
																				</span>
																			</xsl:for-each>
																		</xsl:for-each>
																	</td>
																	<td>
																		<xsl:for-each select="EventId">
																			<xsl:apply-templates/>
																		</xsl:for-each>
																	</td>
																	<td>
																		<xsl:for-each select="Severity">
																			<xsl:apply-templates/>
																		</xsl:for-each>
																	</td>
																	<td>
																		<xsl:for-each select="ErrorCode">
																			<xsl:apply-templates/>
																		</xsl:for-each>
																	</td>
																	<td>
																		<xsl:for-each select="Message">
																			<xsl:apply-templates/>
																		</xsl:for-each>
																	</td>
																	<td>
																		<xsl:for-each select="OrigLogMessage">
																			<xsl:apply-templates/>
																		</xsl:for-each>
																	</td>
																	<td>
																		<xsl:for-each select="OrigLogSource">
																			<xsl:apply-templates/>
																		</xsl:for-each>
																	</td>
																	<td>
																		<xsl:for-each select="OrigLogId">
																			<xsl:apply-templates/>
																		</xsl:for-each>
																	</td>
																	<td>
																		<xsl:for-each select="OrigLogSeverity">
																			<xsl:apply-templates/>
																		</xsl:for-each>
																	</td>
																</tr>
															</xsl:for-each>
														</xsl:for-each>
													</xsl:for-each>
												</xsl:for-each>
											</xsl:for-each>
										</xsl:for-each>
									</tbody>
								</table>
							</xsl:when>
							<xsl:otherwise>
								<span>
									<xsl:text>No events found!</xsl:text>
								</span>
							</xsl:otherwise>
						</xsl:choose>
						<br/>
					</xsl:if>
					<xsl:if test="count (Root/Software/ServerView/RemoteConnector)">
						<br/>
						<h2>
							<a>
								<xsl:attribute name="name">
									<xsl:value-of select="&apos;ServerView Remote Connector&apos;"/>
								</xsl:attribute>
								<span>
									<xsl:text>ServerView Remote Connector</xsl:text>
								</span>
							</a>
						</h2>
						<xsl:choose>
							<xsl:when test="count(  Root/Software/ServerView/RemoteConnector/ProductVersion  )  != 0">
								<table style="background-color:transparent; " border="0" width="100%">
									<xsl:variable name="altova:CurrContextGrid_116" select="."/>
									<tbody>
										<tr>
											<td width="100">
												<span>
													<xsl:text>Product Version:</xsl:text>
												</span>
											</td>
											<td width="400">
												<xsl:for-each select="Root">
													<xsl:for-each select="Software">
														<xsl:for-each select="ServerView">
															<xsl:for-each select="RemoteConnector">
																<xsl:for-each select="ProductVersion">
																	<xsl:apply-templates/>
																</xsl:for-each>
															</xsl:for-each>
														</xsl:for-each>
													</xsl:for-each>
												</xsl:for-each>
											</td>
										</tr>
										<tr>
											<td width="100">
												<span>
													<xsl:text>Port: </xsl:text>
												</span>
											</td>
											<td width="400">
												<xsl:for-each select="Root">
													<xsl:for-each select="Software">
														<xsl:for-each select="ServerView">
															<xsl:for-each select="RemoteConnector">
																<xsl:for-each select="Port">
																	<xsl:apply-templates/>
																</xsl:for-each>
															</xsl:for-each>
														</xsl:for-each>
													</xsl:for-each>
												</xsl:for-each>
											</td>
										</tr>
										<tr>
											<td width="100">
												<span>
													<xsl:text>Service Status:</xsl:text>
												</span>
											</td>
											<td width="400">
												<xsl:for-each select="Root">
													<xsl:for-each select="Software">
														<xsl:for-each select="ServerView">
															<xsl:for-each select="RemoteConnector">
																<xsl:for-each select="Service">
																	<xsl:for-each select="Status">
																		<xsl:apply-templates/>
																	</xsl:for-each>
																</xsl:for-each>
															</xsl:for-each>
														</xsl:for-each>
													</xsl:for-each>
												</xsl:for-each>
											</td>
										</tr>
									</tbody>
								</table>
								<h4>
									<span>
										<xsl:text>Connector Test:</xsl:text>
									</span>
								</h4>
								<table style="background-color:transparent; " border="0" width="100%">
									<xsl:variable name="altova:CurrContextGrid_117" select="."/>
									<tbody>
										<tr>
											<td width="100">
												<span>
													<xsl:text>Request URL:</xsl:text>
												</span>
											</td>
											<td width="400">
												<xsl:for-each select="Root">
													<xsl:for-each select="Software">
														<xsl:for-each select="ServerView">
															<xsl:for-each select="RemoteConnector">
																<xsl:for-each select="Tests">
																	<xsl:for-each select="Url">
																		<xsl:apply-templates/>
																	</xsl:for-each>
																</xsl:for-each>
															</xsl:for-each>
														</xsl:for-each>
													</xsl:for-each>
												</xsl:for-each>
											</td>
										</tr>
									</tbody>
								</table>
								<br/>
								<xsl:for-each select="Root">
									<xsl:for-each select="Software">
										<xsl:for-each select="ServerView">
											<xsl:for-each select="RemoteConnector">
												<xsl:for-each select="Tests">
													<xsl:for-each select="Connector">
														<table border="1" cellpadding="2" cellspacing="0">
															<xsl:variable name="altova:CurrContextGrid_118" select="."/>
															<thead>
																<tr>
																	<th>
																		<span>
																			<xsl:text>Function</xsl:text>
																		</span>
																	</th>
																	<th align="center">
																		<span>
																			<xsl:text>Return Code</xsl:text>
																		</span>
																	</th>
																	<th>
																		<span>
																			<xsl:text>Data</xsl:text>
																		</span>
																	</th>
																</tr>
															</thead>
															<tbody>
																<xsl:for-each select="Method">
																	<tr>
																		<td>
																			<xsl:for-each select="@Name">
																				<span>
																					<xsl:value-of select="string(.)"/>
																				</span>
																			</xsl:for-each>
																		</td>
																		<td align="center">
																			<xsl:for-each select="ReturnCode">
																				<xsl:apply-templates/>
																			</xsl:for-each>
																		</td>
																		<td>
																			<xsl:for-each select="ReturnData">
																				<xsl:apply-templates/>
																			</xsl:for-each>
																		</td>
																	</tr>
																</xsl:for-each>
															</tbody>
														</table>
													</xsl:for-each>
												</xsl:for-each>
											</xsl:for-each>
										</xsl:for-each>
									</xsl:for-each>
								</xsl:for-each>
								<h4>
									<span>
										<xsl:text>Provider Test:</xsl:text>
									</span>
								</h4>
								<table border="0" class="TableWithoutBorder" width="100%">
									<xsl:variable name="altova:CurrContextGrid_119" select="."/>
									<tbody>
										<tr>
											<td width="161">
												<span>
													<xsl:text>SCCI Provider:</xsl:text>
												</span>
											</td>
											<td width="780">
												<table border="1" cellspacing="0">
													<xsl:variable name="altova:CurrContextGrid_120" select="."/>
													<thead style="font-weight:normal; ">
														<tr>
															<th>
																<span>
																	<xsl:text>Function</xsl:text>
																</span>
															</th>
															<th>
																<span>
																	<xsl:text>Return Code</xsl:text>
																</span>
															</th>
															<th width="300">
																<span>
																	<xsl:text>Data</xsl:text>
																</span>
															</th>
														</tr>
													</thead>
													<tbody>
														<xsl:for-each select="Root">
															<xsl:for-each select="Software">
																<xsl:for-each select="ServerView">
																	<xsl:for-each select="RemoteConnector">
																		<xsl:for-each select="Tests">
																			<xsl:for-each select="Provider">
																				<xsl:for-each select="SCCI">
																					<xsl:for-each select="Method">
																						<tr>
																							<td>
																								<xsl:for-each select="@Name">
																									<span>
																										<xsl:value-of select="string(.)"/>
																									</span>
																								</xsl:for-each>
																							</td>
																							<td style="text-align:center; ">
																								<xsl:for-each select="ReturnCode">
																									<xsl:apply-templates/>
																								</xsl:for-each>
																							</td>
																							<td width="300">
																								<xsl:for-each select="ReturnData">
																									<xsl:apply-templates/>
																								</xsl:for-each>
																							</td>
																						</tr>
																					</xsl:for-each>
																				</xsl:for-each>
																			</xsl:for-each>
																		</xsl:for-each>
																	</xsl:for-each>
																</xsl:for-each>
															</xsl:for-each>
														</xsl:for-each>
													</tbody>
												</table>
											</td>
										</tr>
										<tr>
											<td width="161"/>
											<td width="780"/>
										</tr>
										<tr>
											<td width="161">
												<span>
													<xsl:text>XFER Provider:</xsl:text>
												</span>
											</td>
											<td width="780">
												<table border="1" cellspacing="0">
													<xsl:variable name="altova:CurrContextGrid_121" select="."/>
													<thead>
														<tr>
															<th>
																<span>
																	<xsl:text>Function</xsl:text>
																</span>
															</th>
															<th>
																<span>
																	<xsl:text>Return Code</xsl:text>
																</span>
															</th>
															<th width="300">
																<span>
																	<xsl:text>Data</xsl:text>
																</span>
															</th>
														</tr>
													</thead>
													<tbody>
														<xsl:for-each select="Root">
															<xsl:for-each select="Software">
																<xsl:for-each select="ServerView">
																	<xsl:for-each select="RemoteConnector">
																		<xsl:for-each select="Tests">
																			<xsl:for-each select="Provider">
																				<xsl:for-each select="XFER">
																					<xsl:for-each select="Method">
																						<tr>
																							<td>
																								<xsl:for-each select="@Name">
																									<span>
																										<xsl:value-of select="string(.)"/>
																									</span>
																								</xsl:for-each>
																							</td>
																							<td style="text-align:center; ">
																								<xsl:for-each select="ReturnCode">
																									<xsl:apply-templates/>
																								</xsl:for-each>
																							</td>
																							<td width="300">
																								<xsl:for-each select="ReturnData">
																									<xsl:apply-templates/>
																								</xsl:for-each>
																							</td>
																						</tr>
																					</xsl:for-each>
																				</xsl:for-each>
																			</xsl:for-each>
																		</xsl:for-each>
																	</xsl:for-each>
																</xsl:for-each>
															</xsl:for-each>
														</xsl:for-each>
													</tbody>
												</table>
											</td>
										</tr>
										<tr>
											<td width="161"/>
											<td width="780"/>
										</tr>
										<tr>
											<td width="161">
												<span>
													<xsl:text>TDS Provider:</xsl:text>
												</span>
											</td>
											<td width="780">
												<table border="1" cellspacing="0">
													<xsl:variable name="altova:CurrContextGrid_122" select="."/>
													<thead>
														<tr>
															<th>
																<span>
																	<xsl:text>Function</xsl:text>
																</span>
															</th>
															<th>
																<span>
																	<xsl:text>Return Code</xsl:text>
																</span>
															</th>
															<th width="300">
																<span>
																	<xsl:text> Data</xsl:text>
																</span>
															</th>
														</tr>
													</thead>
													<tbody>
														<xsl:for-each select="Root">
															<xsl:for-each select="Software">
																<xsl:for-each select="ServerView">
																	<xsl:for-each select="RemoteConnector">
																		<xsl:for-each select="Tests">
																			<xsl:for-each select="Provider">
																				<xsl:for-each select="TDS">
																					<xsl:for-each select="Method">
																						<tr>
																							<td>
																								<xsl:for-each select="@Name">
																									<span>
																										<xsl:value-of select="string(.)"/>
																									</span>
																								</xsl:for-each>
																							</td>
																							<td style="text-align:center; ">
																								<xsl:for-each select="ReturnCode">
																									<xsl:apply-templates/>
																								</xsl:for-each>
																							</td>
																							<td width="300">
																								<xsl:for-each select="ReturnData">
																									<xsl:apply-templates/>
																								</xsl:for-each>
																							</td>
																						</tr>
																					</xsl:for-each>
																				</xsl:for-each>
																			</xsl:for-each>
																		</xsl:for-each>
																	</xsl:for-each>
																</xsl:for-each>
															</xsl:for-each>
														</xsl:for-each>
													</tbody>
												</table>
											</td>
										</tr>
										<tr>
											<td width="161"/>
											<td width="780"/>
										</tr>
										<tr>
											<td width="161">
												<span>
													<xsl:text>PrimeCollect Provider:</xsl:text>
												</span>
											</td>
											<td width="780">
												<table border="1" cellspacing="0">
													<xsl:variable name="altova:CurrContextGrid_123" select="."/>
													<thead>
														<tr>
															<th>
																<span>
																	<xsl:text>Function</xsl:text>
																</span>
															</th>
															<th>
																<span>
																	<xsl:text>Return Code</xsl:text>
																</span>
															</th>
															<th width="300">
																<span>
																	<xsl:text> Data</xsl:text>
																</span>
															</th>
														</tr>
													</thead>
													<tbody>
														<xsl:for-each select="Root">
															<xsl:for-each select="Software">
																<xsl:for-each select="ServerView">
																	<xsl:for-each select="RemoteConnector">
																		<xsl:for-each select="Tests">
																			<xsl:for-each select="Provider">
																				<xsl:for-each select="PrimeCollect">
																					<xsl:for-each select="Method">
																						<tr>
																							<td>
																								<xsl:for-each select="@Name">
																									<span>
																										<xsl:value-of select="string(.)"/>
																									</span>
																								</xsl:for-each>
																							</td>
																							<td style="text-align:center; ">
																								<xsl:for-each select="ReturnCode">
																									<xsl:apply-templates/>
																								</xsl:for-each>
																							</td>
																							<td width="300">
																								<xsl:for-each select="ReturnData">
																									<xsl:apply-templates/>
																								</xsl:for-each>
																							</td>
																						</tr>
																					</xsl:for-each>
																				</xsl:for-each>
																			</xsl:for-each>
																		</xsl:for-each>
																	</xsl:for-each>
																</xsl:for-each>
															</xsl:for-each>
														</xsl:for-each>
													</tbody>
												</table>
											</td>
										</tr>
										<tr>
											<td width="161"/>
											<td width="780"/>
										</tr>
										<tr>
											<td width="161">
												<span>
													<xsl:text>VME Provider:</xsl:text>
												</span>
											</td>
											<td width="780">
												<table border="1" cellspacing="0">
													<xsl:variable name="altova:CurrContextGrid_124" select="."/>
													<thead>
														<tr>
															<th>
																<span>
																	<xsl:text>Function</xsl:text>
																</span>
															</th>
															<th>
																<span>
																	<xsl:text>Return Code</xsl:text>
																</span>
															</th>
															<th>
																<span>
																	<xsl:text>Data</xsl:text>
																</span>
															</th>
														</tr>
													</thead>
													<tbody>
														<xsl:for-each select="Root">
															<xsl:for-each select="Software">
																<xsl:for-each select="ServerView">
																	<xsl:for-each select="RemoteConnector">
																		<xsl:for-each select="Tests">
																			<xsl:for-each select="Provider">
																				<xsl:for-each select="VME">
																					<xsl:for-each select="Method">
																						<tr>
																							<td>
																								<xsl:for-each select="@Name">
																									<span>
																										<xsl:value-of select="string(.)"/>
																									</span>
																								</xsl:for-each>
																							</td>
																							<td style="text-align:center; ">
																								<xsl:for-each select="ReturnCode">
																									<xsl:apply-templates/>
																								</xsl:for-each>
																							</td>
																							<td>
																								<xsl:for-each select="ReturnData">
																									<xsl:apply-templates/>
																								</xsl:for-each>
																							</td>
																						</tr>
																					</xsl:for-each>
																				</xsl:for-each>
																			</xsl:for-each>
																		</xsl:for-each>
																	</xsl:for-each>
																</xsl:for-each>
															</xsl:for-each>
														</xsl:for-each>
													</tbody>
												</table>
											</td>
										</tr>
									</tbody>
								</table>
							</xsl:when>
							<xsl:otherwise>
								<span>
									<xsl:text>ServerView Remote Connector not installed!</xsl:text>
								</span>
							</xsl:otherwise>
						</xsl:choose>
						<br/>
						<br/>
					</xsl:if>
					<br/>
					<br/>
					<br/>
				</xsl:for-each>
			</body>
		</html>
	</xsl:template>
	<xsl:template name="legacy_headerall">
		<table width="100%">
			<xsl:variable name="altova:CurrContextGrid_125" select="."/>
			<tbody>
				<tr style="height:30px; ">
					<td colspan="2" style="padding:0; "/>
				</tr>
				<tr>
					<td style="font-size:smaller; padding:0; " align="left">
						<span style="font-weight:bold; ">
							<xsl:text>Title: </xsl:text>
						</span>
					</td>
					<td style="font-size:smaller; padding:0; " align="right" width="150">
						<span style="font-weight:bold; ">
							<xsl:text>Page: </xsl:text>
						</span>
					</td>
				</tr>
				<tr>
					<td colspan="2" style="padding:0; ">
						<hr style="color:black; " size="1"/>
					</td>
				</tr>
			</tbody>
		</table>
	</xsl:template>
</xsl:stylesheet>

