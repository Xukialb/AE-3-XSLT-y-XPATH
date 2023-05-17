<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    
    <xsl:template match="/">
        <html>
            <head>
                <title>ite</title>
                <link rel="stylesheet" href="estilos.css"/>
            </head>

            <body>
                <header>
                    <h1><xsl:value-of select="ite/@nombre"/></h1>  
                </header>
                                
                <a>Empresa: <xsl:value-of select="ite/empresa"/></a><br/>
                <a>Teléfono: <xsl:value-of select="ite/telefono"/></a><br/>
                <a href="https://www.grupoproeduca.com/">Página web: Edix</a><br/>
                <a>Profesores:</a><br/>
                
                <table>
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>Nombre</th>
                        </tr>
                    </thead> 

                    <tbody><xsl:for-each select="ite/profesores/profesor"/>               
                        <tr> 
                            <td><xsl:value-of select="id"/></td>
                            <td><xsl:value-of select="nombre"/></td>                       
                        </tr> 
                    </tbody>                   
                </table>

                <p>Director:<xsl:value-of select="ite/director/nombre"/></p>
                    <ul type="disc">
                        <li>Despacho: <xsl:value-of select="ite/director/despacho"/></li>
                    </ul>
                <p>Jefe de estudios: <xsl:value-of select="ite/jefe_estudios/nombre"/></p>
                    <ul type="disc">
                        <li>Despacho: <xsl:value-of select="ite/jefe_estudios/despacho"/></li>
                    </ul>                        
                
                <h3>Ciclos formativos</h3>
                    <table>
                        <thead>
                            <tr>
                                <th>Nombre</th>
                                <th>ID</th>
                                <th>Grado</th>
                                <th>Decreto</th>
                            </tr>                       
                        </thead>
                    
                        <tbody><xsl:for-each select="ite/ciclos/ciclo"/>
                            <tr>
                                <td><xsl:value-of select="nombre"/></td>
                                <td><a href="https://www.edix.com/es/fp/"><xsl:value-of select="@ide"/></a></td>
                                <td><xsl:value-of select="grado"/></td>
                                <td><xsl:value-of select="decretoTitulo/@año"/></td>
                            </tr> 
                        </tbody>                   
                    </table>

            
                <h3>Formulario de contacto</h3>
                    <form action="procesarPeticion.jsp" method="post"></form>
                        <fieldset >
   
                            <legend>Datos personales:</legend>
                                <label for="nombre"> Nombre: </label><br/>
                                <input id="nombre" type="text" name="nombre" autofocus="nombre"/><br/>
                                <label for="apellidos">Apellidos</label><br/>
                                <input id="apellidos" type="text" name="apellidos"/><br/>
                                <label for="teléfono">Teléfono</label><br/>
                                <input id="teléfono" type="text" name="teléfono"/><br/>
                                <label for="email">Email</label><br/>
                                <input id="email" type="text" name="email"/><br/>                     
                     
                        </fieldset><br/>
                        <fieldset>
                            <label for="grado">Selecciona el grado de tu interés</label><br/>
                                <ul type="square">
                                    <li><input type="checkbox" name="grado" value="A"/>ASIR<br/></li>
                                    <li><input type="checkbox" name="grado" value="W"/>DAW<br/></li>
                                    <li><input type="checkbox" name="grado" value="M"/>DAM<br/></li>
                                </ul>  
                        </fieldset><br/>
                        <fieldset>
                            <label>Dejanos tu comentario</label>
                            <input size="100px"></input>
                            <input type="submit" value="Enviar"/>                        
                        </fieldset>                        
                   
            </body>  
        </html>    
    
    </xsl:template>
</xsl:stylesheet>