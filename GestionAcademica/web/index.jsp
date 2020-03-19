<%-- 
    Document   : index
    Created on : Mar 16, 2020, 10:33:37 PM
    Author     : carlos
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Log In</title>
        <link rel="stylesheet" type="text/css" href="bootstrap/bootstrap.min.css"/>
        <script src="bootstrap/bootstrap.min.js"></script>
        <script src="bootstrap/jquery.min.js"></script>
        <script src="bootstrap/popper.min.js"></script>
    </head>
    <body>
        <div id="cuadro">
            <div id="cabeza">Iniciar Sesion Gestion Academica</div>
            <div id="cuerpo">
                <form class="">
                    <div class="form-group row">
                        <label for="inputEmail3" class="col-sm-2 col-form-label">Usuario</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="inputEmail3">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="inputPassword3" class="col-sm-2 col-form-label">Clave</label>
                        <div class="col-sm-10">
                            <input type="password" class="form-control" id="inputPassword3">
                        </div>
                    </div>
                    <div class="form-group row">
                        <div class="col-sm-10">
                            <button type="submit" class="btn btn-dark float-right m-2">Iniciar Sesion</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </body>
</html>
