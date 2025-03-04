<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xs="http://www.w3.org/2001/XMLSchema" version="2.0">
<xsl:output encoding="UTF-8" method="html" doctype-system="about:legacy-doctype"/>
<xsl:template match="/gestionParque">
<html lang="es">

	<head>
		<link href="./css/estilo.css" rel="stylesheet" type="text/css" />
		<meta charset="utf-8"/>
		<meta name="description" content="Página principal" />
		<title>titulo de la web</title>
	</head>

	<body>
		<header>
			<img src= "./img/logotipo.png" alt= "Reservas" />
			<a href="web/gastrobar.xml">Gastrobar</a>
			<a href="web/atracciones.xml">Atracciones</a>
			<a href="web/eventos.xml">Eventos</a>
		</header>
		
		<main>
			<h1 class="principal">TRABAJANDO CON PLANTILLAS XSLT</h1>
		</main>

		<footer>
			<address>&#169; Desarrollado por info@birt.eus</address>
		</footer>
	</body>
</html>
</xsl:template>
</xsl:stylesheet>