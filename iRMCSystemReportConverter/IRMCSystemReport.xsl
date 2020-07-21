<?xml version="1.0" encoding="UTF-8"?>

<!--
    Document   : IRMCSystemReport.xsl
    Created on : October 27, 2014, 8:58 PM
    Updated on : June 6, 2018, 3:27 PM
    Author     : Masa Murayama <mmurayama@outlook.com>
    Description: iRMC S4/S5 System Report stylesheet
-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:output method="html" encoding="UTF-8" />

  <xsl:template match="/">
    <html>
      <head>
        <title>
          <xsl:for-each select="Root">
            <xsl:for-each select="@OS">
                <xsl:value-of select="string(.)"/>
            </xsl:for-each>
          </xsl:for-each>
          System Report
        </title>
      </head>
      <style type="text/css">
        <xsl:comment>
          body {
            padding: 5px 10px;
            background-color:white;
            font-family:Verdana, Arial, Helvetica, sans-serif;
            font-size:small;
          }
          h2 { 
            font-size:medium;
          }
          h1 { 
            color:#d70000;
            font-size:large;
            font-weight:bold;
          }
          h3 { 
            font-size:small;
          }
          h4 { 
            font-size:small;
          }
          table {
            border-spacing:0;
            border-collapse: collapse;
            background-color:white;
            empty-cells:show;
          }
          thead {
            background-color:#cfcfcf;
            color:#333;
            font-weight:bold;
            text-align:center;
          }
          .TableWithoutBorder {
            background-color:transparent;
            border: 0;
            padding:2;
          }
          pre { 
            font-size:small;
          }
        </xsl:comment>
      </style>
      <body>
        <h1 align="left">
          <span>
            <xsl:text>PRIMERGY iRMC Diagnostics Report V</xsl:text>
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

        <!-- error messages -->
        <table border="0" class="TableWithoutBorder" width="100%">
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
              </td>
            </tr>
          </tbody>
        </table>

        <!-- warning messages -->
        <table border="0" class="TableWithoutBorder" width="100%">
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
              </td>
            </tr>
          </tbody>
        </table>

        <!-- Report Contents -->
        <h2>
          <span style="font-weight:bold; ">
            <xsl:text>Report Contents</xsl:text>
          </span>
        </h2>
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
                <xsl:text>System BIOS</xsl:text>
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
                <xsl:text>System Event Log</xsl:text>
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
                <xsl:text>Internal Event Log</xsl:text>
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
          
          <!-- Network Information -->
          <xsl:choose>
            <xsl:when test="count(  /Root/Network  ) != 0">
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
                    <xsl:text>System Network</xsl:text>
                  </span>
                </a>
              </li>
            </xsl:when>
          </xsl:choose>
          
          <!-- OS Information -->
          <xsl:choose>
            <xsl:when test="count(  /Root/Software/ServerView/ServerViewRaid/amEMSV/System/OSProduct  ) != 0">
              <li>
                <a>
                  <xsl:choose>
                    <xsl:when test="not(string(&apos;#Operating System&apos;))">
                      <xsl:attribute name="href">
                        <xsl:text>#</xsl:text>
                      </xsl:attribute>
                    </xsl:when>
                    <xsl:when test="substring(string(&apos;#Operating System&apos;), 1, 1) = '#'">
                      <xsl:attribute name="href">
                        <xsl:value-of select="&apos;#Operating System&apos;"/>
                      </xsl:attribute>
                    </xsl:when>
                    <xsl:otherwise>
                      <xsl:attribute name="href">
                        <xsl:if test="substring(string(&apos;#Operating System&apos;), 2, 1) = ':'">
                          <xsl:text>file:///</xsl:text>
                        </xsl:if>
                        <xsl:value-of select="translate(string(&apos;#Operating System&apos;), '&#x5c;', '/')"/>
                      </xsl:attribute>
                    </xsl:otherwise>
                  </xsl:choose>
                  <span>
                    <xsl:text>Operating System</xsl:text>
                  </span>
                </a>
              </li>
            </xsl:when>
          </xsl:choose>
          
          <!-- ServerView Agents & RAID Information -->
          <xsl:choose>
            <xsl:when test="count (Root/Software/ServerView/SNMPAgents)">
              <li>
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
                    <xsl:text>ServerView Agents</xsl:text>
                  </span>
                </a>
              </li>
            </xsl:when>
          </xsl:choose>
          <xsl:choose>
            <xsl:when test="count (Root/Software/ServerView/ServerViewRaid)">
              <li>
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
                    <xsl:text>RAID Information</xsl:text>
                  </span>
                </a>
              </li>
            </xsl:when>
          </xsl:choose>
        </ul>

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
        <!--
        <table border="0" class="TableWithoutBorder" width="100%">
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
                    <xsl:for-each select="Bios|BIOS">
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
        <br/>
