<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes"/>

    <xsl:template match="/">    
        <Proeduca>
            <xsl:attribute name="nombre">
                <xsl:value-of select="ite/@nombre"/>  
            </xsl:attribute>              
            <xsl:attribute name="teléfono">
                <xsl:value-of select="ite/telefono"/>
            </xsl:attribute>
            <xsl:attribute name="web">
                <xsl:value-of select="ite/@web"/>
            </xsl:attribute> 
            <claustro>
                <director>
                    <xsl:attribute name="nombre">
                    <xsl:value-of select="ite/directornombre"/>
                </xsl:attribute>
                <xsl:attribute name="oficina">
                    <xsl:value-of select="ite/directordespacho"/>
                </xsl:attribute>
                </director>
                <jefe_estudios>
                    <xsl:attribute name="nombre">
                        <xsl:value-of select="ite/jefe_estudios/nombre"/>
                    </xsl:attribute>
                    <xsl:attribute name="oficina">
                        <xsl:value-of select="ite/jefe_estudios/despacho"/>
                    </xsl:attribute>
                </jefe_estudios>
                <profesores>
                    <xsl:for-each select="ite/profesores"/>
                        <docente>
                            <xsl:attribute name="id">
                                <xsl:value-of select="ite/profesores/profesor/id"/>
                            </xsl:attribute>
                            <xsl:attribute name="nombre">
                                <xsl:value-of select="ite/profesores/profesor/nombre"/>
                            </xsl:attribute>
                        </docente>                    
                </profesores>            
            </claustro>
            <formacion>
                 <xsl:for-each select="ite/ciclos/ciclo"/>
                 <fp>                    
                    <xsl:attribute name="id">
                        <xsl:value-of select="ite/ciclos/ciclo/@id"/>
                    </xsl:attribute>
                    <xsl:attribute name="resolución">
                        <xsl:value-of select="ite/ciclos/ciclo/decretoTitulo/@año"/>
                    </xsl:attribute>
                    <xsl:attribute name="grado">
                        <xsl:value-of select="ite/ciclos/ciclo/grado"/>
                    </xsl:attribute>
                    <nombre><xsl:value-of select="ite/ciclos/ciclo/nombre"/></nombre>
                 </fp>
            </formacion>           
        </Proeduca>
    </xsl:template>
</xsl:stylesheet>