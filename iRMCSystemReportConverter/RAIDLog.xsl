<?xml version="1.0" encoding="UTF-8"?>

<!--
    Document   : RAIDLog.xsl
    Created on : April 20, 2016, 2:40 PM
    Author     : Masahiro Murayama <mmurayama@outlook.com>
    Description: Stylesheet for RAIDLog XML files.
-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:output method="html"/>

  <xsl:template match="/">
    <html>
      <head>
        <title>ServerView RAID Manager - RAID Log</title>
        <style type="text/css">
          * {margin:0; background:#f2f2f2; color: #333;}
          body {padding: 5px 10px; font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 90%;}
          table {border: 1px solid #ddd; border-spacing:0; border-collapse: collapse;}
          table th {color: #fff; background: #1d3b7b; border 1px solid #ddd;}
          table th, table tr td {padding: 8px;}
          table tr td {background:#fff; color:#333; border: 1px solid #ddd;}
          table tr:nth-child(2n+1) {background: #F7F7F7;}
          h1, h2, h3 {margin: 20px 4px;}
        </style>
      </head>
      <body>
        <h1>ServerView RAID Manager Log</h1>
        <table width="100%">
          <tr>
            <th align="left">Event ID</th>
            <th align="left">Date</th>
            <th align="left">Time</th>
            <th align="left">Severity</th>
            <th align="left">Event Source</th>
            <th align="left">Description</th>
          </tr>
          <xsl:for-each select="EventLog/Event">
            <tr>
              <td><xsl:value-of select="@EventID" /></td>
              <td><xsl:value-of select="@Date" /></td>
              <td><xsl:value-of select="@Time" /></td>
              <xsl:choose>
                 <xsl:when test="@Severity = 'ERROR' ">
                    <td style="color:red; font-weight:bold">
                          <xsl:value-of select="@Severity" />
                    </td>
                 </xsl:when>
                 <xsl:when test="@Severity = 'WARNING' ">
                    <td style="color:orange">
                          <xsl:value-of select="@Severity" />
                        </td>
                      </xsl:when>
                      <xsl:when test="@Severity = 'INFORMATION' ">
                        <td style="color:green">
                          <xsl:value-of select="@Severity" />
                        </td>
                      </xsl:when>
                      <xsl:otherwise>
                        <td>
                          <xsl:value-of select="@Severity" />
                        </td>
                      </xsl:otherwise>
                    </xsl:choose>
                    <td align="left">
                      <xsl:value-of select="@Source" />
                    </td>
                    <td align="left">
                      <xsl:value-of select="@Description" />
                    </td>
                  </tr>
          </xsl:for-each>
        </table>
      </body>
    </html>
  </xsl:template>

</xsl:stylesheet>