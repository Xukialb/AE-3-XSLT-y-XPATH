<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes"/>

    <xsl:template match="/">

        <edix>

            <xsl:attribute name="empresa">
                <xsl:value-of select="ite/empresa"/>
            </xsl:attribute>

            <xsl:attribute name="telefono">
                <xsl:value-of select="ite/telefono"/>
            </xsl:attribute> 

            <nombre><xsl:value-of select="ite/@nombre"/></nombre>

            <web><xsl:value-of select="ite/@web"/></web>  

            <personal>                               

            <xsl:for-each select="ite/profesores/profesor">

            <profesor>
            
                <xsl:attribute name="id">
                    <xsl:value-of select="id"/>
                </xsl:attribute> 

                <xsl:attribute name="nombre">
                    <xsl:value-of select="nombre"/>
                </xsl:attribute>                            

            </profesor>
            </xsl:for-each>


            <director>

                <xsl:attribute name="nombre">
                    <xsl:value-of select="ite/director/nombre"/>
                </xsl:attribute> 

                <xsl:attribute name="ubicacion">
                    <xsl:value-of select="ite/director/despacho"/>
                </xsl:attribute>                

            </director>

            <jefe_de_estudios>
            
                <xsl:attribute name="nombre">
                    <xsl:value-of select="ite/jefe_estudios/nombre"/>
                </xsl:attribute> 

                <xsl:attribute name="ubicacion">
                    <xsl:value-of select="ite/jefe_estudios/despacho"/>
                </xsl:attribute> 

            </jefe_de_estudios>
            

            </personal>  
        </edix>

    </xsl:template>
</xsl:stylesheet>