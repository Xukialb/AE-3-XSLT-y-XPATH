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
                                
                <a href="https://www.grupoproeduca.com/"><b>Empresa:</b><xsl:value-of select="ite/empresa"/></a><br/><br/>
                <a><b>Teléfono: </b><xsl:value-of select="ite/telefono"/></a><br/><br/>
                <a href="https://www.edix.com/es/"><b>Página web:</b> Edix</a><br/><br/>
                <a><b>Profesores:</b></a><br/><br/>
                
                <table>
                    <thead>
                        <tr>
                            <th><b>ID</b></th>
                            <th><b>Nombre</b></th>
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

                <p>Director:<xsl:value-of select="ite/director/nombre"/></p>
                    <ul type="square">
                        <li>Despacho: <xsl:value-of select="ite/director/despacho"/></li>
                    </ul>
                <p>Jefe de estudios: <xsl:value-of select="ite/jefe_estudios/nombre"/></p>
                    <ul type="square">
                        <li>Despacho: <xsl:value-of select="ite/jefe_estudios/despacho"/></li>
                    </ul>                        
                
                <h3>Ciclos formativos</h3>
                    <table>
                        <thead>
                            <tr>
                                <th><b>Nombre</b></th>
                                <th><b>ID</b></th>
                                <th><b>Grado</b></th>
                                <th><b>Decreto</b></th>
                            </tr>                       
                        </thead>
                    
                        <tbody><xsl:for-each select="ite/ciclos/ciclo">
                            <tr>
                                <td><xsl:value-of select="nombre"/></td> 
                                <td><a href="https://www.edix.com/es/cursos-fp/"><xsl:value-of select="@id"/></a></td>                               
                                <td><xsl:value-of select="grado"/></td>
                                <td><xsl:value-of select="decretoTitulo/@año"/></td>
                            </tr> 
                            </xsl:for-each>
                        </tbody>                   
                    </table>

            
                <h3>Formulario de contacto</h3>
                    <form action="procesarPeticion.jsp" method="post"></form>
                        <fieldset >
   
                            <legend>Datos personales:</legend>
                                
                                <b><label for="nombre"> Nombre: </label></b><br/>
                                <input id="nombre" size="70px" type="text" name="nombre" autofocus="nombre"/><br/>
                               
                                <b><label for="apellidos">Apellidos</label></b><br/>
                                <input id="apellidos" size="70px" type="text" name="apellidos"/><br/>
                                                               
                                <b><label for="teléfono">Teléfono</label></b><br/>
                                <input id="teléfono" size="70px" type="text" name="teléfono"/><br/>

                                <b><label for="email">Email</label></b><br/>
                                <input id="email" size="70px" type="text" name="email"/><br/>                     
                           
                        </fieldset><br/>
                        <fieldset>
                            <b><label for="grado">Selecciona el grado de tu interés</label></b><br/>
                                <ul>
                                    <li><input type="checkbox" name="grado" value="A"/>ASIR<br/></li>
                                    <li><input type="checkbox" name="grado" value="W"/>DAW<br/></li>
                                    <li><input type="checkbox" name="grado" value="M"/>DAM<br/></li>
                                </ul>  
                        </fieldset><br/>
                        <fieldset>
                            <b><label>Dejanos tu comentario</label></b><br/>
                            <input size="70px" style="resize: none"></input><br/>
                            <input type="submit" value="Enviar"/>                        
                        </fieldset>                        
                   
            </body>  
        </html>    
    
    </xsl:template>
</xsl:stylesheet>