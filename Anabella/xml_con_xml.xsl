<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes"/>

    <xsl:template match="/">    
        <Proeduca>
            <xsl:attribute name="nombre">
                <xsl:value-of select="ite/@nombre"/>  
            </xsl:attribute>              
            <xsl:attribute name="telefono">
                <xsl:value-of select="ite/telefono"/>
            </xsl:attribute>
            <xsl:attribute name="web">
                <xsl:value-of select="ite/@web"/>
            </xsl:attribute> 
            <claustro>
                <director>
                    <xsl:attribute name="nombre">
                    <xsl:value-of select="ite/director/nombre"/>
                </xsl:attribute>
                <xsl:attribute name="oficina">
                    <xsl:value-of select="ite/director/despacho"/>
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
                     <xsl:for-each select="ite/profesores/profesor"> 
                        <docente>                                         
                            <xsl:attribute name="id">
                                <xsl:value-of select="id"/>
                            </xsl:attribute>
                            <xsl:attribute name="nombre">
                                <xsl:value-of select="nombre"/>
                            </xsl:attribute>                                               
                        </docente>   
                    </xsl:for-each>               
                </profesores>            
            </claustro>
            <formacion>
                 <xsl:for-each select="ite/ciclos/ciclo">
                 <fp> 
                    <xsl:attribute name="nombre">
                        <xsl:value-of select="nombre"/>
                    </xsl:attribute>
                    <xsl:attribute name="grado">
                        <xsl:value-of select="grado"/>
                    </xsl:attribute>       
                    <xsl:attribute name="id">
                        <xsl:value-of select="@id"/>
                    </xsl:attribute>
                    <xsl:attribute name="resolucion">
                        <xsl:value-of select="decretoTitulo/@año"/>
                    </xsl:attribute>
                    
                 </fp>
                 </xsl:for-each>
            </formacion>           
        </Proeduca>
    </xsl:template>
</xsl:stylesheet>