<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xs="http://www.w3.org/2001/XMLSchema" version="2.0">
<xsl:output encoding="UTF-8" method="html" doctype-system="about:legacy-doctype"/>
<xsl:variable name="urtea" select="'2024'" />
<xsl:template match="/gestionParque">
<html lang="es">

	<head>
		<link href="../css/estilo.css" rel="stylesheet" type="text/css" />
		<meta charset="utf-8"/>
		<meta name="description" content="Página principal" />
		<title>titulo de la web</title>
	</head>

	<body>
		<header>
			<img src= "../img/logotipo.png" alt= "Reservas" />
			<a href="gastrobar.xml">Gastrobar</a>
			<a href="atracciones.xml">Atracciones</a>
			<a href="eventos.xml">Eventos</a>
		</header>
		
		<main>
			<h1>Eventos del <xsl:value-of select="$urtea"/></h1>
			<xsl:apply-templates select="eventos/evento">
			<xsl:sort select="fechaHora" order="descending" data-type="date" />
			</xsl:apply-templates>
		</main>

		<footer>
			<address>&#169; Desarrollado por info@birt.eus</address>
		</footer>
	</body>
</html>
</xsl:template>
<xsl:template match="evento">
		<xsl:if test="substring(fechaHora, 1, 4) = $urtea">
			<article class="eventos">
			<h4><xsl:value-of select="descripcion"/> - <xsl:value-of select="count(comentarios/comentario)"/> Comentarios</h4>
			<ul>
				<xsl:apply-templates select="comentarios/comentario" />
			</ul>
		</article>
		</xsl:if>
</xsl:template>
<xsl:template match="comentario">
	<li>
		<xsl:value-of select="."/>
	</li>	
</xsl:template>
</xsl:stylesheet>