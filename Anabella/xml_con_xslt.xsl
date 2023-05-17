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
                
                <table class="t1">
                    <tr>
                        <th>ID</th>
                        <th>Nombre</th>
                    </tr>
                                           
                    <tr> <xsl:for-each select="ite/profesores/profesor"/>
                        <td><xsl:value-of select="id"/></td>
                        <td><xsl:value-of select="nombre"/></td>                       
                    </tr>                   
                </table>

                <p>Director:</p>
                    <li>Despacho: <xsl:value-of select="ite/director/despacho/nombre"/></li>
                <p>Jefe de estudios: <xsl:value-of select="ite/jefe_estudios/nombre"/></p>
                    <li>Despacho: <xsl:value-of select="ite/jefe_estudios/despacho"/></li>
                
                <h3>Ciclos formativos</h3>
                    <table class="t2">
                    <tr>
                        <th>Nombre</th>
                        <th>ID</th>
                        <th>Grado</th>
                        <th>Decreto</th>
                        <th></th>
                    </tr>
                    
                    <tr>
                        <td><xsl:value-of select="ite/ciclos/ciclo/nombre"/></td>
                        <td><a href="https://www.edix.com/es/fp/"><xsl:value-of select="ite/ciclos/ciclo/@ide"/></a></td>
                        <td><xsl:value-of select="ite/ciclos/ciclo/grado"/></td>
                        <td><xsl:value-of select="ite/ciclos/ciclo/decreto"/></td>
                    </tr>                    
                    </table>

            <div class="form">
                <h3>Formulario de contacto</h3>
                    <form action="procesarPeticion.jsp" method="post"></form>
                        <fieldset>
   
                            <legend>Datos personales:</legend>
                                <label for="nombre"> Nombre: </label>
                                <input id="nombre" type="text" name="nombre" autofocus="nombre"/>
                                <label for="apellidos">Apellidos</label>
                                <input id="apellidos" type="text" name="apellidos"/>
                                <label for="teléfono">Teléfono</label>
                                <input id="teléfono" type="text" name="teléfono"/>
                                <label for="email"></label>
                                <input id="email" type="text" name="email"/>                     
                     
                        </fieldset>
                        <fieldset>
                            <label for="grado">Selecciona el grado de tu interés</label><br/>
                                <ul type="square">
                                    <li><input type="checkbox" name="grado" value="A"/>ASIR<br/></li>
                                    <li><input type="checkbox" name="grado" value="W"/>DAW<br/></li>
                                    <li><input type="checkbox" name="grado" value="M"/>DAM<br/></li>
                                </ul>                                                      
                            
                        </fieldset>
            
            </div>

            </body>  
        </html>    
    
    </xsl:template>
</xsl:stylesheet>