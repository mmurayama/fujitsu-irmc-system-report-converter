<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:output method="html" encoding="UTF-8"/>
  <xsl:template match="/">
    <html>
      <head>
        <title>Emulex OneCommand Manager</title>
        <style type="text/css">
          * {margin:0; background:#f2f2f2; color: #333;}
          body {padding: 5px 10px; font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 90%;}
          table {border: 1px solid #ddd; border-spacing:0; border-collapse: collapse;}
          table th {color: #fff; background: #4caf50; border: 1px solid #ddd;}
          table th, table tr td {padding: 5px;}
          table tr td {background:#fff; color:#333; border: 1px solid #ddd;}
          h2, h3 {margin: 20px 0 4px 0;}
          table.host {border: 0;}
          table.host tr {border: 0;}
          table.host tr td {border: 0; text-align: right; background: #f2f2f2;}
        </style>
      </head>
      <body>
        <xsl:apply-templates/>
      </body>
    </html>
  </xsl:template>

  <xsl:template match="Host">
    <h2>Host Information</h2>
    <table class="host">
      <tr>
        <td>
          <b>Host Name:</b>
        </td>
        <td style="text-align: left;">
          <xsl:value-of select="@Name" />
        </td>
      </tr>
      <xsl:apply-templates select="//HostInformation" />
    </table>
    <xsl:apply-templates select="//Adapter" />
  </xsl:template>

  <xsl:template match="HostInformation">
    <tr>
      <td>
        <b>OS:</b>
      </td>
      <td style="text-align: left;">
        <xsl:value-of select="@OperatingSystem" />
      </td>
    </tr>
    <tr>
      <td>
        <b>IP Address:</b>
      </td>
      <td style="text-align: left;">
        <xsl:value-of select="@IPAddress" />
      </td>
    </tr>
  </xsl:template>

  <xsl:template match="Adapter">
    <xsl:choose>
      <!-- NIC -->
      <xsl:when test="@Name='OCe14102-NX'">
        <h2>
          Adapter (<xsl:value-of select="@Name" />)
        </h2>
        <h3>Adapter Information</h3>
        <table border="1">
          <thead>
            <th>Manufacturer</th>
            <th>Model</th>
            <th>Description</th>
            <th>Serial Number</th>
            <th>Hardware Version</th>
            <th>Firmware</th>
          </thead>
          <tbody>
            <tr>
              <td>
                <xsl:value-of select="AdapterInformation/@Manufacturer" />
              </td>
              <td>
                <xsl:value-of select="AdapterInformation/@Model" />
              </td>
              <td>
                <xsl:value-of select="AdapterInformation/@ModelDescription" />
              </td>
              <td>
                <xsl:value-of select="AdapterInformation/@SerialNumber" />
              </td>
              <td>
                <xsl:value-of select="AdapterInformation/@HardwareVersion" />
              </td>
              <td>
                <xsl:value-of select="Firmware/@ActiveFirmwareVersion" />
              </td>
            </tr>
          </tbody>
        </table>
        <h3>Port Information</h3>
        <table border="1">
          <thead>
            <th>MAC Address</th>
            <th>VID</th>
            <th>DID</th>
            <th>SVID</th>
            <th>SSID</th>
            <th>Driver Name</th>
            <th>Driver Version</th>
            <th>Interface Name</th>
          </thead>
          <tbody>
            <xsl:for-each select="Port">
              <tr>
                <td>
                  <xsl:value-of select="NICAttrib/@MACAddress" />
                </td>
                <td>
                  <xsl:value-of select="NICAttrib/@VendorId" />
                </td>
                <td>
                  <xsl:value-of select="NICAttrib/@DeviceId" />
                </td>
                <td>
                  <xsl:value-of select="NICAttrib/@SubsystemVendorId" />
                </td>
                <td>
                  <xsl:value-of select="NICAttrib/@SubsystemId" />
                </td>
                <td>
                  <xsl:value-of select="NICAttrib/@DriverName" />
                </td>
                <td>
                  <xsl:value-of select="NICAttrib/@DriverVersion" />
                </td>
                <td>
                  <xsl:value-of select="NICAttrib/@InterfaceName" />
                </td>
              </tr>
            </xsl:for-each>
          </tbody>
        </table>
      </xsl:when>
      <!-- CNA -->
      <xsl:when test="(@Name='OCl11102-LOM') or (@Name='OCl14000-LOM') or (@Name='OCe14102-U')">
        <h2>
          Adapter (<xsl:value-of select="@Name" />)
        </h2>
        <h3>Adapter Information</h3>
        <table border="1">
          <thead>
            <th>Manufacturer</th>
            <th>Model</th>
            <th>Description</th>
            <th>Serial Number</th>
            <th>Hardware Version</th>
            <th>Firmware</th>
          </thead>
          <tbody>
            <tr>
              <td>
                <xsl:value-of select="AdapterInformation/@Manufacturer" />
              </td>
              <td>
                <xsl:value-of select="AdapterInformation/@Model" />
              </td>
              <td>
                <xsl:value-of select="AdapterInformation/@ModelDescription" />
              </td>
              <td>
                <xsl:value-of select="AdapterInformation/@SerialNumber" />
              </td>
              <td>
                <xsl:value-of select="AdapterInformation/@HardwareVersion" />
              </td>
              <td>
                <xsl:value-of select="Firmware/@ActiveFirmwareVersion" />
              </td>
            </tr>
          </tbody>
        </table>
        <h3>Port Information</h3>
        <table border="1">
          <thead>
            <th>MAC Address</th>
            <th>VID</th>
            <th>DID</th>
            <th>SVID</th>
            <th>SSID</th>
            <th>Driver Name</th>
            <th>Driver Version</th>
            <th>Interface Name</th>
          </thead>
          <tbody>
            <xsl:for-each select="Port">
              <tr>
                <td>
                  <xsl:value-of select="NICAttrib/@MACAddress" />
                </td>
                <td>
                  <xsl:value-of select="NICAttrib/@VendorId" />
                </td>
                <td>
                  <xsl:value-of select="NICAttrib/@DeviceId" />
                </td>
                <td>
                  <xsl:value-of select="NICAttrib/@SubsystemVendorId" />
                </td>
                <td>
                  <xsl:value-of select="NICAttrib/@SubsystemId" />
                </td>
                <td>
                  <xsl:value-of select="NICAttrib/@DriverName" />
                </td>
                <td>
                  <xsl:value-of select="NICAttrib/@DriverVersion" />
                </td>
                <td>
                  <xsl:value-of select="NICAttrib/@InterfaceName" />
                </td>
              </tr>
            </xsl:for-each>
          </tbody>
        </table>
      </xsl:when>
      <!-- FC HBA -->
      <xsl:otherwise>
        <h2>
          Adapter (<xsl:value-of select="@Name" />)
        </h2>
        <h3>Adapter Information</h3>
        <table border="1">
          <thead>
            <th>Manufacturer</th>
            <th>Model</th>
            <th>Description</th>
            <th>Serial Number</th>
            <th>Hardware Version</th>
          </thead>
          <tbody>
            <tr>
              <td>
                <xsl:value-of select="AdapterInformation/@Manufacturer" />
              </td>
              <td>
                <xsl:value-of select="AdapterInformation/@Model" />
              </td>
              <td>
                <xsl:value-of select="AdapterInformation/@ModelDescription" />
              </td>
              <td>
                <xsl:value-of select="AdapterInformation/@SerialNumber" />
              </td>
              <td>
                <xsl:value-of select="AdapterInformation/@HardwareVersion" />
              </td>
            </tr>
          </tbody>
        </table>
        <h3>Port Information</h3>
        <table border="1">
          <thead>
            <th>Port WWN</th>
            <th>Node WWN</th>
            <th>Firmware Version</th>
            <th>Boot Version</th>
            <th>Driver Name</th>
            <th>Driver Version</th>
            <th>Link Status</th>
            <th>Link Speed</th>
            <th>Target</th>
          </thead>
          <tbody>
            <xsl:for-each select="Port">
              <tr>
                <td>
                  <xsl:value-of select="Attributes/@PortWWN" />
                </td>
                <td>
                  <xsl:value-of select="Attributes/@NodeWWN" />
                </td>
                <td>
                  <xsl:value-of select="Attributes/@FirmwareVersion" />
                </td>
                <td>
                  <xsl:value-of select="Attributes/@BootVersion" />
                </td>
                <td>
                  <xsl:value-of select="Attributes/@DriverName" />
                </td>
                <td>
                  <xsl:value-of select="Attributes/@DriverVersion" />
                </td>
                <td>
                  <xsl:value-of select="Status/@LinkStatus" />
                </td>
                <td>
                  <xsl:value-of select="Status/@LinkSpeed" />
                </td>
                <td style="padding:0;">
                  <table style="padding:0;">
                    <th style="padding:0; color: #000; background: #f2f2f2;">Target Port WWN</th>
                    <th style="padding:0; color:#000; background:#f2f2f2;">LUN</th>
                    <xsl:for-each select="Targets/TargetId">
                      <tr>
                        <td>
                          <xsl:value-of select="@PortWWN" />
                        </td>
                        <td style="padding:0; margin:0;">
                          <table style="border=1; border-collapse: collapse; margin:0; padding:0;">
                            <xsl:for-each select="LUN">
                              <tr>
                                <td>
                                  <xsl:value-of select="@ScsiOsLun"/>
                                </td>
                                <td>
                                  <xsl:value-of select="@Capacity"/>
                                </td>
                                <td>
                                  <xsl:value-of select="@VendorName"/>
                                  <xsl:value-of select="@ProductName"/>
                                </td>
                              </tr>
                            </xsl:for-each>
                          </table>
                        </td>
                      </tr>
                    </xsl:for-each>
                  </table>
                </td>
              </tr>
            </xsl:for-each>
          </tbody>
        </table>
      </xsl:otherwise>
    </xsl:choose>

  </xsl:template>

  <xsl:template match="NICAttrib">
    <h3>Port</h3>
    MAC: <xsl:value-of select="@MACAddress" /><br/>
    Driver: <xsl:value-of select="@DriverName" /><br/>
    Driver Version: <xsl:value-of select="@DriverVersion" /><br/>
  </xsl:template>

</xsl:stylesheet>
