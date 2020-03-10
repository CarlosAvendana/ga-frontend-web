

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Gestión Académica</title>
        <link href="Styles/loginCss.css" rel="stylesheet" type="text/css"/>
        <link rel="icon" href="Icons/GA1.ico" type="image/x-icon" />
        <script src="JS/loginScript.js" type="text/javascript"></script>
    </head>
    <body>
        <div class="container">
            <div class="frame">
                <div class="nav">
                    <ul class"links">
                        <li><a >GESTIÓN ACADÉMICA</a></li>
                        <br/>
                        <br/>
                        <li class="signin-active"><a class="btn">Iniciar sesión</a></li>
                    </ul>
                </div>
                <div >
                    <form class="form-signin" action="Service_LogIn" method="post" name="loginForm">

                        <label for="username">Usuario</label>
                        <input class="form-styling" type="text" name="user" placeholder=""/>

                        <label for="password">Contraseña</label>
                        <input class="form-styling" type="password" name="pass" placeholder=""/>

                        <div class="btn-animate">
                            <input type="submit" class="btn-signin" value="Ingresar"/>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </body>
</html>
