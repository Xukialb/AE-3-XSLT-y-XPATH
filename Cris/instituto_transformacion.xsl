<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes"/>

 <xsl:template match="/">

 <instituto>
   <xsl:attribute name="web">
    <xsl:value-of select="//@web"/>
   </xsl:attribute>
   <xsl:attribute name="telefono">
    <xsl:value-of select="ite/telefono"/>
   </xsl:attribute>
  <nombre><xsl:value-of select="//@nombre"/></nombre>
  <empresa>Proeduca</empresa>
  <profesores>  

   <profesor>
    <xsl:attribute name="id">
      <xsl:value-of select="ite/profesores/profesor/id"/>
    </xsl:attribute>
    <nombre>Felix</nombre>
   </profesor>
   <profesor>
     <xsl:attribute name="id">
      <xsl:value-of select="//profesor[2]/id"/>
     </xsl:attribute>
    <nombre>Raul</nombre>
   </profesor>
   <profesor>
     <xsl:attribute name="id">
      <xsl:value-of select="//profesor[3]/id"/>
     </xsl:attribute>
    <nombre>Raquel</nombre>
   </profesor>
   <profesor>
     <xsl:attribute name="id">
      <xsl:value-of select="//profesor[last()]/id"/>
     </xsl:attribute>
    <nombre>Tomas</nombre>
   </profesor>
  </profesores>
  <director>
    <xsl:attribute name="nombre">
      <xsl:value-of select="ite/director/nombre"/>
     </xsl:attribute>
   <despacho>Numero 31, 3 Planta, Edificio A</despacho> 
  </director>
  <jefe_estudios>
     <xsl:attribute name="nombre">
      <xsl:value-of select="ite/jefe_estudios/nombre"/>
     </xsl:attribute>
    <despacho>Numero 27, 2 Planta, Edificio B</despacho>
  </jefe_estudios>
  <ciclos> 
   <ciclo  id="Asir">
      <xsl:attribute name="decretoTitulo">
      <xsl:value-of select="//@año"/>
     </xsl:attribute>
    <nombre>Administracion de Sistemas Informaticos en Red</nombre>
    <grado>Superior</grado>
   </ciclo>
   <ciclo  id="DAW">
      <xsl:attribute name="decretoTitulo">
      <xsl:value-of select="//ciclo[2]/decretoTitulo/@año "/>
     </xsl:attribute>
    <nombre>Desarrollo de Aplicaciones Web</nombre>
    <grado>Superior</grado>
   </ciclo>
   <ciclo  id="DAM">
      <xsl:attribute name="decretoTitulo">
      <xsl:value-of select="//ciclo[last()]/decretoTitulo/@año"/>
     </xsl:attribute>
    <nombre>Desarrollo de Aplicaciones Multiplataforma</nombre>
    <grado>Superior</grado>
   </ciclo>
  </ciclos>
 </instituto>
 </xsl:template>
</xsl:stylesheet>