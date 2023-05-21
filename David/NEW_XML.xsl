<?xml version="1.0" encoding="UTF-8"?>


<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes"/>

<xsl:template match="/">
<ite nombre="Instituto Tecnológico Edix" web="https://institutotecnologico.edix.com" >
    <empresa>
       <nombre> <xsl:value-of select="ite/empresa"/></nombre>
       <telefono> <xsl:value-of select="ite/telefono"/></telefono>
    </empresa>

    <cargo>
        <profesores>
            
                <profesor id="1">
                    <nombre> <xsl:value-of select="ite/profesores/profesor[1]/nombre"/></nombre>
                </profesor>

                <profesor id="2">
                    <nombre> <xsl:value-of select="ite/profesores/profesor[2]/nombre"/></nombre>
                </profesor>

                <profesor id="3">
                    <nombre> <xsl:value-of select="ite/profesores/profesor[3]/nombre"/></nombre>
                </profesor>

                <profesor id="4">
                    <nombre> <xsl:value-of select="ite/profesores/profesor[4]/nombre"/></nombre>
                </profesor>

        </profesores>

        <directores>

            <director>
                <nombre> <xsl:value-of select="ite/director/nombre"/></nombre>
                <despacho><xsl:value-of select="ite/director/despacho"/></despacho>
            </director>

        </directores>

        <jefes_estudios>

            <jefe_estudios>
                <nombre><xsl:value-of select="ite/jefe_estudios/nombre"/></nombre>
                <despacho><xsl:value-of select="ite/jefe_estudios/despacho"/></despacho>
            </jefe_estudios>
            
        </jefes_estudios>

    </cargo>    

    <ciclos>
        <ciclo id="ASIR"> 
            <nombre><xsl:value-of select="ite/ciclos/ciclo[1]/nombre"/></nombre>
            <grado><xsl:value-of select="ite/ciclos/ciclo[1]/grado"/> </grado> 
            <decretoTitulo><xsl:value-of select="ite/ciclos/ciclo[1]/decretoTitulo/@año"/></decretoTitulo>
        </ciclo>

          <ciclo id="DAW"> 
            <nombre><xsl:value-of select="ite/ciclos/ciclo[2]/nombre"/></nombre>
            <grado><xsl:value-of select="ite/ciclos/ciclo[2]/grado"/></grado>
            <decretoTitulo><xsl:value-of select="ite/ciclos/ciclo[2]/decretoTitulo/@año"/></decretoTitulo>
        </ciclo>

          <ciclo id="DAM"> 
            <nombre><xsl:value-of select="ite/ciclos/ciclo[3]/nombre"/></nombre>
            <grado><xsl:value-of select="ite/ciclos/ciclo[3]/grado"/></grado>
            <decretoTitulo><xsl:value-of select="ite/ciclos/ciclo[3]/decretoTitulo/@año"/></decretoTitulo>
        </ciclo>
    </ciclos>

    
</ite>    



</xsl:template>

</xsl:stylesheet>