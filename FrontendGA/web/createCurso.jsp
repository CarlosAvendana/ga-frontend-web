<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Agregar Curso</title>

        <link href="Styles/tablasCss.css" rel="stylesheet" type="text/css"/>
        <link href="Styles/menuCss.css" rel="stylesheet" type="text/css"/>
        <link rel="icon" href="Icons/GA1.ico" type="image/x-icon" />

        <script src="JS/menuScript.js" type="text/javascript"></script>
        <script src="JS/Create/createCarrera.js" type="text/javascript"></script>

    </head>
    <body>
        <jsp:directive.include file="mainMenu.jsp" />

        <div>
            <form action="Service_Crea_Curso" method="POST">
                <table class="rwd-table"> 
                    <tr>
                        <th>
                            Crear Curso
                        </th>
                    </tr>
                    <tr>
                        <th>
                            Codigo de curso:  
                        </th>
                        <td>
                            <input type="text" name="codigoCursoF">
                        </td>
                    </tr>
                    <tr>
                        <th>
                            Nombre:
                        </th>
                        <td>
                            <input type="text" name="nombreCursoF">
                        </td>
                    </tr>

                    <tr>
                        <th>
                            Creditos:
                        </th>
                        <td>
                            <input type="number" name="creditosF">
                        </td>
                    </tr>

                    <tr>
                        <th>
                            Horas Semanales:
                        </th>
                        <td>
                            <input type="number" name="horaSemanalF">
                        </td>
                    </tr>
                    <tr>
                        <th>
                            Año:
                        </th>
                        <td>
                            <input type="number" min="1900" max="2099" step="1" value="2020" name="anioF"/>
                        </td>
                    </tr>
                    <tr>
                        <th>
                            Ciclo:
                        </th>
                        <td>
                            <select name="cicloF">
                                <option value="I">I</option>
                                <option value="II">II</option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <th>
                            Carrera codigo:
                        </th>

                        <td>
                            <select name="codi_carF">
                                <option value="EIF">EIF</option>
                                <option value="MCA">MCA</option>
                                <option value="BIO">BIO</option>
                            </select>
                        </td>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <input type="submit" value="Guardar" align="right">  
                        </td>
                        <td>
                            <input type="reset" value="Cancelar" align="right">  
                        </td>
                    </tr>
                </table>
            </form>
        </div>
    </body>
</html>
