<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

    <head>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Carreras</title>

        <link href="Styles/tablasCss.css" rel="stylesheet" type="text/css"/>
        <link href="Styles/menuCss.css" rel="stylesheet" type="text/css"/>
        <link rel="icon" href="Icons/GA1.ico" type="image/x-icon" />


        <script src="JS/carreraTabla.js" type="text/javascript"></script>

    </head>

    <body onload="init();">
        <div id="wrapper">
            <jsp:directive.include file="mainMenu.jsp" />
            <div id="Sec_Busca_Carrera"></div>
            <div id="seccion_tabla_carrera"></div>
            
        </div>
    </body>
</html>
