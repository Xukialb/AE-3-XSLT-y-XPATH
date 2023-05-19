<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>

        <head>
            <title>ITE</title>
            <link rel="stylesheet" href="css/estilos.css" />        
        </head>

        <body>

        <h1><xsl:value-of select="ite/@nombre"/></h1>

        <a href="https://www.grupoproeduca.com/"><xsl:value-of select="ite/empresa"/></a>
        <br/>
        <br/>
        <a href="https://institutotecnologico.edix.com"><xsl:value-of select="ite/@web"/></a>
        <br/>
        <br/>
        Teléfono de contacto: <xsl:value-of select="ite/telefono"/>
        <br/>
        <h3>Nuestros profesores:</h3>

    		<table border="1">
				<thead>
					<tr>
						<th>Id</th>
						<th>Nombre</th>
					</tr>
				</thead>
				<tbody>
					<xsl:for-each select="ite/profesores/profesor">
						<tr>							
							<td><xsl:value-of select="id"/></td>
							<td><xsl:value-of select="nombre"/></td>
						</tr>
					</xsl:for-each> <!-- Fin de for each de profesor-->
                </tbody>
		    </table>

        <h3>Directora:</h3>
        <ul>
            <li>Nombre: <xsl:value-of select="ite/director/nombre"/></li>
            <li>Despacho: <xsl:value-of select="ite/director/despacho"/></li>
        </ul>

        <h3>Jefe de estudios:</h3>
        <ul>
            <li>Nombre: <xsl:value-of select="ite/jefe_estudios/nombre"/></li>
            <li>Despacho: <xsl:value-of select="ite/jefe_estudios/despacho"/></li>
        </ul>

        <h3>Nuestros grados:</h3>

    		<table border="1">
				<thead>
					<tr>
						<th>Id</th>
						<th>Nombre</th>
						<th>Grado</th>
						<th>Decreto_Titulo</th>
					</tr>
				</thead>
				<tbody>
					<xsl:for-each select="ite/ciclos/ciclo">
						<tr>
							<!-- Con arroba (@) accedemos a los atributos -->
							<td><xsl:value-of select="@id"/></td>
							<td><xsl:value-of select="nombre"/></td>
							<td><xsl:value-of select="grado"/></td>
							<td><xsl:value-of select="decretoTitulo/@año"/></td>
						</tr>
					</xsl:for-each> <!-- Fin de for each de ciclo-->
                </tbody>
		    </table> 

        <h3>Formulario de contacto:</h3>                        
        <form action="procesarPeticion.jsp" method="get"><br/>
            <label for="nombre">Nombre: </label><br/>
            <input id="nombre" type="text" name="nombre"/><br/>
            <label for="apellidos">Apellidos</label><br/>
            <input id="apellidos" size="70px" type="text" name="apellidos"/><br/>        
            <label for="edad">Edad: </label><br/>
            <input id="edad" type="text" name="edad" /><br/>
            <label for="teléfono">Teléfono</label><br/>
            <input id="teléfono" size="70px" type="text" name="teléfono"/><br/>
            <label for="email">Email</label><br/>
            <input id="email" size="70px" type="text" name="email"/><br/>
            <br/>

            <label for="grado">Selecciona el grado de tu interés</label><br/>

            <ul>
                <li><input type="checkbox" name="grado" value="A"/>ASIR<br/></li>
                <li><input type="checkbox" name="grado" value="W"/>DAW<br/></li>
                <li><input type="checkbox" name="grado" value="M"/>DAM<br/></li>
            </ul> 
            
            <br/>
            <label for="observaciones">Observaciones: </label>
            <br />	

            <textarea style="resize: none;" rows="5" cols="80" name="observaciones"></textarea>

            <br/>
            <br/>
            <label for="terminos">¿Acepta los terminos de uso? </label>
            <br/>	
            He leido y acepto los terminos de uso <input type="checkbox" name="terminos" value="Y" />
            <br/>	

            <br/>	
            <input type="submit" value="Enviar datos" />
            <br/>
            <input type="reset" value="Limpiar formulario" />          
        
        </form>

        </body>  
        </html>  
    </xsl:template>
</xsl:stylesheet>
