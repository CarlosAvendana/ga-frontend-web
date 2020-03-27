<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cursos</title>
        <link rel="icon" href="Icon/GA1.ico" type="image/png"/>

        <link rel="stylesheet" type="text/css" href="bootstrap/bootstrap.min.css"/>
        <link rel="stylesheet" type="text/css" href="bootstrap_table/bootstrap.css"/>
        <link rel="stylesheet" type="text/css" href="bootstrap_table/dataTables.bootstrap4.min.css"/>
        <script src="bootstrap/jquery.min.js"></script>
        <script src="bootstrap_table/jquery.dataTables.min.js"></script>
        <script src="bootstrap/bootstrap.min.js"></script>
        <script src="bootstrap/popper.min.js"></script>
        <script src="bootstrap_table/dataTables.bootstrap4.min.js"></script>

    </head>
    <body onload="init();" style="background-color:#1b262c;">
        <div class="container">
            <div class="row">
                <div class="col-sm-12">
                    <div class="card text-center">
                        <div class="card-header bg-dark text-white">
                            Gestion Academica
                        </div>
                        <div class="card-body bg-dark text-white border-dark">
                            <a class="btn btn-primary" href="Carreras.jsp" role="button">Carreras</a>
                            <span class="btn btn-primary" data-toggle="modal" data-target="#exampleModal"> Agregar Curso</span>
                            <span class="btn btn-primary">Salir</span>
                            <hr>
                            <div>
                                <table id="example" class="table table-hover table-dark" style="width:100%;margin: auto; padding-top: 60px;">
                                </table>
                            </div>
                        </div>
                        <div class="card-footer bg-dark text-white">
                            Laboratorio Moviles 01-02 ~ Carlos Obando & Felipe Piedra
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Modal Para Agregar Cursos -->
        <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content bg-dark text-white">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel" >Agregar nuevo curso</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>

                    <div class="modal-body">
                        <div class="container">
                            <form action="Service_Crea_Curso" method="POST"  class="was-validated" id="modalForm">
                                <div class="form-row align-items-center">

                                    <div class="col-auto">
                                        <div class="form-group">
                                            <label>Código:</label>
                                            <input type="text" class="form-control" placeholder="Código de la carrera:"  name="codigoCF" id="codigoCF" required>
                                            <div class="valid-feedback">Valido!</div>
                                            <div class="invalid-feedback">Por favor llenar el campo!</div>
                                        </div>
                                    </div>

                                    <div class="col-auto">
                                        <div class="form-group">
                                            <label for="uname">Nombre: </label>
                                            <input type="text" class="form-control" id="nombreCF" placeholder="Nombre del curso:" name="nombreCF" id="nombreCF" required>
                                            <div class="valid-feedback">Valido!</div>
                                            <div class="invalid-feedback">Por favor llenar el campo!</div>
                                        </div>
                                    </div>
                                </div>

                                <div class="form-row align-items-center">

                                    <div class="col-auto">
                                        <div class="form-group">
                                            <label>Numero de Creditos:</label>
                                            <input type="number" min="1" class="form-control" placeholder="Numero de creditos" name="numeroCF" id="numeroCF" required>
                                            <div class="valid-feedback">Valido!</div>
                                            <div class="invalid-feedback">Por favor llenar el campo!</div>
                                        </div>
                                    </div>
                                    <div class="col-auto">
                                        <div class="form-group">
                                            <label>Horas semanales:</label>
                                            <input type="number" min="1" class="form-control" placeholder="Horas Semanales" name="horasCF" id="horasCF" required>
                                            <div class="valid-feedback">Valido!</div>
                                            <div class="invalid-feedback">Por favor llenar el campo!</div>
                                        </div>
                                    </div>
                                </div>

                                <div class="form-row align-items-center">

                                    <div class="col-auto">
                                        <div class="form-group">
                                            <label>Ciclo: </label>
                                            <select name="cicloCF" class="custom-select" id="cicloCF" required = "required">
                                                <option value="I">I</option>
                                                <option value="II">II</option>
                                            </select>
                                        </div>
                                    </div>

                                    <div class="col-auto">
                                        <div class="form-group">
                                            <label >Codigo de carrera: </label>
                                            <select id="locality-dropdown" name="cCF" class="custom-select"  required = "required">
                                            </select>
                                        </div>
                                    </div>

                                    <div class="col-auto">
                                        <div class="form-group">
                                            <label>Año:</label>
                                            <input type="number" min="1900" max="2099" step="1" value="2020"class="form-control" placeholder="Anio" id="anioCF" name="anioCF" required>
                                            <div class="valid-feedback">Valido!</div>
                                            <div class="invalid-feedback">Por favor llenar el campo!</div>
                                        </div>
                                    </div>
                                </div>

                                <button type="submit" id="botonAgregar" class="btn btn-primary">Agregar</button>
                                <button type="reset" class="btn btn-primary">Borrar</button>
                            </form>

                        </div>

                    </div>
                </div>
                <script type="text/javascript">

                    function init() {
                        let dataSet;
                        fetch('Service_Lista_Curso')
                                .then((response) => {
                                    return response.json();
                                })
                                .then((dataSet) => {
                                    $(document).ready(function () {
                                        $('#example').DataTable({
                                            data: dataSet,
                                            columns: [
                                                {title: "Código"},
                                                {title: "Año"},
                                                {title: "Ciclo"},
                                                {title: "Nombre"},
                                                {title: "Créditos"},
                                                {title: "Horas Semanales"},
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
                    let dropdown = $('#locality-dropdown');
                    dropdown.empty();
                    dropdown.prop('selectedIndex', 0);
                    const url = '/GestionAcademica/Service_Lista_CodigoCarreras';
                    $.getJSON(url, function (data) {
                        $.each(data, function (key, entry) {
                            dropdown.append($('<option></option>').attr('value', entry.codigo).text(entry.codigo));
                        });
                    });

                    function eliminaCurso(codigoCurso) {
                        $.ajax({
                            type: "POST",
                            url: '/GestionAcademica/Service_Borra_Curso',
                            data: {cursoCodigo: codigoCurso}
                        });
                        location.reload();

                    }

                    function resetTitulo(dato) {
                        if (dato === 1) {
                            $('#exampleModalLabel').html("Editar Curso");
                            $('#botonAgregar').html("Actualizar");
                            $("#codigoCF").prop("disabled", true);
                        } else {
                            $('#exampleModalLabel').html("Agregar Curso");
                            $('#botonAgregar').html("Agregar");
                            $("#codigoCF").prop("disabled", false);
                        }
                    }

                    function actualizaCurso(datosString) {
                        resetTitulo(1);


                        resetTitulo(1);
                        const[codigo, carrerracodigo, anio, ciclo, nombre, creditos, horas] = datosString.split(',');
                        $('#codigoCF').val(codigo);
                        $('#nombreCF').val(nombre);
                        $('#numeroCF').val(creditos);
                        $('#horasCF').val(horas);
                        $('#cicloCF').val(ciclo);
                        $('#locality-dropdown').val(carrerracodigo);
                        $('#anioCF').val(anio);


                        $('#modalForm').submit(function () {
                            $(this).attr('action', 'Service_Edita_Curso');
                            resetTitulo(0);

                        });

                    }

                </script>
                </body>
                </html>
