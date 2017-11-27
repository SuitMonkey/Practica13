<%--
  Created by IntelliJ IDEA.
  User: vacax
  Date: 10/11/14
  Time: 09:14 AM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    %{--Llamando mi plantilla Base--}%
    <meta name="layout" content="miPlantilla" />
    <title>
        <g:pageProperty name="page.titulo"/>
    </title>
    %{--Cualquier cambio que quiera pasar...--}%
    <g:pageProperty name="page.header"/>
</head>
<body>
<header>
    <g:pageProperty name="page.encabezado"/>
</header>
<section>
    <g:pageProperty name="page.articulos"/>
</section>
<aside>
    <g:pageProperty name="page.menuContenido"/>
</aside>
<footer>
    <g:pageProperty name="page.piePagina"/>
</footer>
</body>
</html>