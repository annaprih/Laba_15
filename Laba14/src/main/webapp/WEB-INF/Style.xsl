<?xml version = "1.0"?>
<xsl:stylesheet xmlns:xsl = "http://www.w3.org/1999/XSL/Transform"
                version = "1.0">

    <xsl:output method = "html" indent = "yes"/>
    <xsl:template match = "/">
        <html>
            <body>
                <xsl:apply-templates/>
            </body>
        </html>
    </xsl:template>

    <xsl:template match = "cats">
        <xsl:for-each select = "cat">
                <tr>
                    <td>
                        <i><xsl:value-of select = "name"/></i>
                    </td>

                    <td>
                        <xsl:value-of select = "age"/>
                    </td>

                    <td>
                        <xsl:value-of select = "color"/>
                    </td>
                </tr>
            </xsl:for-each>
    </xsl:template>

</xsl:stylesheet>