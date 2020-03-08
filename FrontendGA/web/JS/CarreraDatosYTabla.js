function init() {
    solicitarListaCarreras("ServicioListaCarrera");
}

function solicitarListaCarreras(origen) {
    fetch(origen).then(
            (res) => {
        return res.json();
    }
    ).then(
            (dt) => {
        datosCarreras = dt;
        console.log(datosCarreras);
        cargarTabla();
    }
    );
}

function crearTabla() {
    if (!document.getElementsByTagName("TABLE")[0]) {
        var table = document.createElement("TABLE");
        document.getElementById("seccion_tabla_carrera").appendChild(table);
        return true;
    }
    return false;
}

function cargarTabla() {
    if (crearTabla()) {
        var table = document.getElementsByTagName("TABLE")[0];
        var tbHead = document.createElement("THEAD");
        var hileraH = document.createElement("TR");
        hileraH.className = "encabezado";
        var codigo = document.createElement("TH");
        codigo.appendChild(document.createTextNode("Codigo"));
        codigo.setAttribute("onclick", "ordenarTabla(0);");
        var titulo = document.createElement("TH");
        titulo.appendChild(document.createTextNode("Titulo"));
        titulo.setAttribute("onclick", "ordenarTabla(1);");
        var nombre = document.createElement("TH");
        nombre.appendChild(document.createTextNode("Nombre"));
        nombre.setAttribute("onclick", "ordenarTabla(2);");

        hileraH.appendChild(codigo);
        hileraH.appendChild(titulo);
        hileraH.appendChild(nombre);

        tbHead.appendChild(hileraH);
        table.appendChild(tbHead);

        //==================FIN DE LA CREACION DEL TBHEAD=======================
        var tbBody = document.createElement("TBODY");
        table.appendChild(tbBody);
        for (var i = 0; i < datosCarreras.estudiantes.length; i++) {
            //primer columna | nombre_grupo
            var row = document.createElement("TR");
            var celda = document.createElement("TD");
            var text = document.createTextNode(
                    datosCarreras.estudiantes[i].nombre_grupo);
            celda.appendChild(text);
            row.appendChild(celda);
            //segunda columna | id_grupo (NRC)
            celda = document.createElement("TD");
            text = document.createTextNode(
                    datosCarreras.estudiantes[i].id_grupo);
            celda.appendChild(text);
            row.appendChild(celda);
            //tercer columna | id de usuario
            celda = document.createElement("TD");
            text = document.createTextNode(
                    datosCarreras.estudiantes[i].id_usuario);
            celda.appendChild(text);
            row.appendChild(celda);
            //cuarta columna | nombre y apellido de estudiante
            celda = document.createElement("TD");
            text = document.createTextNode(
                    datosCarreras.estudiantes[i].apellido1 + " " +
                    datosCarreras.estudiantes[i].apellido2 + ", " +
                    datosCarreras.estudiantes[i].nombre_usuario);
            celda.appendChild(text);
            row.appendChild(celda);
            tbBody.appendChild(row);
        }
    }
}