<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:output method="html" encoding="UTF-8" indent="yes"/>

  <xsl:template match="/catalogo">
    <html lang="es">
      <head>
        <meta charset="UTF-8"/>
        <title>Catálogo (XML) - Infosmartphones</title>
        <link rel="stylesheet" type="text/css" href="css/infosmartphones.css"/>
      </head>

      <body>
        <header class="logo-header">
          <a href="https://josete84.github.io/infosmartphones">
            <img src="imagenes/logo2.png" alt="logo de infosmartphones" class="logo-img"/>
          </a>
          <div class="logo-texto">
            <h1>INFOSMARTPHONES</h1>
            <p>Toda la información sobre los Smartphones más actuales</p>
          </div>
        </header>

        <nav>
          <ul id="menu-completo">
            <li class="menu-item"><a href="https://josete84.github.io/infosmartphones">INICIO</a></li>
            <li class="menu-item"><a href="contacto.html">Contáctanos</a></li>
            <li class="menu-item"><a href="registro.html">Regístrate!</a></li>
            <li class="menu-item"><a href="smartphones.xml" target="_blank" rel="noopener">XML</a></li>
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
              <h3>CATÁLOGO (TABLA DESDE XML)</h3>

              <table style="border-collapse: collapse; width: 95%; background: #f7f7f7;">
                <tr style="background:#d3d3d3;">
                  <th style="border:1px solid #000; padding:10px;">Modelo</th>
                  <th style="border:1px solid #000; padding:10px;">Imagen</th>
                  <th style="border:1px solid #000; padding:10px;">Descripción</th>
                  <th style="border:1px solid #000; padding:10px;">Enlace</th>
                </tr>

                <xsl:for-each select="smartphone">
                  <tr>
                    <td style="border:1px solid #000; padding:10px;">
                      <xsl:value-of select="titulo"/>
                    </td>

                    <td style="border:1px solid #000; padding:10px; text-align:center;">
                      <img src="{imagen}" alt="{alt}" style="max-width:180px; height:auto;"/>
                    </td>

                    <td style="border:1px solid #000; padding:10px;">
                      <xsl:for-each select="descripcion">
                        <div><xsl:value-of select="."/></div>
                      </xsl:for-each>
                    </td>

                    <td style="border:1px solid #000; padding:10px;">
                      <a href="{enlace}">Ver ficha</a>
                    </td>
                  </tr>
                </xsl:for-each>
              </table>

            </div>
          </div>
        </section>

        <footer>
          <p>Información de contacto: <a href="mailto:correodeprueba@huu.com">ADMIN</a></p>
        </footer>
      </body>
    </html>
  </xsl:template>

</xsl:stylesheet>