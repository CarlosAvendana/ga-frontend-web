<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Carreras</title>
        <link rel="stylesheet" type="text/css" href="bootstrap/bootstrap.min.css"/>
        <link rel="stylesheet" type="text/css" href="bootstrap_table/bootstrap.css"/>
        <link rel="stylesheet" type="text/css" href="bootstrap_table/dataTables.bootstrap4.min.css"/>
        <script src="bootstrap/jquery.min.js"></script>
        <script src="bootstrap_table/jquery.dataTables.min.js"></script>
        <script src="bootstrap/bootstrap.min.js"></script>
        <script src="bootstrap/popper.min.js"></script>
        <script src="bootstrap_table/dataTables.bootstrap4.min.js"></script>
    </head>
    <body onload="init();">
        <div class="container">
            <div class="row">
                <div class="col-sm-12">
                    <div class="card text-center">
                        <div class="card-header">
                            Gestion Academica
                        </div>
                        <div class="card-body">
                            <span class="btn btn-primary">Cursos</span>
                            <span class="btn btn-primary" data-toggle="modal" data-target="#exampleModal"> Agregar Carrera</span>
                            <span class="btn btn-primary">Salir</span>
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
        <!-- Modal -->
        <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Agregar Nueva Carrera</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">

                    </div>

                </div>
            </div>
        </div>
        <script type="text/javascript">

            function init() {
                let dataSet;


                fetch('Service_Lista_Carrera')
                        .then((response) => {
                            return response.json();
                        })
                        .then((dataSet) => {
                            console.log(dataSet);
                            $(document).ready(function () {
                                $('#example').DataTable({
                                    data: dataSet,
                                    columns: [
                                        {title: "Codigo"},
                                        {title: "Titulo"},
                                        {title: "Nombre"},
                                        {title: "Editar"},
                                        {title: "Eliminar"}
                                    ]
                                });
                            });
                        });
            }


            $('#myModal').on('shown.bs.modal', function () {
                $('#myInput').trigger('focus');
            });
        </script>
    </body>
</html>