-->
        <!-- SMBIOS Type 0 (BIOS Information) -->
        <xsl:for-each select="Root">
          <xsl:for-each select="System">
            <xsl:for-each select="Bios|BIOS">
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
        <table border="0" class="TableWithoutBorder" width="100%">
          <tbody>
            <tr>
              <td width="150">
                <span>
                  <xsl:text>BIOS Version:</xsl:text>
                </span>
              </td>
              <td>
                <xsl:for-each select="Root">
                  <xsl:for-each select="System">
                    <xsl:for-each select="Bios|BIOS">
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
          </tbody>
        </table>
        <br/>

        <!-- SMBIOS Type 1 (System Information) -->
        <span style="font-weight:bold; ">
          <xsl:text>System Information:</xsl:text>
        </span>
        <br/>
        <br/>
        <xsl:for-each select="Root">
          <xsl:for-each select="System">
            <xsl:for-each select="IDPROMS">
              <xsl:for-each select="Class">
                  <xsl:choose>
                    <!-- non-BX -->
                    <xsl:when test="(@Name=&quot;Chassis&quot;) and (Instance/@ClassName=&quot;Chassis&quot;)">
                      <xsl:choose>
                        <xsl:when test="(Instance/Data/Decoded/String = 'CX400M1R1')">
                          <xsl:call-template name="serial">
                            <xsl:with-param name="isblade" select="2"></xsl:with-param>
                          </xsl:call-template>
                        </xsl:when>
                        <xsl:otherwise>
                          <xsl:call-template name="serial">
                            <xsl:with-param name="isblade" select="0"></xsl:with-param>
                          </xsl:call-template>
                        </xsl:otherwise>
                      </xsl:choose>
                      <!--
                      <xsl:call-template name="serial">
                        <xsl:with-param name="isblade" select="0"></xsl:with-param>
                      </xsl:call-template>
                      -->
                    </xsl:when>
                    <!-- BX -->
                    <xsl:when test="(@Name=&quot;Chassis&quot;) and (Instance/@ClassName=&quot;Chassis&quot; = '')">
                      <xsl:call-template name="serial">
                        <xsl:with-param name="isblade" select="1"></xsl:with-param>
                      </xsl:call-template>
                    </xsl:when>
                  </xsl:choose>
              </xsl:for-each>
            </xsl:for-each>
          </xsl:for-each>
        </xsl:for-each>
        <br/>
      
        <!-- PCI Configuration -->
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
                <thead>
                  <tr>
                    <th align="center">
                      <span>
                        <xsl:text>Slot</xsl:text>
                      </span>
                    </th>
                    <th>
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
                        <xsl:text>Vendor ID</xsl:text>
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
                        <xsl:text>Class</xsl:text>
                      </span>
                    </th>
                    <th>
                      <span>
                        <xsl:text>Sub Class</xsl:text>
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
                      <td align="center">
                        <xsl:for-each select="Slot">
                          <xsl:apply-templates/>
                        </xsl:for-each>
                      </td>
                      <td align="center">
                        <xsl:for-each select="ConfigSpace">
                          <xsl:for-each select="VendorId">
                            <xsl:apply-templates/>
                          </xsl:for-each>
                        </xsl:for-each>
                      </td>
                      <td align="center">
                        <xsl:for-each select="ConfigSpace">
                          <xsl:for-each select="DeviceId">
                            <xsl:apply-templates/>
                          </xsl:for-each>
                        </xsl:for-each>
                      </td>
                      <td align="center">
                        <xsl:for-each select="ConfigSpace">
                          <xsl:for-each select="SubVendorId">
                            <xsl:apply-templates/>
                          </xsl:for-each>
                        </xsl:for-each>
                      </td>
                      <td align="center">
                        <xsl:for-each select="ConfigSpace">
                          <xsl:for-each select="SubDeviceId">
                            <xsl:apply-templates/>
                          </xsl:for-each>
                        </xsl:for-each>
                      </td>
                      <td>
                        <xsl:for-each select="ConfigSpace">
                          <xsl:for-each select="BaseClass">
                            <xsl:apply-templates/>
                          </xsl:for-each>
                        </xsl:for-each>
                      </td>
                      <td>
                        <xsl:for-each select="ConfigSpace">
                          <xsl:for-each select="SubClass">
                            <xsl:apply-templates/>
                          </xsl:for-each>
                        </xsl:for-each>
                      </td>
                      <td>
                        <xsl:for-each select="ConfigSpace">
                          <xsl:choose>
                            <xsl:when test="SubVendorId='1734'">
                              <span>Fujitsu </span>
                              <xsl:choose>
                                <!-- SAS RAID/HBA -->
                                <xsl:when test="SubDeviceId='1176'">
                                  <span>RAID Ctrl SAS 6G 5/6 512MB (D2616)</span>
                                </xsl:when>
                                <xsl:when test="SubDeviceId='1177'">
                                  <span>RAID Ctrl SAS 6G 0/1 (D2607)</span>
                                </xsl:when>
                                <xsl:when test="SubDeviceId='11B3'">
                                  <span>PY SAS RAID Mezz Card 6Gb (D3016)</span>
                                </xsl:when>
                                <xsl:when test="SubDeviceId='11E4'">
                                  <span>RAID Ctrl SAS 6G 1GB (D3116C)</span>
                                </xsl:when>
                                <xsl:when test="SubDeviceId='120B'">
                                  <span>PRAID CM400i</span>
                                </xsl:when>
                                <xsl:when test="SubDeviceId='1209'">
                                  <span>PRAID EM400i</span>
                                </xsl:when>
                                <xsl:when test="SubDeviceId='11F6'">
                                  <span>PRAID EP400i (D3216)</span>
                                </xsl:when>
                                <xsl:when test="SubDeviceId='1212'">
                                  <span>PRAID EP420i (D3216)</span>
                                </xsl:when>
                                <xsl:when test="SubDeviceId='1211'">
                                  <span>PRAID CP400i</span>
                                </xsl:when>
                                <xsl:when test="SubDeviceId='121A'">
                                  <span>PRAID EP420e</span>
                                </xsl:when>
                                <xsl:when test="SubDeviceId='1237'">
                                  <span>PRAID EP440i</span>
                                </xsl:when>
                                <xsl:when test="(DeviceId='0016') and (SubDeviceId='123E')">
                                  <span>PRAID EP520i</span>
                                </xsl:when>
                                <xsl:when test="(DeviceId='0014') and (SubDeviceId='1236')">
                                  <span>PRAID EP540i</span>
                                </xsl:when>
                                <xsl:when test="(DeviceId='0014') and (SubDeviceId='1238')">
                                  <span>PRAID EP580i</span>
                                </xsl:when>
                                <xsl:when test="(DeviceId='0014') and (SubDeviceId='124F')">
                                  <span>PRAID EP540e</span>
                                </xsl:when>
                                <xsl:when test="SubDeviceId='11F0'">
                                  <span>PSAS CP200i</span>
                                </xsl:when>
                                <xsl:when test="SubDeviceId='1214'">
                                  <span>PSAS CP400i</span>
                                </xsl:when>
                                <xsl:when test="SubDeviceId='1217'">
                                  <span>PSAS CP400e</span>
                                </xsl:when>
                                <xsl:when test="SubDeviceId='120B'">
                                  <span>PRAID CM400i</span>
                                </xsl:when>
                                <xsl:when test="SubDeviceId='1209'">
                                  <span>PRAID EM400i</span>
                                </xsl:when>
                                <xsl:when test="SubDeviceId='11B4'">
                                  <span>PY SAS HBA Mezz Card 6Gb (D3007)</span>
                                </xsl:when>
                                <xsl:when test="SubDeviceId='122B'">
                                  <span>PSAS CP402i</span>
                                </xsl:when>
                                <xsl:when test="SubDeviceId='124B'">
                                  <span>PSAS CP403i</span>
                                </xsl:when>
                                <!-- FC -->
                                <xsl:when test="SubDeviceId='113C'">
                                  <span>PY FC Mezz Card 8Gb 2 Port (MC-FC82E)</span>
                                </xsl:when>
                                <xsl:when test="SubDeviceId='1208'">
                                  <span>PFC EM MC-FC162E 2x16Gb</span>
                                </xsl:when>
                                <!-- LAN -->
                                <xsl:when test="SubDeviceId='11A7'">
                                  <span>Eth Ctrl 2x1Gbit PCIe x4 (D2735)</span>
                                </xsl:when>
                                <xsl:when test="SubDeviceId='11A8'">
                                  <span>Eth Ctrl 4x1Gbit PCIe x4 (D2745)</span>
                                </xsl:when>
                                <xsl:when test="SubDeviceId='11CF'">
                                  <span>Eth Ctrl 2x1Gb Cu PCIe x4 (D3035)</span>
                                </xsl:when>
                                <xsl:when test="SubDeviceId='11D1'">
                                  <span>Eth Ctrl 4x1Gb Cu PCIe x4 (D3045)</span>
                                </xsl:when>
                                <xsl:when test="SubDeviceId='11A9'">
                                  <span>Eth Ctrl 2x10Gbit PCIe x8 (D2755)</span>
                                </xsl:when>
                                <xsl:when test="SubDeviceId='114A'">
                                  <span>PY Eth Mezz Card 1Gb 4 Port</span>
                                </xsl:when>
                                <xsl:when test="SubDeviceId='1193'">
                                  <span>PY Eth Mezz Card 10Gb 2 Port</span>
                                </xsl:when>
                                <!-- CNA -->
                                <xsl:when test="SubDeviceId='119F'">
                                  <span>PY CNA Mezz Card 10Gb 2 Port (MC-CNA112E)</span>
                                </xsl:when>
                                <!-- PCI-SW -->
                                <xsl:when test="SubDeviceId='11F7'">
                                  <span>PPCI EP x16 Switch</span>
                                </xsl:when>
                                <!-- USB 3.0 -->
                                <xsl:when test="SubDeviceId='11F5'">
                                  <span>USB3.0 PCIe x1</span>
                                </xsl:when>
                                <xsl:otherwise>
                                  <span>Unknown</span>
                                </xsl:otherwise>
                              </xsl:choose>
                            </xsl:when>
                            <xsl:when test="SubVendorId='8086'">
                              <span>Intel </span>
                              <xsl:choose>
                                <xsl:when test="(DeviceId='1521') and (SubDeviceId='00A1')">
                                  <span>PLAN CP 4x1Gbit Cu Intel I350-T4</span>
                                </xsl:when>
                                <xsl:when test="(DeviceId='1521') and (SubDeviceId='00A2')">
                                  <span>PLAN CP 2x1Gbit Cu Intel I350-T2</span>
                                </xsl:when>
                                <xsl:when test="(DeviceId='1533') and (SubDeviceId='0001')">
                                  <span>PLAN AP 1x1Gbit Cu Intel I210-T1</span>
                                </xsl:when>
                                <xsl:when test="(DeviceId='1528') and (SubDeviceId='001A')">
                                  <span>Eth Ctrl 2x10GBase-T PCIe x8 X540-T2</span>
                                </xsl:when>
                                <xsl:when test="(DeviceId='1563') and (SubDeviceId='001A')">
                                  <span>PLAN EP X550-T2 2x10GBASE-T</span>
                                </xsl:when>
                                <xsl:when test="(DeviceId='1572') and (SubDeviceId='0008')">
                                  <span>PLAN EP X710-DA2 2x10Gb SFP+</span>
                                </xsl:when>
                                <xsl:when test="(DeviceId='1572') and (SubDeviceId='0004')">
                                  <span>PLAN EP X710-DA4 4x10Gb SFP+</span>
                                </xsl:when>
                                <xsl:when test="(DeviceId='1572') and (SubDeviceId='0000')">
                                  <span>PLAN EP X710-DAx</span>
                                </xsl:when>
                                <xsl:when test="(DeviceId='1583') and (SubDeviceId='0001')">
                                  <span>XL710-QDA2</span>
                                </xsl:when>
                                <xsl:when test="(DeviceId='1583') and (SubDeviceId='0000')">
                                  <span>XL710-QDAx</span>
                                </xsl:when>
                                <xsl:when test="(DeviceId='10FB') and (SubDeviceId='0003')">
                                  <span>X520-DA2</span>
                                </xsl:when>
                                <xsl:when test="(DeviceId='158B') and (SubDeviceId='0002')">
                                  <span>PLAN EP XXV710-DA2 2x 25Gb SFP28</span>
                                </xsl:when>
                                <xsl:when test="(DeviceId='158B') and (SubDeviceId='0000')">
                                  <span>PLAN EP XXV710-DAx</span>
                                </xsl:when>
                                <xsl:when test="(DeviceId='1589') and (SubDeviceId='0002')">
                                  <span>PLAN EP X710-T4 4x10GBASE-T</span>
                                </xsl:when>
                                <xsl:when test="(DeviceId='24F0') and (SubDeviceId='2628')">
                                  <span>POP EP 100Gb 1-port Omni Path</span>
                                </xsl:when>
                                <xsl:when test="(DeviceId='24F1') and (SubDeviceId='24F1')">
                                  <span>POP EP 100Gb PHY 2-port Omni Path</span>
                                </xsl:when>
                                <xsl:when test="SubDeviceId='3703'">
                                  <span>PCIe SSD DC P3700 (2.5-inch)</span>
                                </xsl:when>
                                <xsl:when test="(DeviceId='0A54') and (SubDeviceId='4714')">
                                  <span>PACC EP P4600 AIC Mixed-Use</span>
                                </xsl:when>
                                <xsl:when test="(DeviceId='0A54') and (SubDeviceId='4712')">
                                  <span>SSD PCIe3 Mixed-Use 2.5" H-P EP</span>
                                </xsl:when>
                                <xsl:when test="(DeviceId='0A54') and (SubDeviceId='4812')">
                                  <span>SSD PCIe3 Mixed-Use 2.5" H-P EP P4610</span>
                                </xsl:when>
                                <xsl:when test="(DeviceId='0A54') and (SubDeviceId='4703')">
                                  <span>SSD PCIe3 Read-Int. 2.5" H-P LP</span>
                                </xsl:when>
                                <xsl:when test="(DeviceId='0A54') and (SubDeviceId='4802')">
                                  <span>SSD PCIe3 Read-Int. 2.5" H-P EP P4510</span>
                                </xsl:when>
                                <xsl:when test="(DeviceId='2701') and (SubDeviceId='3904')">
                                  <span>PACC EP P4800X AIC</span>
                                </xsl:when>
                                <xsl:when test="(DeviceId='2701') and (SubDeviceId='3905')">
                                  <span>SSD PCIe3 2.5" P4800X</span>
                                </xsl:when>
                                <xsl:otherwise>
                                  <span>Unknown</span>
                                </xsl:otherwise>
                              </xsl:choose>
                            </xsl:when>
                            <xsl:when test="SubVendorId='10DF'">
                              <span>Emulex </span>
                              <xsl:choose>
                                <!-- Fibre Channel -->
                                <xsl:when test="SubDeviceId='F015'">
                                  <span>FC LPe1250 1x 8Gb</span>
                                </xsl:when>
                                <xsl:when test="SubDeviceId='F100'">
                                  <span>FC LPe12002 2x 8Gb</span>
                                </xsl:when>
                                <xsl:when test="SubDeviceId='E207'">
                                  <span>PFC EP LPe16000 1x 16Gb</span>
                                </xsl:when>
                                <xsl:when test="SubDeviceId='E208'">
                                  <span>PFC EP LPe16002 2x 16Gb</span>
                                </xsl:when>
                                <xsl:when test="SubDeviceId='E311'">
                                  <span>PFC EP LPe31000 1x 16Gb</span>
                                </xsl:when>
                                <xsl:when test="SubDeviceId='E310'">
                                  <span>PFC EP LPe31002 2x 16Gb</span>
                                </xsl:when>
                                <xsl:when test="SubDeviceId='E301'">
                                  <span>PFC EP LPe32000 1x 32Gb</span>
                                </xsl:when>
                                <xsl:when test="SubDeviceId='E300'">
                                  <span>PFC EP LPe32002 2x 32Gb</span>
                                </xsl:when>
                                <!-- CNA -->
                                <xsl:when test="SubDeviceId='11FB'">
                                  <span>PCNA EP OCe14102 2x 10Gb</span>
                                </xsl:when>
                                <xsl:when test="SubDeviceId='E807'">
                                  <span>PCNA EP OCec14102 2x 10Gb</span>
                                </xsl:when>
                                  <xsl:when test="SubDeviceId='E868'">
                                  <span>PCNA EP OCe14401 1x 40Gb</span>
                                </xsl:when>
                                <!-- LAN -->
                                <xsl:when test="SubDeviceId='E802'">
                                  <span>PLAN EP OCe14102 2x 10Gb</span>
                                </xsl:when>
                                <xsl:when test="SubDeviceId='E863'">
                                  <span>PLAN EP OCe14102 2x 10Gb BASE-T</span>
                                </xsl:when>
                                <xsl:otherwise>
                                  <span>Unknown</span>
                                </xsl:otherwise>
                              </xsl:choose>
                            </xsl:when>
                            <xsl:when test="SubVendorId='1077'">
                              <span>Qlogic </span>
                              <xsl:choose>
                                <xsl:when test="SubDeviceId='0137'">
                                  <span>FC QLE2460 1x 4Gb</span>
                                </xsl:when>
                                <xsl:when test="SubDeviceId='0138'">
                                  <span>FC QLE2462 2x 4Gb</span>
                                </xsl:when>
                                <xsl:when test="SubDeviceId='015C'">
                                  <span>FC QLE2560 1x 8Gb</span>
                                </xsl:when>
                                <xsl:when test="SubDeviceId='015D'">
                                  <span>FC QLE2562 2x 8Gb</span>
                                </xsl:when>
                                <xsl:when test="SubDeviceId='0241'">
                                  <span>PFC EP QLE2670 1x 16Gb</span>
                                </xsl:when>
                                <xsl:when test="SubDeviceId='0249'">
                                  <span>PFC EP QLE2672 2x 16Gb</span>
                                </xsl:when>
                                <xsl:when test="SubDeviceId='029B'">
                                  <span>PFC EP QLE2690 1x 16Gb</span>
                                </xsl:when>
                                <xsl:when test="SubDeviceId='029C'">
                                  <span>PFC EP QLE2692 2x 16Gb</span>
                                </xsl:when>
                                <xsl:when test="SubDeviceId='0299'">
                                  <span>PFC EP QLE2740 1x 32Gb</span>
                                </xsl:when>
                                <xsl:when test="SubDeviceId='029A'">
                                  <span>PFC EP QLE2742 2x 32Gb</span>
                                </xsl:when>
                                <xsl:when test="(DeviceId='8070') and (SubDeviceId='0011')">
                                  <span>PLAN EP QL41212 25Gb 2p SFP28</span>
                                </xsl:when>
                                <xsl:when test="(DeviceId='1644') and (SubDeviceId='E4F8')">
                                  <span>PLAN EP QL45611 100Gb 1p QSFP28</span>
                                </xsl:when>
                                <xsl:when test="(DeviceId='1656') and (SubDeviceId='E4F7')">
                                  <span>PLAN EP QL45212 2x25Gb SFP28</span>
                                </xsl:when>
                                <xsl:when test="(DeviceId='8070') and (SubDeviceId='0052')">
                                  <span>PLAN EP QL41112 2x10GBASE-T</span>
                                </xsl:when>
                                <xsl:when test="(DeviceId='8070') and (SubDeviceId='0051')">
                                  <span>PLAN EP QL41132 2x10G SFP+</span>
                                </xsl:when>
                                <xsl:when test="(DeviceId='8070') and (SubDeviceId='0061')">
                                  <span>PLAN EP QL41134 4x10GBASE-T</span>
                                </xsl:when>
                                <xsl:when test="(DeviceId='8070') and (SubDeviceId='0064')">
                                  <span>PLAN EP QL41134 4x10G SFP+</span>
                                </xsl:when>
                                <xsl:when test="(DeviceId='8070') and (SubDeviceId='0050')">
                                  <span>PLAN EP QL41262 2x25G SFP28</span>
                                </xsl:when>
                                <xsl:otherwise>
                                  <span>Unknown</span>
                                </xsl:otherwise>
                              </xsl:choose>
                            </xsl:when>
                            <xsl:when test="SubVendorId='1000'">
                              <span>LSI </span>
                              <xsl:choose>
                                <xsl:when test="SubDeviceId='3080'">
                                  <span>SAS 9200-8e (3080)</span>
                                </xsl:when>
                                <xsl:when test="SubDeviceId='9291'">
                                  <span>RAID Ctrl SAS 6G 8Port ex 1GB LSI V3</span>
                                </xsl:when>
                                <xsl:when test="(DeviceId='0097') and (SubDeviceId='30A0')">
                                  <span>SAS 9300-8e</span>
                                </xsl:when>
                                <xsl:when test="(DeviceId='00AF') and (SubDeviceId='3030')">
                                  <span>SAS 9400-8e</span>
                                </xsl:when>
                                <xsl:otherwise>
                                  <span>Unknown</span>
                                </xsl:otherwise>
                              </xsl:choose>
                            </xsl:when>
                            <xsl:when test="SubVendorId='10DE'">
                              <span>NVIDIA </span>
                              <xsl:choose>
                                <xsl:when test="SubDeviceId='1012'">
                                  <span>PGRA CP NVIDIA Grid K1</span>
                                </xsl:when>
                                <xsl:when test="SubDeviceId='100D'">
                                  <span>PGRA CP NVIDIA Grid K2</span>
                                </xsl:when>
                                <xsl:when test="SubDeviceId='1015'">
                                  <span>Tesla K20m</span>
                                </xsl:when>
                                <xsl:when test="SubDeviceId='106C'">
                                  <span>Tesla K80</span>
                                </xsl:when>
                                <xsl:when test="SubDeviceId='100D'">
                                  <span>Tesla M60</span>
                                </xsl:when>
                                <xsl:when test="SubDeviceId='1160'">
                                  <span>Tesla M10</span>
                                </xsl:when>
                                <xsl:when test="SubDeviceId='10DE'">
                                  <span>Tesla P40</span>
                                </xsl:when>
                                <xsl:when test="SubDeviceId='11DA'">
                                  <span>Tesla P100 12GB</span>
                                </xsl:when>
                                <xsl:when test="SubDeviceId='118F'">
                                  <span>Tesla P100 16GB</span>
                                </xsl:when>
                                <xsl:when test="SubDeviceId='1214'">
                                  <span>Tesla V100 16GB</span>
                                </xsl:when>
                                <xsl:when test="SubDeviceId='116B'">
                                  <span>Tesla P100 for SXM2 (NVLink) 16GB</span>
                                </xsl:when>
                                <xsl:when test="SubDeviceId='1212'">
                                  <span>Tesla V100 for SXM2 (NVLink)</span>
                                </xsl:when>
                                <xsl:when test="DeviceId='1EB8'">
                                  <span>Tesla T4</span>
                                </xsl:when>
                                <xsl:when test="SubDeviceId='1153'">
                                  <span>PGRA CP Quadro M4000</span>
                                </xsl:when>
                                <xsl:when test="SubDeviceId='11A3'">
                                  <span>Quadro P4000</span>
                                </xsl:when>
                                <xsl:when test="SubDeviceId='11B2'">
                                  <span>Quadro P5000</span>
                                </xsl:when>
                                <xsl:when test="SubDeviceId='0863'">
                                  <span>PY VGA Card 512MB PCIe x1 (NVS300)</span>
                                </xsl:when>
                                <xsl:when test="SubDeviceId='102F'">
                                  <span>PGRA CP NVS 1GB VGA PCIe x16 (NVS315)</span>
                                </xsl:when>
                                <xsl:when test="SubDeviceId='11BE'">
                                  <span>Quadro P400</span>
                                </xsl:when>
                                <xsl:otherwise>
                                  <span>Unknown</span>
                                </xsl:otherwise>
                              </xsl:choose>
                            </xsl:when>
                            <xsl:when test="SubVendorId='15B3'">
                              <span>Mellanox </span>
                              <xsl:choose>
                                <xsl:when test="SubDeviceId='0020'">
                                  <span>IB HCA 56Gb 2 port FDR</span>
                                </xsl:when>
                                <xsl:when test="SubDeviceId='0022'">
                                  <span>IB HCA 56Gb 1 port FDR</span>
                                </xsl:when>
                                <xsl:when test="SubDeviceId='0030'">
                                  <span>PIB EP 100Gb 1 port EDR</span>
                                </xsl:when>
                                <xsl:when test="SubDeviceId='0032'">
                                  <span>PIB EP 100Gb 2 port EDR</span>
                                </xsl:when>
                                <xsl:when test="SubDeviceId='0065'">
                                  <span>PIB EP 100Gb 1 port EDR ConnectX-5</span>
                                </xsl:when>
                                <xsl:when test="SubDeviceId='0064'">
                                  <span>PIB EP 100Gb 2 port EDR ConnectX-5</span>
                                </xsl:when>
                                <xsl:when test="SubDeviceId='0089'">
                                  <span>PLAN EP MCX4-EN 40Gb Dual-Port QSFP</span>
                                </xsl:when>
                                <xsl:when test="SubDeviceId='0087'">
                                  <span>PLAN EP MCX4-EN 100Gb Single-Port QSFP28</span>
                                </xsl:when>
                                <xsl:when test="SubDeviceId='0092'">
                                  <span>PLAN EP MCX4-LX 25Gb Dual-Port SFP28</span>
                                </xsl:when>
                                <xsl:otherwise>
                                  <span>Unknown</span>
                                </xsl:otherwise>
                              </xsl:choose>
                            </xsl:when>
                            <xsl:when test="SubVendorId='1AED'">
                              <xsl:choose>
                                <xsl:when test="SubDeviceId='2001'">
                                  <span>Fusion-io ioDrive2 PCIe-SSD</span>
                                </xsl:when>
                                <xsl:when test="SubDeviceId='3002'">
                                  <span>SanDisk PACC EP PX600</span>
                                </xsl:when>
                                <xsl:otherwise>
                                  <span>Unknown</span>
                                </xsl:otherwise>
                              </xsl:choose>
                            </xsl:when>
                            <xsl:when test="SubVendorId='10B5'">
                              <span>Fujitsu </span>
                              <xsl:choose>
                                <xsl:when test="SubDeviceId='8732'">
                                  <span>PPCI EP x16 Switch</span>
                                </xsl:when>
                                <xsl:otherwise>
                                  <span>Unknown</span>
                                </xsl:otherwise>
                              </xsl:choose>
                            </xsl:when>
                            <xsl:when test="SubVendorId='14E4'">
                              <span>Broadcom Unknown</span>
                            </xsl:when>
                            <xsl:when test="SubVendorId='1344'">
                              <span>Micron </span>
                              <xsl:choose>
                                <xsl:when test="SubDeviceId='2000'">
                                  <span>9100 PCIe NVMe SSD 800GB</span>
                                </xsl:when>
                                <xsl:when test="SubDeviceId='3000'">
                                  <span>9100 PCIe NVMe SSD 1.6TB</span>
                                </xsl:when>
                                <xsl:when test="SubDeviceId='4000'">
                                  <span>9100 PCIe NVMe SSD 3.2TB</span>
                                </xsl:when>
                                <xsl:when test="(DeviceId='5190') and (SubDeviceId='5A00')">
                                  <span>9200 ECO 8TB</span>
                                </xsl:when>
                                <xsl:when test="(DeviceId='5190') and (SubDeviceId='5D00')">
                                  <span>9200 ECO 11TB</span>
                                </xsl:when>
                                <xsl:when test="(DeviceId='5191') and (SubDeviceId='2D00')">
                                  <span>9200 PRO 1.92TB</span>
                                </xsl:when>
                                <xsl:when test="(DeviceId='5191') and (SubDeviceId='4A00')">
                                  <span>9200 PRO 3.84TB</span>
                                </xsl:when>
                                <xsl:when test="(DeviceId='5191') and (SubDeviceId='5A00')">
                                  <span>9200 PRO 7.68TB</span>
                                </xsl:when>
                                <xsl:when test="(DeviceId='5192') and (SubDeviceId='2D00')">
                                  <span>9200 MAX 1.6TB</span>
                                </xsl:when>
                                <xsl:when test="(DeviceId='5192') and (SubDeviceId='4A00')">
                                  <span>9200 MAX 3.2TB</span>
                                </xsl:when>
                                <xsl:when test="(DeviceId='5192') and (SubDeviceId='5A00')">
                                  <span>9200 MAX 6.4TB</span>
                                </xsl:when>
                                <xsl:otherwise>
                                  <span>Unknown</span>
                                </xsl:otherwise>
                              </xsl:choose>
                            </xsl:when>
                            <xsl:otherwise>
                              <span>Unknown</span>
                            </xsl:otherwise>
                          </xsl:choose>
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

        <!-- Sensor Data Records -->
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
              <thead>
                <tr>
                  <th>
                    <span>
                      <xsl:text>Nr</xsl:text>
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
                            <xsl:for-each select="@Nr">
                              <span>
                                <xsl:value-of select="string(.)"/>
                              </span>
                            </xsl:for-each>
                          </td>
                          <td align="left">
                            <table border="0" width="100%">
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
              <xsl:text>No sensor data records found.</xsl:text>
            </span>
          </xsl:otherwise>
        </xsl:choose>
        <br/>
        <br/>

        <!-- IDPROM Data -->
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
        <table border="1" cellpadding="2" cellspacing="0">
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
        <br/>

        <!-- System Processors -->
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
                <thead>
                  <tr>
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
                    <th rowspan="2">
                      <span>
                        <xsl:text>QPI Speed</xsl:text>
                      </span>
                    </th>
                    <th rowspan="2">
                      <span>
                        <xsl:text>Core</xsl:text>
                      </span>
                      <br/>
                      <span>
                        <xsl:text>Count</xsl:text>
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
                          <xsl:when test="@Boot=true()">
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
                      <td style="text-align:center; ">
                        <xsl:choose>
                          <xsl:when test="count (QPISpeed)">
                            <xsl:for-each select="QPISpeed">
                              <xsl:apply-templates/>
                            </xsl:for-each>
                            <span>
                              <xsl:text>MT/s</xsl:text>
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

        <!-- System Voltages -->
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
              <xsl:text>No system voltages found!</xsl:text>
            </span>
          </xsl:otherwise>
        </xsl:choose>
        <br/>

        <!-- System Fans -->
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
                      <xsl:text>Current </xsl:text>
                    </span>
                    <br/>
                    <span>
                      <xsl:text>Max Speed</xsl:text>
                    </span>
                  </th>
                  <th style="text-align:center; ">
                    <span>
                      <xsl:text>Nominal </xsl:text>
                    </span>
                    <br/>
                    <span>
                      <xsl:text>Max Speed</xsl:text>
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
              <xsl:text>No installed fans found!</xsl:text>
            </span>
          </xsl:otherwise>
        </xsl:choose>
        <br/>

        <!-- System Temperature -->
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
              <xsl:text>No installed temperature sensors found!</xsl:text>
            </span>
          </xsl:otherwise>
        </xsl:choose>
        <br/>

        <!-- Memory Modules -->
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
                  <th rowspan="2" style="text-align:center; ">
                    <span>
                      <xsl:text>Unbuffered/</xsl:text>
                    </span>
                    <br/>
                    <span>
                      <xsl:text>Registered</xsl:text>
                    </span>
                    <br/>
                  </th>
                  <th rowspan="2">
                    <span>
                      <xsl:text>Current Frequency</xsl:text>
                    </span>
                  </th>
                  <th colspan="6" style="text-align:center; " align="center" width="128">
                    <span>
                      <xsl:text>Serial Presence Detect Data (SPD-Data)</xsl:text>
                    </span>
                  </th>
                </tr>
                <tr>
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
                      <xsl:text>Serial Number</xsl:text>
                    </span>
                  </th>
                  <th style="text-align:center; ">
                    <span>
                      <xsl:text>Manufacturing Date</xsl:text>
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
                            <td style="text-align:center; " align="center">
                              <xsl:choose>
                                <xsl:when test="count(  SPD/ModuleType  )">
                                <!-- <xsl:when test="count(  SPD/BufferedRegistered  )"> -->
                                  <xsl:for-each select="SPD">
                                    <xsl:for-each select="ModuleType">
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
                                <xsl:when test="count(  SPD/ModuleSerialNumber  )  != 0">
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

        <!-- System Event Log -->
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
              <xsl:text>System event log not available!</xsl:text>
            </span>
          </xsl:otherwise>
        </xsl:choose>
        <br/>
        <br/>

        <!-- Internal Event Log -->
        <h2>
          <a>
            <xsl:attribute name="name">
              <xsl:value-of select="&apos;Internal Eventlog&apos;"/>
            </xsl:attribute>
            <span>
              <xsl:text>Internal Event Log</xsl:text>
            </span>
          </a>
        </h2>
        <xsl:choose>
          <xsl:when test="count(  Root/System/InternalEventlog/Entry  )  != 0">
            <xsl:for-each select="Root">
              <xsl:for-each select="System">
                <xsl:for-each select="InternalEventlog">
                  <table border="1" cellpadding="2" cellspacing="0">
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
              <xsl:text>Internal event log not available!</xsl:text>
            </span>
          </xsl:otherwise>
        </xsl:choose>
        <br/>
        <br/>

        <!-- System Boot Status -->
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
        <table border="0" class="TableWithoutBorder" width="100%">
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
        <br/>

        <!-- System Management Controller -->
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
                          <td style="width:1.69in; ">
                            <span>
                              <xsl:text>Management Port:</xsl:text>
                            </span>
                          </td>
                          <td style="width:5.30in; ">
                            <xsl:choose>
                              <xsl:when test="ManagementLANPort='0'">
                                <span>
                                  <xsl:text>Management LAN (dedicated)</xsl:text>
                                </span>
                              </xsl:when>
                              <xsl:when test="ManagementLANPort='1'">
                                <span>
                                  <xsl:text>Shared LAN1</xsl:text>
                                </span>
                              </xsl:when>
                              <xsl:when test="ManagementLANPort='2'">
                                <span>
                                  <xsl:text>Shared LAN2</xsl:text>
                                </span>
                              </xsl:when>
                            </xsl:choose>
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
              <xsl:text>No iRMC found!</xsl:text>
            </span>
          </xsl:otherwise>
        </xsl:choose>

        <!-- Network Information -->
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
              <xsl:text>Network interfaces</xsl:text>
            </span>
          </h4>
          <xsl:for-each select="Root">
            <xsl:for-each select="Network">
              <xsl:for-each select="Interfaces">
                <table border="1" cellpadding="2" cellspacing="0">
                  <thead>
                    <tr>
                      <th>
                        <span>
                          <xsl:text>Index</xsl:text>
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
                      <th style="text-align:center; " align="center">
                        <span>
                          <xsl:text>MAC Address</xsl:text>
                        </span>
                      </th>
                      <th style="text-align:center; " align="center">
                        <span>
                          <xsl:text>Type</xsl:text>
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
                          <xsl:for-each select="@Index">
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
                            <xsl:when test="count( Type ) != 0">
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
        </xsl:if>
        
        <!-- OS Information -->
        <xsl:choose>
          <xsl:when test="count(  /Root/Software/ServerView/ServerViewRaid/amEMSV/System/OSProduct  ) != 0">
            <h2>
              <a>
                <xsl:attribute name="name">
                  <xsl:value-of select="&apos;Operating System&apos;"/>
                </xsl:attribute>
                <span>
                  <xsl:text>Operating System</xsl:text>
                </span>
              </a>
            </h2>
            <span>
              <xsl:text>Name: </xsl:text>
            </span>
            <xsl:for-each select="Root">
              <xsl:for-each select="Software">
                <xsl:for-each select="ServerView">
                  <xsl:for-each select="ServerViewRaid">
                    <xsl:for-each select="amEMSV">
                      <xsl:for-each select="System">
                        <xsl:for-each select="OSProduct">
                          <xsl:apply-templates/>
                        </xsl:for-each>
                      </xsl:for-each>
                    </xsl:for-each>
                  </xsl:for-each>
                </xsl:for-each>
              </xsl:for-each>
            </xsl:for-each>
            <xsl:choose>
              <xsl:when test="count(  /Root/Software/ServerView/ServerViewRaid/amEMSV/System/Version  )">
                <br/>
                <span>
                  <xsl:text>Version: </xsl:text>
                </span>
                <xsl:for-each select="Root">
                  <xsl:for-each select="Software">
                    <xsl:for-each select="ServerView">
                      <xsl:for-each select="ServerViewRaid">
                        <xsl:for-each select="amEMSV">
                          <xsl:for-each select="System">
                            <xsl:for-each select="Version">
                              <xsl:apply-templates/>
                            </xsl:for-each>
                          </xsl:for-each>
                        </xsl:for-each>
                      </xsl:for-each>
                    </xsl:for-each>
                  </xsl:for-each>
                </xsl:for-each>
              </xsl:when>
            </xsl:choose>
            <xsl:choose>
              <xsl:when test="count(  /Root/Software/ServerView/ServerViewRaid/amEMSV/System/Build  )">
                <br/>
                <span>
                  <xsl:text>Build: </xsl:text>
                </span>
                <xsl:for-each select="Root">
                  <xsl:for-each select="Software">
                    <xsl:for-each select="ServerView">
                      <xsl:for-each select="ServerViewRaid">
                        <xsl:for-each select="amEMSV">
                          <xsl:for-each select="System">
                            <xsl:for-each select="Build">
                              <xsl:apply-templates/>
                            </xsl:for-each>
                          </xsl:for-each>
                        </xsl:for-each>
                      </xsl:for-each>
                    </xsl:for-each>
                  </xsl:for-each>
                </xsl:for-each>
              </xsl:when>
            </xsl:choose>
          </xsl:when>
        </xsl:choose>

        <!-- ServerView Agents -->
        <h2>
          <a>
            <xsl:attribute name="name">
              <xsl:value-of select="&apos;ServerView Agents&apos;"/>
            </xsl:attribute>
            <span>
              <xsl:text>ServerView Agents</xsl:text>
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
          </xsl:when>
        </xsl:choose>
        
        <!-- RAID Information -->
        <xsl:choose>
          <xsl:when test="Root/Software/ServerView/ServerViewRaid/@Installed = &apos;true&apos;">
            <h2>
              <a>
                <xsl:attribute name="name">
                  <xsl:value-of select="&apos;ServerView RAID&apos;"/>
                </xsl:attribute>
                <span>
                  <xsl:text>RAID Information</xsl:text>
                </span>
              </a>
            </h2>
            <!-- Overall Status -->
            <xsl:if test="count (Root/Software/ServerView/ServerViewRaid/amEMSV/System/Multiplexer/StatusOverall)">
              <span>
                <xsl:text>Overall Status: </xsl:text>
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
            
            <!-- RAID Adapter Information -->
            <xsl:if test="count(  Root/Software/ServerView/ServerViewRaid/amEMSV  )">
              <span style="font-weight:bold; ">
                <xsl:text>Installed RAID Adapters</xsl:text>
              </span>
              <br/>
              <xsl:choose>
                <xsl:when test="Root/Software/ServerView/ServerViewRaid/amEMSV/System/Adapter">
                  <table border="1" cellpadding="2" cellspacing="0">
                    <thead>
                      <tr>
                        <th colspan="2" style="text-align:center; ">
                          <span>
                            <xsl:text>Adapter </xsl:text>
                          </span>
                        </th>
                        <th rowspan="2">
                          <span>
                            <xsl:text>Status</xsl:text>
                          </span>
                        </th>
                        <th rowspan="2">
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
                            <xsl:text>Memory</xsl:text>
                          </span>
                          <br/>
                          <span>
                            <xsl:text>Size</xsl:text>
                          </span>
                        </th>
                        <th rowspan="2">
                          <span>
                            <xsl:text>Firmware package</xsl:text>
                          </span>
                          <br/>
                          <span>
                            <xsl:text>version</xsl:text>
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
                            <xsl:text>SubVendor ID</xsl:text>
                          </span>
                        </th>
                        <th>
                          <span>
                            <xsl:text>SubDevice ID</xsl:text>
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
                                        <xsl:for-each select="Status">
                                          <xsl:apply-templates/>
                                        </xsl:for-each>
                                      </td>
                                      <td style="text-align:center; ">
                                        <xsl:for-each select="@Type">
                                          <span>
                                            <xsl:value-of select="string(.)"/>
                                          </span>
                                        </xsl:for-each>
                                        <br/>
                                        <xsl:for-each select="Protocol">
                                          <span>
                                            (<xsl:apply-templates/>)
                                          </span>
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
                                          <xsl:when test="(count( FWPackageVersion ) != 0) and (count( FirmwareVersion ) != 0)">
                                            <xsl:for-each select="FWPackageVersion">
                                              <xsl:apply-templates/>
                                            </xsl:for-each>
                                          </xsl:when>
                                          <xsl:when test="(count( FWPackageVersion ) != 0) or (count( FirmwareVersion ) != 0)">
                                            <xsl:for-each select="FWPackageVersion | FirmwareVersion">
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
                  
                  <!-- Physical Drive Information -->
                  <xsl:choose>
                    <!-- With Enclosure -->
                    <xsl:when test="count(  Root/Software/ServerView/ServerViewRaid/amEMSV/System/Adapter/Ports/Port/Enclosure  )  != 0">
                        <br/>
                        <span style="font-weight:bold; ">
                          <xsl:text>Physical Drive Information</xsl:text>
                        </span>
                        <br/>
                        <table border="1" cellpadding="2" cellspacing="0">
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
                                  <xsl:text>Physical Drives</xsl:text>
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
                                              <xsl:if test="(@Type=&quot;SAS&quot;) or (@Type=&quot;SATA&quot;) or (@Type=&quot;SAS, SATA&quot;) or (@Type=&quot;PCIe&quot;) or (@Type=&quot;Software&quot;) or (@Type=&quot;USB&quot;) or (@Name=&quot;AHCI&quot;)">
                                                <xsl:for-each select="@Nr">
                                                  <span>
                                                    <xsl:value-of select="string(.)"/>
                                                  </span>
                                                </xsl:for-each>
                                              </xsl:if>
                                            </td>
                                            <td>
                                              <xsl:if test="(@Type=&quot;SAS&quot;) or (@Type=&quot;SATA&quot;) or (@Type=&quot;SAS, SATA&quot;) or (@Type=&quot;PCIe&quot;) or (@Type=&quot;Software&quot;) or (@Type=&quot;USB&quot;) or (@Name=&quot;AHCI&quot;)">
                                                <xsl:for-each select="@Name">
                                                  <span>
                                                    <xsl:value-of select="string(.)"/>
                                                  </span>
                                                </xsl:for-each>
                                              </xsl:if>
                                            </td>
                                            <td style="text-align:center; ">
                                              <xsl:if test="(@Type=&quot;SAS&quot;) or (@Type=&quot;SATA&quot;) or (@Type=&quot;SAS, SATA&quot;) or (@Type=&quot;PCIe&quot;) or (@Type=&quot;Software&quot;) or (@Type=&quot;USB&quot;) or (@Name=&quot;AHCI&quot;)">
                                                <xsl:for-each select="@Type">
                                                  <span>
                                                    <xsl:value-of select="string(.)"/>
                                                  </span>
                                                </xsl:for-each>
                                              </xsl:if>
                                            </td>
                                            <td>
                                              <!-- SAS/SATA RAID Adapter or SAS HBA -->
                                              <xsl:if test="(@Type=&quot;SAS&quot;) or (@Type=&quot;SATA&quot;) or (@Type=&quot;SAS, SATA&quot;)">
                                                <table border="1" cellpadding="2" cellspacing="0">
                                                  <thead>
                                                    <tr>
                                                      <th width="70">
                                                        <span>
                                                          <xsl:text>SAS/SATA Ports</xsl:text>
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
                                                            <xsl:for-each select="Name">
                                                              <xsl:apply-templates/>
                                                            </xsl:for-each>
                                                          </td>
                                                          <td>
                                                            <xsl:choose>
                                                              <xsl:when test="count(  Enclosure  )">
                                                                <table border="1" cellpadding="2" cellspacing="0">
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
                                                                          <xsl:text>Physical Disks</xsl:text>
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
                                                                                    <xsl:text>Slot</xsl:text>
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
                                                                                    <xsl:text>Firmware</xsl:text>
                                                                                  </span>
                                                                                  <br/>
                                                                                  <span>
                                                                                    <xsl:text>Version</xsl:text>
                                                                                  </span>
                                                                                </th>
                                                                                <th>
                                                                                  <span>
                                                                                    <xsl:text>Serial Number</xsl:text>
                                                                                  </span>
                                                                                </th>
                                                                                <th style="text-align:center; ">
                                                                                  <span>
                                                                                    <xsl:text>Temperature</xsl:text>
                                                                                  </span>
                                                                                </th>
                                                                                <th>
                                                                                  <span>
                                                                                    <xsl:text>PFA Count</xsl:text>
                                                                                  </span>
                                                                                </th>
                                                                                <th>
                                                                                  <span>
                                                                                    <xsl:text>Media Error Count</xsl:text>
                                                                                  </span>
                                                                                </th>
                                                                                <th>
                                                                                  <span>
                                                                                    <xsl:text>Misc Error Count</xsl:text>
                                                                                  </span>
                                                                                </th>
                                                                              </tr>
                                                                            </thead>
                                                                            <tbody>
                                                                              <xsl:for-each select="PhysicalDrive">
                                                                                <tr>
                                                                                  <td style="text-align:center; " width="100">
                                                                                    <xsl:for-each select="Type">
                                                                                      <xsl:apply-templates/>
                                                                                    </xsl:for-each>
                                                                                    <span>
                                                                                      <xsl:text> </xsl:text>
                                                                                    </span>
                                                                                    <xsl:for-each select="MediaType">
                                                                                      <xsl:apply-templates/>
                                                                                    </xsl:for-each>
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
                                                                                    <xsl:for-each select="Slot">
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
                                                                                    <xsl:for-each select="FirmwareVersion">
                                                                                      <xsl:apply-templates/>
                                                                                    </xsl:for-each>
                                                                                  </td>
                                                                                  <td>
                                                                                    <xsl:for-each select="SerialNumber">
                                                                                      <xsl:apply-templates/>
                                                                                    </xsl:for-each>
                                                                                  </td>
                                                                                  <td style="text-align:center; ">
                                                                                    <xsl:for-each select="Temperature">
                                                                                      <xsl:apply-templates/>
                                                                                    </xsl:for-each>
                                                                                  </td>
                                                                                  <td align="center">
                                                                                    <xsl:for-each select="PFACount">
                                                                                      <xsl:apply-templates/>
                                                                                    </xsl:for-each>
                                                                                  </td>
                                                                                  <td align="center">
                                                                                    <xsl:for-each select="MediaErrorCount">
                                                                                      <xsl:apply-templates/>
                                                                                    </xsl:for-each>
                                                                                  </td>
                                                                                  <td align="center">
                                                                                    <xsl:for-each select="MiscErrors">
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
                                              </xsl:if>
                                              <!-- PCIe SSD -->
                                              <xsl:if test="(@Type=&quot;PCIe&quot;)">
                                                <xsl:choose>
                                                  <xsl:when test="(@Type=&quot;PCIe&quot;)">
                                                    <xsl:if test="count(  PhysicalDrive  )">
                                                      <table border="1" cellpadding="2" cellspacing="0" width="100%">
                                                        <thead>
                                                          <tr>
                                                            <td>
                                                              <span>
                                                                <xsl:text>Type</xsl:text>
                                                              </span>
                                                            </td>
                                                            <td>
                                                              <span>
                                                                <xsl:text>Name</xsl:text>
                                                              </span>
                                                            </td>
                                                            <td>
                                                              <span>
                                                                <xsl:text>Product</xsl:text>
                                                              </span>
                                                            </td>
                                                            <td>
                                                              <span>
                                                                <xsl:text>Status</xsl:text>
                                                              </span>
                                                            </td>
                                                            <td>
                                                              <span>
                                                                <xsl:text>Size</xsl:text>
                                                              </span>
                                                            </td>
                                                            <td>
                                                              <span>
                                                                <xsl:text>Firmware</xsl:text>
                                                              </span>
                                                              <br/>
                                                              <span>
                                                                <xsl:text>Version</xsl:text>
                                                              </span>
                                                            </td>
                                                            <td>
                                                              <span>
                                                                <xsl:text>Serial</xsl:text>
                                                              </span>
                                                              <br/>
                                                              <span>
                                                                <xsl:text>Number</xsl:text>
                                                              </span>
                                                            </td>
                                                            <td>
                                                              <span>
                                                                <xsl:text>Rated Endurance</xsl:text>
                                                              </span>
                                                              <br/>
                                                              <span>
                                                                <xsl:text>Percent</xsl:text>
                                                              </span>
                                                            </td>
                                                          </tr>
                                                        </thead>
                                                        <tbody>
                                                          <xsl:for-each select="PhysicalDrive">
                                                            <tr>
                                                              <td style="text-align:center; " width="100">
                                                                <xsl:for-each select="Type">
                                                                  <xsl:apply-templates/>
                                                                </xsl:for-each>
                                                                <span>
                                                                  <xsl:text> </xsl:text>
                                                                </span>
                                                                <xsl:for-each select="MediaType">
                                                                  <xsl:apply-templates/>
                                                                </xsl:for-each>
                                                              </td>
                                                              <td width="300">
                                                                <xsl:for-each select="Name">
                                                                  <span>
                                                                    <xsl:apply-templates/>
                                                                  </span>
                                                                </xsl:for-each>
                                                              </td>
                                                              <td width="300">
                                                                <xsl:for-each select="Product">
                                                                  <span>
                                                                    <xsl:apply-templates/>
                                                                  </span>
                                                                </xsl:for-each>
                                                              </td>
                                                              <td>
                                                                <xsl:for-each select="Status">
                                                                  <xsl:apply-templates/>
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
                                                                <xsl:for-each select="FirmwareVersion">
                                                                  <xsl:apply-templates/>
                                                                </xsl:for-each>
                                                              </td>
                                                              <td>
                                                                <xsl:for-each select="SerialNumber">
                                                                  <xsl:apply-templates/>
                                                                </xsl:for-each>
                                                              </td>
                                                              <td>
                                                                <xsl:for-each select="RatedEndurancePercent">
                                                                  <xsl:apply-templates/>
                                                                </xsl:for-each>
                                                              </td>
                                                            </tr>
                                                          </xsl:for-each>
                                                        </tbody>
                                                      </table>
                                                    </xsl:if>
                                                  </xsl:when>
                                                </xsl:choose>
                                              </xsl:if>
                                              <!-- Linux MD (Linux) -->
                                              <xsl:if test="(@Type=&quot;Software&quot;)">
                                                <xsl:choose>
                                                  <xsl:when test="@Type=&quot;Software&quot;">
                                                    <xsl:for-each select="Ports">
                                                      <xsl:for-each select="Port">
                                                        <xsl:if test="count(  PhysicalDrive  )">
                                                          <table border="1" cellpadding="2" cellspacing="0" width="100%">
                                                            <thead>
                                                              <tr>
                                                                <th style="text-align:center; " width="100">
                                                                  <span>
                                                                    <xsl:text>Type</xsl:text>
                                                                  </span>
                                                                </th>
                                                                <th width="250">
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
                                                                    <xsl:text>Size</xsl:text>
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
                                                                    <xsl:text>Serial</xsl:text>
                                                                  </span>
                                                                  <br/>
                                                                  <span>
                                                                    <xsl:text>Number</xsl:text>
                                                                  </span>
                                                                </th>
                                                                <th style="text-align:center; ">
                                                                  <span>
                                                                    <xsl:text>Estimated</xsl:text>
                                                                  </span>
                                                                  <br/>
                                                                  <span>
                                                                    <xsl:text>Lifetime</xsl:text>
                                                                  </span>
                                                                </th>
                                                              </tr>
                                                            </thead>
                                                            <tbody>
                                                              <xsl:for-each select="PhysicalDrive">
                                                                <tr>
                                                                  <td style="text-align:center; " width="100">
                                                                    <xsl:for-each select="Type">
                                                                      <xsl:apply-templates/>
                                                                    </xsl:for-each>
                                                                    <span>
                                                                      <xsl:text> </xsl:text>
                                                                    </span>
                                                                    <xsl:for-each select="MediaType">
                                                                      <xsl:apply-templates/>
                                                                    </xsl:for-each>
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
                                                                    <xsl:for-each select="PhysicalSize">
                                                                      <xsl:apply-templates/>
                                                                    </xsl:for-each>
                                                                    <span>
                                                                      <xsl:text> MByte</xsl:text>
                                                                    </span>
                                                                  </td>
                                                                  <td style="text-align:center; ">
                                                                    <xsl:for-each select="FirmwareVersion">
                                                                      <xsl:apply-templates/>
                                                                    </xsl:for-each>
                                                                  </td>
                                                                  <td>
                                                                    <xsl:for-each select="SerialNumber">
                                                                      <xsl:apply-templates/>
                                                                    </xsl:for-each>
                                                                  </td>
                                                                  <td style="text-align:center; ">
                                                                    <xsl:for-each select="EstimatedLifetime">
                                                                      <xsl:apply-templates/>
                                                                    </xsl:for-each>
                                                                  </td>
                                                                </tr>
                                                              </xsl:for-each>
                                                            </tbody>
                                                          </table>
                                                        </xsl:if>
                                                        <xsl:if test="not (count(PhysicalDrive))">
                                                          <span>
                                                            <xsl:text>No drive attached</xsl:text>
                                                          </span>
                                                        </xsl:if>
                                                      </xsl:for-each>
                                                    </xsl:for-each>
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
                                              <!-- AHCI (Windows/VMware) -->
                                              <xsl:if test="(@Name=&quot;AHCI&quot;)">
                                                <xsl:choose>
                                                  <xsl:when test="(@Name=&quot;AHCI&quot;)">
                                                    <xsl:if test="count(  PhysicalDrive  )">
                                                      <table border="1" cellpadding="2" cellspacing="0" width="100%">
                                                        <thead>
                                                          <tr>
                                                            <td>
                                                              <span>
                                                                <xsl:text>Type</xsl:text>
                                                              </span>
                                                            </td>
                                                            <td>
                                                              <span>
                                                                <xsl:text>Name</xsl:text>
                                                              </span>
                                                            </td>
                                                            <td>
                                                              <span>
                                                                <xsl:text>Status</xsl:text>
                                                              </span>
                                                            </td>
                                                            <td>
                                                              <span>
                                                                <xsl:text>Size</xsl:text>
                                                              </span>
                                                            </td>
                                                            <td>
                                                              <span>
                                                                <xsl:text>Firmware</xsl:text>
                                                              </span>
                                                              <br/>
                                                              <span>
                                                                <xsl:text>Version</xsl:text>
                                                              </span>
                                                            </td>
                                                            <td>
                                                              <span>
                                                                <xsl:text>Serial</xsl:text>
                                                              </span>
                                                              <br/>
                                                              <span>
                                                                <xsl:text>Number</xsl:text>
                                                              </span>
                                                            </td>
                                                          </tr>
                                                        </thead>
                                                        <tbody>
                                                          <xsl:for-each select="PhysicalDrive">
                                                            <tr>
                                                              <td style="text-align:center; " width="100">
                                                                <xsl:for-each select="Type">
                                                                  <xsl:apply-templates/>
                                                                </xsl:for-each>
                                                                <span>
                                                                  <xsl:text> </xsl:text>
                                                                </span>
                                                                <xsl:for-each select="MediaType">
                                                                  <xsl:apply-templates/>
                                                                </xsl:for-each>
                                                              </td>
                                                              <td width="300">
                                                                <xsl:for-each select="Name">
                                                                  <span>
                                                                    <xsl:apply-templates/>
                                                                  </span>
                                                                </xsl:for-each>
                                                              </td>
                                                              <td>
                                                                <xsl:for-each select="Status">
                                                                  <xsl:apply-templates/>
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
                                                                <xsl:for-each select="FirmwareVersion">
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
                                                    </xsl:if>
                                                  </xsl:when>
                                                </xsl:choose>
                                              </xsl:if>
                                            <!-- USB -->
                                            <xsl:if test="(@Type=&quot;USB&quot;)">
                                                <xsl:choose>
                                                  <xsl:when test="@Type=&quot;USB&quot;">
                                                    <xsl:for-each select="Ports">
                                                      <xsl:for-each select="Port">
                                                        <xsl:if test="count(  PhysicalDrive  )">
                                                          <table border="1" cellpadding="2" cellspacing="0" width="100%">
                                                            <thead>
                                                              <tr>
                                                                <th style="text-align:center; " width="100">
                                                                  <span>
                                                                    <xsl:text>Type</xsl:text>
                                                                  </span>
                                                                </th>
                                                                <th width="250">
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
                                                                    <xsl:text>Size</xsl:text>
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
                                                                    <xsl:text>Serial</xsl:text>
                                                                  </span>
                                                                  <br/>
                                                                  <span>
                                                                    <xsl:text>Number</xsl:text>
                                                                  </span>
                                                                </th>
                                                                <th style="text-align:center; ">
                                                                  <span>
                                                                    <xsl:text>Rated Endurance</xsl:text>
                                                                  </span>
                                                                  <br/>
                                                                  <span>
                                                                    <xsl:text>Percent</xsl:text>
                                                                  </span>
                                                                </th>
                                                              </tr>
                                                            </thead>
                                                            <tbody>
                                                              <xsl:for-each select="PhysicalDrive">
                                                                <tr>
                                                                  <td style="text-align:center; " width="100">
                                                                    <xsl:for-each select="Type">
                                                                      <xsl:apply-templates/>
                                                                    </xsl:for-each>
                                                                    <span>
                                                                      <xsl:text> </xsl:text>
                                                                    </span>
                                                                    <xsl:for-each select="MediaType">
                                                                      <xsl:apply-templates/>
                                                                    </xsl:for-each>
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
                                                                    <xsl:for-each select="PhysicalSize">
                                                                      <xsl:apply-templates/>
                                                                    </xsl:for-each>
                                                                    <span>
                                                                      <xsl:text> MByte</xsl:text>
                                                                    </span>
                                                                  </td>
                                                                  <td style="text-align:center; ">
                                                                    <xsl:for-each select="FirmwareVersion">
                                                                      <xsl:apply-templates/>
                                                                    </xsl:for-each>
                                                                  </td>
                                                                  <td>
                                                                    <xsl:for-each select="SerialNumber">
                                                                      <xsl:apply-templates/>
                                                                    </xsl:for-each>
                                                                  </td>
                                                                  <td style="text-align:center; ">
                                                                    <xsl:for-each select="RatedEndurancePercent">
                                                                      <xsl:apply-templates/>
                                                                    </xsl:for-each>
                                                                  </td>
                                                                </tr>
                                                              </xsl:for-each>
                                                            </tbody>
                                                          </table>
                                                        </xsl:if>
                                                        <xsl:if test="not (count(PhysicalDrive))">
                                                          <span>
                                                            <xsl:text>No drive attached</xsl:text>
                                                          </span>
                                                        </xsl:if>
                                                      </xsl:for-each>
                                                    </xsl:for-each>
                                                  </xsl:when>
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
                    </xsl:when>
                    <!-- Without Enclosure -->
                    <xsl:when test ="count(  Root/Software/ServerView/ServerViewRaid/amEMSV/System/Adapter/Ports/Port/PhysicalDrive  )  != 0">
                      <xsl:if test="Root/Software/ServerView/ServerViewRaid/amEMSV/System/Adapter/@Type = &quot;SATA&quot; or Root/Software/ServerView/ServerViewRaid/amEMSV/System/Adapter/@Type = &quot;SAS&quot; or Root/Software/ServerView/ServerViewRaid/amEMSV/System/Adapter/@Type = &quot;SAS, SATA&quot; or Root/Software/ServerView/ServerViewRaid/amEMSV/System/Adapter/@Type = &quot;PCIe&quot; or Root/Software/ServerView/ServerViewRaid/amEMSV/System/Adapter/@Type = &quot;Software&quot; or Root/Software/ServerView/ServerViewRaid/amEMSV/System/Adapter/@Name = &quot;AHCI&quot; or Root/Software/ServerView/ServerViewRaid/amEMSV/System/Adapter/@Type = &quot;USB&quot;">
                        <br/>
                        <span style="font-weight:bold; ">
                          <xsl:text>Physical Drive Information</xsl:text>
                        </span>
                        <br/>
                        <table border="1" cellpadding="2" cellspacing="0">
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
                                  <xsl:text>Physical Drives</xsl:text>
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
                                              <xsl:if test="(@Type=&quot;SAS&quot;) or (@Type=&quot;SATA&quot;) or (@Type=&quot;SAS, SATA&quot;) or (@Type=&quot;PCIe&quot;) or (@Type=&quot;Software&quot;) or (@Name=&quot;AHCI&quot;) or (@Type=&quot;USB&quot;)">
                                                <xsl:for-each select="@Nr">
                                                  <span>
                                                    <xsl:value-of select="string(.)"/>
                                                  </span>
                                                </xsl:for-each>
                                              </xsl:if>
                                            </td>
                                            <td>
                                              <xsl:if test="(@Type=&quot;SAS&quot;) or (@Type=&quot;SATA&quot;) or (@Type=&quot;SAS, SATA&quot;) or (@Type=&quot;PCIe&quot;) or (@Type=&quot;Software&quot;) or (@Name=&quot;AHCI&quot;) or (@Type=&quot;USB&quot;)">
                                                <xsl:for-each select="@Name">
                                                  <span>
                                                    <xsl:value-of select="string(.)"/>
                                                  </span>
                                                </xsl:for-each>
                                              </xsl:if>
                                            </td>
                                            <td style="text-align:center; ">
                                              <xsl:if test="(@Type=&quot;SAS&quot;) or (@Type=&quot;SATA&quot;) or (@Type=&quot;SAS, SATA&quot;) or (@Type=&quot;PCIe&quot;) or (@Type=&quot;Software&quot;) or (@Name=&quot;AHCI&quot;) or (@Type=&quot;USB&quot;)">
                                                <xsl:for-each select="@Type">
                                                  <span>
                                                    <xsl:value-of select="string(.)"/>
                                                  </span>
                                                </xsl:for-each>
                                              </xsl:if>
                                            </td>
                                            <td>
                                              <!-- SAS/SATA RAID Adapter or SAS HBA-->
                                              <xsl:if test="(@Type=&quot;SAS&quot;) or (@Type=&quot;SATA&quot;) or (@Type=&quot;SAS, SATA&quot;)">
                                                <xsl:choose>
                                                  <xsl:when test="@Type = &quot;SAS&quot; or @Type=&quot;SATA&quot; or @Type=&quot;SAS, SATA&quot;">
                                                    <table border="1" cellpadding="2" cellspacing="0">
                                                      <thead>
                                                        <tr>
                                                          <th width="100">
                                                            <span>
                                                              <xsl:text>SAS/SATA Ports</xsl:text>
                                                            </span>
                                                          </th>
                                                          <th align="left">
                                                            <span>
                                                              <xsl:text>Physical Disks</xsl:text>
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
                                                                  <xsl:when test="count(  Name   )  != 0">
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
                                                              <td>
                                                                <xsl:if test="count(  PhysicalDrive  )">
                                                                  <table border="1" cellpadding="2" cellspacing="0">
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
                                                                            <xsl:text>Slot</xsl:text>
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
                                                                            <xsl:text>Firmware</xsl:text>
                                                                          </span>
                                                                          <br/>
                                                                          <span>
                                                                            <xsl:text>Version</xsl:text>
                                                                          </span>
                                                                        </th>
                                                                        <th>
                                                                          <span>
                                                                            <xsl:text>Serial Number</xsl:text>
                                                                          </span>
                                                                        </th>
                                                                        <th style="text-align:center; ">
                                                                          <span>
                                                                            <xsl:text>Temperature</xsl:text>
                                                                          </span>
                                                                        </th>
                                                                        <th>
                                                                          <span>
                                                                            <xsl:text>PFA Count</xsl:text>
                                                                          </span>
                                                                        </th>
                                                                        <th>
                                                                          <span>
                                                                            <xsl:text>Media Error Count</xsl:text>
                                                                          </span>
                                                                        </th>
                                                                        <th>
                                                                          <span>
                                                                            <xsl:text>Misc Error Count</xsl:text>
                                                                          </span>
                                                                        </th>
                                                                      </tr>
                                                                    </thead>
                                                                    <tbody>
                                                                      <xsl:for-each select="PhysicalDrive">
                                                                        <tr>
                                                                          <td style="text-align:center; " width="100">
                                                                            <xsl:for-each select="Type">
                                                                              <xsl:apply-templates/>
                                                                            </xsl:for-each>
                                                                            <span>
                                                                              <xsl:text> </xsl:text>
                                                                            </span>
                                                                            <xsl:for-each select="MediaType">
                                                                              <xsl:apply-templates/>
                                                                            </xsl:for-each>
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
                                                                            <xsl:for-each select="Slot">
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
                                                                            <xsl:for-each select="FirmwareVersion">
                                                                              <xsl:apply-templates/>
                                                                            </xsl:for-each>
                                                                          </td>
                                                                          <td>
                                                                            <xsl:for-each select="SerialNumber">
                                                                              <xsl:apply-templates/>
                                                                            </xsl:for-each>
                                                                          </td>
                                                                          <td style="text-align:center; ">
                                                                            <xsl:for-each select="Temperature">
                                                                              <xsl:apply-templates/>
                                                                            </xsl:for-each>
                                                                          </td>
                                                                          <td align="center">
                                                                            <xsl:for-each select="PFACount">
                                                                              <xsl:apply-templates/>
                                                                            </xsl:for-each>
                                                                          </td>
                                                                          <td align="center">
                                                                            <xsl:for-each select="MediaErrorCount">
                                                                              <xsl:apply-templates/>
                                                                            </xsl:for-each>
                                                                          </td>
                                                                          <td align="center">
                                                                            <xsl:for-each select="MiscErrors">
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
                                                                            <xsl:text>Slot</xsl:text>
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
                                                                            <xsl:text>Serial </xsl:text>
                                                                          </span>
                                                                          <br/>
                                                                          <span>
                                                                            <xsl:text>Number</xsl:text>
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
                                                                            <xsl:text>Media Error </xsl:text>
                                                                          </span>
                                                                          <br/>
                                                                          <span>
                                                                            <xsl:text>Count</xsl:text>
                                                                          </span>
                                                                        </th>
                                                                        <th style="text-align:center; ">
                                                                          <span>
                                                                            <xsl:text>Misc Error </xsl:text>
                                                                          </span>
                                                                          <br/>
                                                                          <span>
                                                                            <xsl:text>Count</xsl:text>
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
                                                                            <xsl:for-each select="Slot">
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
                                                                            <xsl:for-each select="PFACount">
                                                                              <xsl:apply-templates/>
                                                                            </xsl:for-each>
                                                                          </td>
                                                                          <td style="text-align:center; ">
                                                                            <xsl:for-each select="MediaErrorCount">
                                                                              <xsl:apply-templates/>
                                                                            </xsl:for-each>
                                                                          </td>
                                                                          <td style="text-align:center; ">
                                                                            <xsl:for-each select="MiscErrors">
                                                                              <xsl:apply-templates/>
                                                                            </xsl:for-each>
                                                                          </td>
                                                                        </tr>
                                                                      </xsl:for-each>
                                                                    </tbody>
                                                                  </table>
                                                                </xsl:if>
                                                                <xsl:if test="count( Tape )">
                                                                  <table border="1" cellpadding="2" cellspacing="0">
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
                                                                            <xsl:text>Slot</xsl:text>
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
                                                                            <xsl:text>Serial </xsl:text>
                                                                          </span>
                                                                          <br/>
                                                                          <span>
                                                                            <xsl:text>Number</xsl:text>
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
                                                                            <xsl:text>Media Error </xsl:text>
                                                                          </span>
                                                                          <br/>
                                                                          <span>
                                                                            <xsl:text>Count</xsl:text>
                                                                          </span>
                                                                        </th>
                                                                        <th style="text-align:center; ">
                                                                          <span>
                                                                            <xsl:text>Misc Error </xsl:text>
                                                                          </span>
                                                                          <br/>
                                                                          <span>
                                                                            <xsl:text>Count</xsl:text>
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
                                                                            <xsl:for-each select="Slot">
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
                                                                            <xsl:for-each select="PFACount">
                                                                              <xsl:apply-templates/>
                                                                            </xsl:for-each>
                                                                          </td>
                                                                          <td style="text-align:center; ">
                                                                            <xsl:for-each select="MediaErrorCount">
                                                                              <xsl:apply-templates/>
                                                                            </xsl:for-each>
                                                                          </td>
                                                                          <td style="text-align:center; ">
                                                                            <xsl:for-each select="MiscErrors">
                                                                              <xsl:apply-templates/>
                                                                            </xsl:for-each>
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
                                              <!-- PCIe SSD -->
                                              <xsl:if test="(@Type=&quot;PCIe&quot;)">
                                                <xsl:choose>
                                                  <xsl:when test="(@Type=&quot;PCIe&quot;)">
                                                    <xsl:if test="count(  PhysicalDrive  )">
                                                      <table border="1" cellpadding="2" cellspacing="0" width="100%">
                                                        <thead>
                                                          <tr>
                                                            <td>
                                                              <span>
                                                                <xsl:text>Type</xsl:text>
                                                              </span>
                                                            </td>
                                                            <td>
                                                              <span>
                                                                <xsl:text>Name</xsl:text>
                                                              </span>
                                                            </td>
                                                            <td>
                                                              <span>
                                                                <xsl:text>Product</xsl:text>
                                                              </span>
                                                            </td>
                                                            <td>
                                                              <span>
                                                                <xsl:text>Status</xsl:text>
                                                              </span>
                                                            </td>
                                                            <td>
                                                              <span>
                                                                <xsl:text>Size</xsl:text>
                                                              </span>
                                                            </td>
                                                            <td>
                                                              <span>
                                                                <xsl:text>Firmware</xsl:text>
                                                              </span>
                                                              <br/>
                                                              <span>
                                                                <xsl:text>Version</xsl:text>
                                                              </span>
                                                            </td>
                                                            <td>
                                                              <span>
                                                                <xsl:text>Serial</xsl:text>
                                                              </span>
                                                              <br/>
                                                              <span>
                                                                <xsl:text>Number</xsl:text>
                                                              </span>
                                                            </td>
                                                            <td>
                                                              <span>
                                                                <xsl:text>Rated Endurance</xsl:text>
                                                              </span>
                                                              <br/>
                                                              <span>
                                                                <xsl:text>Percent</xsl:text>
                                                              </span>
                                                            </td>
                                                          </tr>
                                                        </thead>
                                                        <tbody>
                                                          <xsl:for-each select="PhysicalDrive">
                                                            <tr>
                                                              <td style="text-align:center; " width="100">
                                                                <xsl:for-each select="Type">
                                                                  <xsl:apply-templates/>
                                                                </xsl:for-each>
                                                                <span>
                                                                  <xsl:text> </xsl:text>
                                                                </span>
                                                                <xsl:for-each select="MediaType">
                                                                  <xsl:apply-templates/>
                                                                </xsl:for-each>
                                                              </td>
                                                              <td width="300">
                                                                <xsl:for-each select="Name">
                                                                  <span>
                                                                    <xsl:apply-templates/>
                                                                  </span>
                                                                </xsl:for-each>
                                                              </td>
                                                              <td width="300">
                                                                <xsl:for-each select="Product">
                                                                  <span>
                                                                    <xsl:apply-templates/>
                                                                  </span>
                                                                </xsl:for-each>
                                                              </td>
                                                              <td>
                                                                <xsl:for-each select="Status">
                                                                  <xsl:apply-templates/>
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
                                                                <xsl:for-each select="FirmwareVersion">
                                                                  <xsl:apply-templates/>
                                                                </xsl:for-each>
                                                              </td>
                                                              <td>
                                                                <xsl:for-each select="SerialNumber">
                                                                  <xsl:apply-templates/>
                                                                </xsl:for-each>
                                                              </td>
                                                              <td>
                                                                <xsl:for-each select="RatedEndurancePercent">
                                                                  <xsl:apply-templates/>
                                                                </xsl:for-each>
                                                              </td>
                                                            </tr>
                                                          </xsl:for-each>
                                                        </tbody>
                                                      </table>
                                                    </xsl:if>
                                                  </xsl:when>
                                                </xsl:choose>
                                              </xsl:if>
                                              <!-- Linux MD (Linux) -->
                                              <xsl:if test="(@Type=&quot;Software&quot;)">
                                                <xsl:choose>
                                                  <xsl:when test="@Type=&quot;Software&quot;">
                                                    <xsl:for-each select="Ports">
                                                      <xsl:for-each select="Port">
                                                        <xsl:if test="count(  PhysicalDrive  )">
                                                          <table border="1" cellpadding="2" cellspacing="0" width="100%">
                                                            <thead>
                                                              <tr>
                                                                <th style="text-align:center; " width="100">
                                                                  <span>
                                                                    <xsl:text>Type</xsl:text>
                                                                  </span>
                                                                </th>
                                                                <th width="250">
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
                                                                    <xsl:text>Size</xsl:text>
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
                                                                    <xsl:text>Serial</xsl:text>
                                                                  </span>
                                                                  <br/>
                                                                  <span>
                                                                    <xsl:text>Number</xsl:text>
                                                                  </span>
                                                                </th>
                                                                <th style="text-align:center; ">
                                                                  <span>
                                                                    <xsl:text>Estimated</xsl:text>
                                                                  </span>
                                                                  <br/>
                                                                  <span>
                                                                    <xsl:text>Lifetime</xsl:text>
                                                                  </span>
                                                                </th>
                                                              </tr>
                                                            </thead>
                                                            <tbody>
                                                              <xsl:for-each select="PhysicalDrive">
                                                                <tr>
                                                                  <td style="text-align:center; " width="100">
                                                                    <xsl:for-each select="Type">
                                                                      <xsl:apply-templates/>
                                                                    </xsl:for-each>
                                                                    <span>
                                                                      <xsl:text> </xsl:text>
                                                                    </span>
                                                                    <xsl:for-each select="MediaType">
                                                                      <xsl:apply-templates/>
                                                                    </xsl:for-each>
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
                                                                    <xsl:for-each select="PhysicalSize">
                                                                      <xsl:apply-templates/>
                                                                    </xsl:for-each>
                                                                    <span>
                                                                      <xsl:text> MByte</xsl:text>
                                                                    </span>
                                                                  </td>
                                                                  <td style="text-align:center; ">
                                                                    <xsl:for-each select="FirmwareVersion">
                                                                      <xsl:apply-templates/>
                                                                    </xsl:for-each>
                                                                  </td>
                                                                  <td>
                                                                    <xsl:for-each select="SerialNumber">
                                                                      <xsl:apply-templates/>
                                                                    </xsl:for-each>
                                                                  </td>
                                                                  <td style="text-align:center; ">
                                                                    <xsl:for-each select="EstimatedLifetime">
                                                                      <xsl:apply-templates/>
                                                                    </xsl:for-each>
                                                                  </td>
                                                                </tr>
                                                              </xsl:for-each>
                                                            </tbody>
                                                          </table>
                                                        </xsl:if>
                                                        <xsl:if test="not (count(PhysicalDrive))">
                                                          <span>
                                                            <xsl:text>No drive attached</xsl:text>
                                                          </span>
                                                        </xsl:if>
                                                      </xsl:for-each>
                                                    </xsl:for-each>
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
                                              <!-- AHCI (Windows/VMware) -->
                                              <xsl:if test="(@Name=&quot;AHCI&quot;)">
                                                <xsl:choose>
                                                  <xsl:when test="(@Name=&quot;AHCI&quot;)">
                                                    <xsl:if test="count(  PhysicalDrive  )">
                                                      <table border="1" cellpadding="2" cellspacing="0" width="100%">
                                                        <thead>
                                                          <tr>
                                                            <td>
                                                              <span>
                                                                <xsl:text>Type</xsl:text>
                                                              </span>
                                                            </td>
                                                            <td>
                                                              <span>
                                                                <xsl:text>Name</xsl:text>
                                                              </span>
                                                            </td>
                                                            <td>
                                                              <span>
                                                                <xsl:text>Status</xsl:text>
                                                              </span>
                                                            </td>
                                                            <td>
                                                              <span>
                                                                <xsl:text>Size</xsl:text>
                                                              </span>
                                                            </td>
                                                            <td>
                                                              <span>
                                                                <xsl:text>Firmware</xsl:text>
                                                              </span>
                                                              <br/>
                                                              <span>
                                                                <xsl:text>Version</xsl:text>
                                                              </span>
                                                            </td>
                                                            <td>
                                                              <span>
                                                                <xsl:text>Serial</xsl:text>
                                                              </span>
                                                              <br/>
                                                              <span>
                                                                <xsl:text>Number</xsl:text>
                                                              </span>
                                                            </td>
                                                          </tr>
                                                        </thead>
                                                        <tbody>
                                                          <xsl:for-each select="PhysicalDrive">
                                                            <tr>
                                                              <td style="text-align:center; " width="100">
                                                                <xsl:for-each select="Type">
                                                                  <xsl:apply-templates/>
                                                                </xsl:for-each>
                                                                <span>
                                                                  <xsl:text> </xsl:text>
                                                                </span>
                                                                <xsl:for-each select="MediaType">
                                                                  <xsl:apply-templates/>
                                                                </xsl:for-each>
                                                              </td>
                                                              <td width="300">
                                                                <xsl:for-each select="Name">
                                                                  <span>
                                                                    <xsl:apply-templates/>
                                                                  </span>
                                                                </xsl:for-each>
                                                              </td>
                                                              <td>
                                                                <xsl:for-each select="Status">
                                                                  <xsl:apply-templates/>
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
                                                                <xsl:for-each select="FirmwareVersion">
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
                                                    </xsl:if>
                                                  </xsl:when>
                                                </xsl:choose>
                                              </xsl:if>
                                              <!-- USB-->
                                              <xsl:if test="(@Type=&quot;USB&quot;)">
                                                <xsl:choose>
                                                  <xsl:when test="@Type=&quot;USB&quot;">
                                                    <xsl:for-each select="Ports">
                                                      <xsl:for-each select="Port">
                                                        <xsl:if test="count(  PhysicalDrive  )">
                                                          <table border="1" cellpadding="2" cellspacing="0" width="100%">
                                                            <thead>
                                                              <tr>
                                                                <th style="text-align:center; " width="100">
                                                                  <span>
                                                                    <xsl:text>Type</xsl:text>
                                                                  </span>
                                                                </th>
                                                                <th width="250">
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
                                                                    <xsl:text>Size</xsl:text>
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
                                                                    <xsl:text>Serial</xsl:text>
                                                                  </span>
                                                                  <br/>
                                                                  <span>
                                                                    <xsl:text>Number</xsl:text>
                                                                  </span>
                                                                </th>
                                                                <th style="text-align:center; ">
                                                                  <span>
                                                                    <xsl:text>Rated Endurance</xsl:text>
                                                                  </span>
                                                                  <br/>
                                                                  <span>
                                                                    <xsl:text>Percent</xsl:text>
                                                                  </span>
                                                                </th>
                                                              </tr>
                                                            </thead>
                                                            <tbody>
                                                              <xsl:for-each select="PhysicalDrive">
                                                                <tr>
                                                                  <td style="text-align:center; " width="100">
                                                                    <xsl:for-each select="Type">
                                                                      <xsl:apply-templates/>
                                                                    </xsl:for-each>
                                                                    <span>
                                                                      <xsl:text> </xsl:text>
                                                                    </span>
                                                                    <xsl:for-each select="MediaType">
                                                                      <xsl:apply-templates/>
                                                                    </xsl:for-each>
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
                                                                    <xsl:for-each select="PhysicalSize">
                                                                      <xsl:apply-templates/>
                                                                    </xsl:for-each>
                                                                    <span>
                                                                      <xsl:text> MByte</xsl:text>
                                                                    </span>
                                                                  </td>
                                                                  <td style="text-align:center; ">
                                                                    <xsl:for-each select="FirmwareVersion">
                                                                      <xsl:apply-templates/>
                                                                    </xsl:for-each>
                                                                  </td>
                                                                  <td>
                                                                    <xsl:for-each select="SerialNumber">
                                                                      <xsl:apply-templates/>
                                                                    </xsl:for-each>
                                                                  </td>
                                                                  <td style="text-align:center; ">
                                                                    <xsl:for-each select="RatedEndurancePercent">
                                                                      <xsl:apply-templates/>
                                                                    </xsl:for-each>
                                                                  </td>
                                                                </tr>
                                                              </xsl:for-each>
                                                            </tbody>
                                                          </table>
                                                        </xsl:if>
                                                        <xsl:if test="not (count(PhysicalDrive))">
                                                          <span>
                                                            <xsl:text>No drive attached</xsl:text>
                                                          </span>
                                                        </xsl:if>
                                                      </xsl:for-each>
                                                    </xsl:for-each>
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
                    </xsl:when>
                  </xsl:choose>
                  <br/>
                </xsl:when>
                <xsl:otherwise>
                  <span>
                    <xsl:text>No RAID Adapters found</xsl:text>
                  </span>
                </xsl:otherwise>
              </xsl:choose>
              
              <!-- Logical Drive Information -->
              <span style="font-weight:bold; ">
                <h3>Logical Drive Information</h3>
              </span>
              <xsl:choose>
                <xsl:when test="Root/Software/ServerView/ServerViewRaid/amEMSV/System/Adapter/LogicalDrive">
                  <table border="1" cellpadding="2" cellspacing="0">
                    <thead>
                      <tr>
                        <th>
                          <span>
                            <xsl:text>Logical Drive</xsl:text>
                          </span>
                          <br/>
                          <span>
                            <xsl:text>Number</xsl:text>
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
                        <th style="text-align:center; ">
                          <span>
                            <xsl:text>Stripe Size</xsl:text>
                          </span>
                        </th>
                        <th>
                          <span>
                            <xsl:text>Activity</xsl:text>
                          </span>
                        </th>
                        <th>
                          <span>
                            <xsl:text>Init</xsl:text>
                          </span>
                          <br/>
                          <span>
                            <xsl:text>State</xsl:text>
                          </span>
                          <br/>
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
                            <xsl:text>Access</xsl:text>
                          </span>
                          <br/>
                          <span>
                            <xsl:text>Mode</xsl:text>
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
                                        <td align="center">
                                          <xsl:for-each select="LogDriveNumber">
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
                                        <td style="text-align:center; ">
                                          <xsl:for-each select="Stripesize">
                                            <xsl:apply-templates/>
                                          </xsl:for-each>
                                        </td>
                                        <td align="center">
                                          <xsl:for-each select="Activity">
                                            <xsl:apply-templates/>
                                          </xsl:for-each>
                                        </td>
                                        <td align="center">
                                          <xsl:for-each select="InitState">
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
                                        <td>
                                          <xsl:for-each select="AccessMode">
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
                  <br/>
                </xsl:when>
                <xsl:otherwise>
                  <span>
                    <xsl:text>No logical drives configured!</xsl:text>
                  </span>
                </xsl:otherwise>
              </xsl:choose>
            </xsl:if>
          </xsl:when>
        </xsl:choose>
      </body>
    </html>
  </xsl:template>
  
  <!-- Get serial number information (isblade:0 (RX/TX), isblade:1 (BX), isblade:2 (CX)) -->
  <xsl:template name="serial">
    <xsl:param name="isblade" />

    <table border="1" cellpadding="2" cellspacing="0">
      <thead>
        <tr>
          <td>Manufacturer</td>
          <td>Product Name</td>
          <td>Serial Number</td>
        </tr>
      </thead>
      <tbody>
        <xsl:choose>
          <!-- Blade -->
          <xsl:when test="$isblade = 1">
            <tr>
            <xsl:for-each select="/Root">
              <xsl:for-each select="System">
                <xsl:for-each select="IDPROMS">
                  <xsl:for-each select="Class">
                    <xsl:if test="(@Name=&quot;System Board&quot;)">
                      <xsl:for-each select="Instance">
                        <xsl:for-each select="Data">
                          <xsl:for-each select="Decoded">
                            <xsl:if test="String/@ValueName=&quot;System Board Manufacturer&quot;">

                              <td>
                              <span>
                                <xsl:value-of select="String[@ValueID='020A']/text()" />
                              </span>
                              </td>
                            </xsl:if>
                            <xsl:if test="String/@ValueName=&quot;System Board Model&quot;">
                              <td>
                              <span>
                                <xsl:value-of select="String[@ValueID='0208']/text()" />
                              </span>
                              </td>
                            </xsl:if>
                            <xsl:if test="String/@ValueName=&quot;System Board Serial Number&quot;">
                              <td>
                              <span>
                              <xsl:value-of select="String[@ValueID='0200']/text()" />
                              </span>
                              </td>

                            </xsl:if>
                          </xsl:for-each>
                        </xsl:for-each>
                      </xsl:for-each>
                    </xsl:if>
                  </xsl:for-each>
                </xsl:for-each>
              </xsl:for-each>
            </xsl:for-each>
            </tr>
          </xsl:when>
          <!-- CX -->
          <xsl:when test="$isblade = 2">
            <xsl:for-each select="/Root">
              <xsl:for-each select="System">
                <xsl:for-each select="IDPROMS">
                  <xsl:for-each select="Class">
                    <xsl:if test="(@Name=&quot;Product&quot;)">
                      <tr>
                      <xsl:for-each select="Instance">
                        <xsl:for-each select="Data">
                          <xsl:for-each select="Decoded">
                            <xsl:if test="String/@ValueName=&quot;Product Manufacturer&quot;">
                              <td>
                                <span>
                                  <xsl:value-of select="String[@ValueID='060A']/text()" />
                                </span>
                              </td>
                            </xsl:if>
                            <xsl:if test="String/@ValueName=&quot;Product Model&quot;">
                              <td>
                                <span>
                                  <xsl:value-of select="String[@ValueID='0608']/text()" />
                                </span>
                              </td>
                            </xsl:if>
                            <xsl:if test="String/@ValueName=&quot;Product Serial Number&quot;">
                              <td>
                                <span>
                                  <xsl:value-of select="String[@ValueID='0600']/text()" />
                                </span>
                              </td>
                            </xsl:if>
                          </xsl:for-each>
                        </xsl:for-each>
                      </xsl:for-each>
                      </tr>
                    </xsl:if>
                    <xsl:if test="(@Name=&quot;System Board&quot;)">
                      <tr>
                      <xsl:for-each select="Instance">
                        <xsl:for-each select="Data">
                          <xsl:for-each select="Decoded">
                            <xsl:if test="String/@ValueName=&quot;System Board Manufacturer&quot;">
                              <td>
                                <span>
                                  <xsl:value-of select="String[@ValueID='020A']/text()" />
                                </span>
                              </td>
                            </xsl:if>
                            <xsl:if test="String/@ValueName=&quot;System Board Model&quot;">
                              <td>
                                <span>
                                  <xsl:value-of select="String[@ValueID='0208']/text()" />
                                </span>
                              </td>
                            </xsl:if>
                            <xsl:if test="String/@ValueName=&quot;System Board Serial Number&quot;">
                              <td>
                                <span>
                                  <xsl:value-of select="String[@ValueID='0200']/text()" />
                                </span>
                              </td>
                            </xsl:if>
                          </xsl:for-each>
                        </xsl:for-each>
                      </xsl:for-each>
                      </tr>
                    </xsl:if>
                  </xsl:for-each>
                </xsl:for-each>
              </xsl:for-each>
            </xsl:for-each>
          </xsl:when>
          <!-- Non Blade && Non-CX -->
          <xsl:otherwise>
            <tr>
            <xsl:for-each select="/Root">
              <xsl:for-each select="System">
                <xsl:for-each select="IDPROMS">
                  <xsl:for-each select="Class">
                    <xsl:if test="(@Name=&quot;Product&quot;)">
                      <xsl:for-each select="Instance">
                        <xsl:for-each select="Data">
                          <xsl:for-each select="Decoded">
                            <xsl:if test="String/@ValueName=&quot;Product Manufacturer&quot;">
                              <td>
                                <span>
                                  <xsl:value-of select="String[@ValueID='060A']/text()" />
                                </span>
                              </td>
                            </xsl:if>
                            <xsl:if test="String/@ValueName=&quot;Product Model&quot;">
                              <td>
                                <span>
                                  <xsl:value-of select="String[@ValueID='0608']/text()" />
                                </span>
                              </td>
                            </xsl:if>
                            <xsl:if test="String/@ValueName=&quot;Product Serial Number&quot;">
                              <td>
                                <span>
                                  <xsl:value-of select="String[@ValueID='0600']/text()" />
                                </span>
                              </td>
                            </xsl:if>
                          </xsl:for-each>
                        </xsl:for-each>
                      </xsl:for-each>
                    </xsl:if>
                  </xsl:for-each>
                </xsl:for-each>
              </xsl:for-each>
            </xsl:for-each>
            </tr>
          </xsl:otherwise>
        </xsl:choose>
      </tbody>
    </table>
  </xsl:template>
  
</xsl:stylesheet>