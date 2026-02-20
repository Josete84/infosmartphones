<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html" encoding="UTF-8" indent="yes"/>
  <xsl:template match="/catalogo">
    <html lang="es">
      <head>
        <meta charset="UTF-8"/>
        <title>Catálogo (XML) - Infosmartphones</title>
        <link rel="stylesheet" type="text/css" href="css/infosmartphones.css" />
        <link rel="shortcut icon" type="image/x-icon" href="imagenes/infosmartphones.ico"/>
      </head>
      <body>
        <div id="fechaHora"></div>
        <script src="js/hora.js"></script>
        <header class="logo-header">
          <a href="https://josete84.github.io/infosmartphones">
            <img src="imagenes/logo2.png" alt="logo de infosmartphones" class="logo-img"/>
          </a>
          <div class="logo-texto">
            <h1>INFOSMARTPHONES</h1>
            <p>Toda la información sobre los Smartphones más actuales</p>
          </div>
        </header>
        <br/>
        <nav>
          <ul id="menu-completo">
            <li class="menu-item"><a href="https://josete84.github.io/infosmartphones">INICIO</a></li>
            <li class="menu-item"><a href="contacto.html">Contáctanos</a></li>
            <li class="menu-item"><a href="registro.html">Regístrate!</a></li>
            <li class="menu-item"><a href="smartphones.xml">XML</a></li>
            <li class="redes-item"><a href="https://facebook.com" target="_blank" rel="noopener"><img src="imagenes/logoface.png" alt="Facebook" width="20"/></a></li>
            <li class="redes-item"><a href="https://twitter.com" target="_blank" rel="noopener"><img src="imagenes/logox.png" alt="Twitter" width="20"/></a></li>
            <li class="redes-item"><a href="https://instagram.com" target="_blank" rel="noopener"><img src="imagenes/logoinsta.jpg" alt="Instagram" width="20"/></a></li>
          </ul>
        </nav>
        <section id="content1">
          <div id="zona-principal">
            <div id="navBar">
              <h3>MARCAS QUE SEGUIMOS</h3>
              <ul>
                <li><a href="samsung.html">SAMSUNG</a></li>
                <li><a href="xiaomi.html">XIAOMI</a></li>
                <li><a href="motorola.html">MOTOROLA</a></li>
                <li><a href="huawei.html">HUAWEI</a></li>
                <li><a href="apple.html">APPLE</a></li>
              </ul>
            </div>
            <div id="bloque-centro">
              <h3>CATÁLOGO (DESDE XML)</h3>
              <div id="articulos-todos">
                <xsl:for-each select="smartphone">
                  <a class="enlacearticulo">
                    <xsl:attribute name="href">
                      <xsl:value-of select="enlace"/>
                    </xsl:attribute>
                    <div class="articulo-box">
                      <h4><xsl:value-of select="titulo"/></h4>
                      <img>
                        <xsl:attribute name="src"><xsl:value-of select="imagen"/></xsl:attribute>
                        <xsl:attribute name="alt"><xsl:value-of select="alt"/></xsl:attribute>
                        <xsl:attribute name="width"><xsl:value-of select="ancho"/></xsl:attribute>
                      </img>
                      <xsl:for-each select="descripcion">
                        <p><xsl:value-of select="."/></p>
                      </xsl:for-each>
                    </div>
                  </a>
                </xsl:for-each>
              </div>
            </div>
          </div>
        </section>
        <footer>
          <p>Información de contacto: <a href="mailto:correodeprueba@huu.com">ADMIN</a></p>
          <p>
            <a href="https://josete84.github.io/infosmartphones/">Infosmartphones</a> © 2025 by
            <a href="https://creativecommons.org">José Luis Martín</a> está licenciado bajo
            <a href="https://creativecommons.org/licenses/by-nc/4.0/">CC BY-NC 4.0</a>
          </p>
          <p>
            <img src="https://mirrors.creativecommons.org/presskit/icons/cc.svg" alt="imagen creative commons" style="max-width: 1em; max-height: 1em; margin-left: .2em;" />
            <img src="https://mirrors.creativecommons.org/presskit/icons/by.svg" alt="atribución" style="max-width: 1em; max-height: 1em; margin-left: .2em;" />
            <img src="https://mirrors.creativecommons.org/presskit/icons/nc.svg" alt="uso no comercial" style="max-width: 1em; max-height: 1em; margin-left: .2em;" />
          </p>
        </footer>
      </body>
    </html>
  </xsl:template>

</xsl:stylesheet>
