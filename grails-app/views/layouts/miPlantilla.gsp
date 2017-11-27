<%--
  Created by IntelliJ IDEA.
  User: vacax
  Representa la plantilla base del sistema
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title><g:layoutTitle default="Mi titulo por defecto...."/></title>
    %{--tag que sustitute elementos del encabezado...--}%
    <g:layoutHead/>
    %{--${resource(dir: 'js', file: '')}--}%
</head>

<body>
     %{--Igual que la anterior mezcla los valores encontrados con los existentes...--}%
     <g:layoutBody/>

     %{--Otras etiquetas genericas...--}%
</body>
</html>