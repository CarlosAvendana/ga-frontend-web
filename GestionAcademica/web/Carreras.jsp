<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Carreras</title>
        <link rel="stylesheet" type="text/css" href="bootstrap/bootstrap.min.css"/>
        <link rel="stylesheet" type="text/css" href="bootstrap_table/bootstrap.css"/>
        <link rel="stylesheet" type="text/css" href="bootstrap_table/dataTables.bootstrap4.min.css"/>
        <link rel="stylesheet" type="text/css" href="aletifyjs/css/alertify.css"/>
        <link rel="stylesheet" type="text/css" href="aletifyjs/css/themes/bootstrap.css"/>
        <script src="bootstrap/bootstrap.min.js"></script>
        <script src="bootstrap/jquery.min.js"></script>
        <script src="bootstrap/popper.min.js"></script>
        <script src="bootstrap_table/dataTables.bootstrap4.min.js"></script>
        <script src="bootstrap_table/jquery.dataTables.min.js"></script>
        <script src="aletifyjs/aletify.js"></script>
    </head>
    <body>
        <jsp:directive.include file="menu.jsp" />
        <div class="container">
            <div class="row">
                <div class="col-sm-12">
                    <div class="card text-center">
                        <div class="card-header">
                            Lista de carreras
                        </div>
                        <div class="card-body">
                            <span class="btn btn-primary" onclick="abrirModal();"> Agregar Carrera</span>
                            <hr>
                            <div>
                                <table id="example" class="table table-hover table-dark" style="width:100%;margin: auto; padding-top: 60px;">
                                </table>
                            </div>
                        </div>
                        <div class="card-footer text-muted">
                            Laboratorio Moviles 01-02 ~ Carlos Obando & Felipe Piedra
                        </div>
                    </div>
                </div>
            </div>
        </div>
     <!--   <div id='modulooo' class="modal" tabindex="-1" role="dialog">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title">Modal title</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">

                        <form action="Service_Crea_Carrera" method="post">
                            <table> 
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
                                <div class="modal-footer">
                                    <button type="submit" class="btn btn-primary">Guardar Carrera</button>
                                    <button type="reset" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
                                </div>
                            </table>
                        </form>
                    </div>
                </div>
            </div>
        </div>
-->

    </body>
</html>

<script type="text/javascript">

    let dataSet;

    $.get('/GestionAcademica/Service_Lista_Carrera', function (data) {
        dataSet = data;
        console.log(dataSet);
    });

    $(document).ready(function () {
        $('#example').DataTable({
            data: dataSet,
            columns: [
                {title: "Codigo"},
                {title: "Titulo"},
                {title: "Nombre"}
            ]
        });
    });

    /*function abrirModal() {
        $("#modulooo").modal("show");

    }*/
</script>

