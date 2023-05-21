<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

 <xsl:template match="/">

     <html>
      <head>      
          <title>Instituto Tecnologico Edix</title>
      </head>

      <body>

       <h1><xsl:value-of select="//@nombre"/></h1>

        <h2> Contacta con nosotros.</h2>

         <dl>Empresa</dl>
          <dd> <xsl:value-of select="ite/empresa/text()"/></dd>
         <dl>Telefono</dl>
          <dd><xsl:value-of select="ite/telefono/text()" /></dd>
         <dl>Web</dl>
          <dd><a href="{//@web}"><xsl:value-of select="//@web"/></a></dd>
         <dl>Director</dl>
          <dd><xsl:value-of select="ite/director/nombre/text()"/></dd>
          <dd><xsl:value-of select="ite/director/despacho/text()"/></dd>
          <dl>Jefe de Estudios</dl>
          <dd><xsl:value-of select="ite/jefe_estudios/nombre/text()"/></dd>
          <dd><xsl:value-of select="ite/jefe_estudios/despacho/text()"/></dd>

        <h2>Cuadro didactico</h2>
        <table border="1" cellspacing="1px" cellpadding="10px">
         <thead> 
          <tr>
           <th> ID</th>
           <th> Nombre</th>
          </tr>
         </thead>
         <tbody>
          <xsl:for-each select="ite/profesores/profesor">
           <tr>
           <td><xsl:value-of select="id"/></td>
           <td><xsl:value-of select="nombre"/></td>
           </tr>
          </xsl:for-each>
         </tbody>
        </table>

        <h2> Ciclos formativos.</h2>
        <h5>Accede para mas informacion :<a href="{//@web}"><xsl:value-of select="//@web"/></a></h5>

        <table border="1" cellspacing="1px" cellpadding="10px">
         <thead> 
          <tr>
           <th> Ciclo</th>
           <th> Nombre</th>
           <th> Grado</th>
           <th> DecretoTItulo</th>
          </tr>
         </thead>
          <tbody>
           <xsl:for-each select="ite/ciclos/ciclo">
            <tr>
             <td><xsl:value-of select="//@id"/></td>
             <td><xsl:value-of select="nombre"/></td>
             <td><xsl:value-of select="grado"/></td>
             <td><xsl:value-of select="//@año"/></td>
            </tr>
           </xsl:for-each>
          </tbody>
         </table>

         <h2>Formulario</h2>

         <form action="procesarPeticion.jsp"  metod="get">
          <fielset>
           <legend>Dejanos tus datos aqui.</legend>
            <label for="nombre" >Nombre</label><br/>
             <input  id="nombre" type="text" name="nombre" placeholder="Escribe tu nombre" /><br/>
            <label for="apellido" >Apellido</label><br/>
              <input  id="apellido" type="text" name="apellido" placeholder=" Escribe apellido " /><br/>
            <label for="edad" >Edad</label><br/>
              <input  id="edad" type="text" name="edad" placeholder=" Escribe edad" /><br/>
             <label for="telefono" >Telefono</label><br/>
              <input  id="telefono" type="text" name="telefono" placeholder="Escribe numero telefono" /><br/>
            <label for="email" >Email</label><br/>
             <input  id="email" type="email" name="email" placeholder=" @email " /><br/>
              <label for="pass" >Contraseña</label><br/>
             <input  id="pass" type="" name="pass" placeholder=" Contraseña " /><br/>
            <label for="observaciones">Observaciones</label><br/>
             <textarea id="observaciones" name="observaciones" style="resize :none" rows="5" cols="19" ></textarea><br/>
             <label for="terminos">Acceptar los terminos de uso</label>
              <input id="terminos" name="terminos" type="checkbox"></input><br/>
              <input type="submit" value="Enviar"></input>
              <input type="reset" value="Limpiar formulario"></input>
          </fielset>
         </form>
    </body>
   </html>
  </xsl:template>
 </xsl:stylesheet>