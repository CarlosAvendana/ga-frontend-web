
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Agregar Carrera</title>

        <link href="Styles/tablasCss.css" rel="stylesheet" type="text/css"/>
        <link href="Styles/menuCss.css" rel="stylesheet" type="text/css"/>
        <link rel="icon" href="Icons/GA1.ico" type="image/x-icon" />

        <script src="JS/menuScript.js" type="text/javascript"></script>
        <script src="JS/Create/createCarrera.js" type="text/javascript"></script>

    </head>
    <body>
        <jsp:directive.include file="mainMenu.jsp" />
        <div>
            <form action="Service_Crea_Carrera" method="post">
                <table class="rwd-table"> 
                    <tr>
                        <th>
                            Agregar Carrera
                        </th>
                    </tr>
                    <tr>
                        <th>
                            Codigo de carrera: 
                        </th>
                        <td>
                            <input type="text" name="codigoF">
                        </td>
                    </tr>
                    <tr>
                        <th>
                            Nombre de carrera: 
                        </th>
                        <td>
                            <input type="text" name="nombreF">
                        </td>
                    </tr>
                    <tr>
                        <th>
                            Titulo de carrera: 
                        </th>
                        <td>
                            <select name="tituloF">
                                <option value="Diplomado" >Diplomado</option>
                                <option value="Bachillerato">Bachillerato</option>
                                <option value="Licenciatura">Licenciatura</option>
                                <option value="Maestria">Maestria</option>
                                <option value="Doctorado">Doctorado</option>
                            </select>
                        </td>
                    </tr>
                    
                </table>
            </form>
        </div>
    </body>
</html>
