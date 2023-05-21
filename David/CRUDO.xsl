<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">


	<xsl:template match="/">
        <html>
            <head>
                <title>Instituto</title>
                    <!-- ENLACE A LA HOJA DE CSS -->
               <link rel="stylesheet" href="css.css"/> 
            </head>
            <body>
               <div class="barra">
                    <div class="img_logo"><img src="edix-logo.png"></img></div>
                    <div class="by_unir"><img  src="https://www.edix.com/es/wp-content/themes/edix/images/modules/edx_logo-edx-white-header.svg"></img></div>
                </div>
            <div class="contenedor">

             
                <div class="bajologo">
                    <p> <xsl:value-of select="/ite/empresa"/>
                         | 
                         <xsl:value-of select="/ite/telefono"/>
                    </p>
                </div>
            <div class="container_cargos">
                    <div class="titulo_cargos">
                            <H1>Contamos con el mejor equipo de profesores en enseñanza digital</H1>
                        </div>
                        <div class="tabla_cargos">
                        
                        <table>
                            
                            <tr>
                                <td><h3>Cargo</h3></td>
                                <td></td>
                                <td><h3>Nombre</h3></td>                               
                            </tr>
                            <tr>
                            <td>PROFESORES</td>
                            <td></td>
                                <td>
                                    <xsl:for-each select="ite/profesores/profesor">
                                        <xsl:value-of select="nombre"/>
                                        <br></br>
                                    </xsl:for-each>
                                </td>
                                
                            </tr>
                            <tr>
                                <td><br></br></td>
                            </tr>
                        
                            <tr>
                                <td>DIRECTOR</td>
                                <td></td>
                                <td><xsl:value-of select="ite/director/nombre"/></td>
                            </tr>
                            <tr>
                                <td>JEFE ESTUDIOS</td>
                                <td></td>
                                <td><xsl:value-of select="ite/jefe_estudios/nombre"/></td>
                            </tr>
                        </table>
                      </div>
                      <div class="img_cargos">
                        <img src="student.jpg"></img>
                      </div>
                </div>      

            <div class="tabla_ciclos">
                <table>
                    <tr><td colspan="3"><h4>CICLOS FORMATIVOS</h4></td></tr>
                    <tr>
                        <td>
                            <p>

                                <a href="https://unirfp.unir.net/ingenieria/fp-grado-asir/"> <xsl:value-of select="ite/ciclos/ciclo/@id"/>  </a>
                            
                            </p>
                            <ul>
                                <li><xsl:value-of select="ite/ciclos/ciclo[1]/nombre"/></li>
                                <li><xsl:value-of select="ite/ciclos/ciclo[1]/grado"/></li>
                                <li> <xsl:value-of select="ite/ciclos/ciclo[1]/decretoTitulo/@año"/></li>
                                
                            </ul>
                        </td>
                        <td>
                            <p>
                               <a href="https://unirfp.unir.net/ingenieria/fp-grado-daw-desarrollo-de-aplicaciones-web/"> <xsl:value-of select="ite/ciclos/ciclo[2]/@id"/> </a> 
                            </p>
                            <ul>
                                <li><xsl:value-of select="ite/ciclos/ciclo[2]/nombre"/></li>
                                <li><xsl:value-of select="ite/ciclos/ciclo[2]/grado"/></li>
                                <li><xsl:value-of select="ite/ciclos/ciclo[2]/decretoTitulo/@año"/></li>
                            </ul>
                        </td>
                        <td>
                        
                            <p>
                                <a href="https://unirfp.unir.net/ingenieria/fp-grado-desarrollo-aplicaciones-multiplataforma-dam/"><xsl:value-of select="ite/ciclos/ciclo[3]/@id"/></a>
                            
                            </p>
                            <ul>
                                <li><xsl:value-of select="ite/ciclos/ciclo[3]/nombre"/></li>
                                <li><xsl:value-of select="ite/ciclos/ciclo[3]/grado"/></li>
                                <li><xsl:value-of select="ite/ciclos/ciclo[3]/decretoTitulo/@año"/></li>
                            </ul>
                        </td>
                    </tr>
                </table>
            </div>

            <div class="container_form">
            <div class="contacto_img"><img src="contacto.jpg"/></div>

            <div class="formulario">
            
                
                    <form action="/enviar-mensaje" method="POST">

                        <h3>Formulario de contacto</h3>

                    <label for="nombre">Nombre:</label><br />
                    <input type="text" id="nombre" name="nombre" /><br />
                    <label for="email">Email:</label><br />
                    <input type="email" id="email" name="email" /><br />
                    
                    
                    <label for="cursos">CURSOS</label><br />
                        <select>
                            <option><xsl:value-of select="ite/ciclos/ciclo[1]/nombre"/></option>
                            <option><xsl:value-of select="ite/ciclos/ciclo[2]/nombre"/></option>
                            <option><xsl:value-of select="ite/ciclos/ciclo[3]/nombre"/></option>
                        </select>
                    <br/>
                    <label for="mensaje">Mensaje:</label><br />
                    <textarea id="mensaje" name="mensaje"></textarea>
                    <br/>
                    <br/>
                    <input type="submit" value="Enviar mensaje" /><br/>
                    </form>

            </div>
            </div>        
        </div>          
                    

            </body>
        </html>    
   	</xsl:template>
</xsl:stylesheet>