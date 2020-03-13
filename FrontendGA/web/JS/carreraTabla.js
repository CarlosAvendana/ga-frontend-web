function init() {
    solicitarListaCarreras("Service_Lista_Carrera");
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
        table.className = "rwd-table";

        var tbHead = document.createElement("THEAD");
        var hileraH = document.createElement("TR");

        var codigo = document.createElement("TH");
        codigo.appendChild(document.createTextNode("Código"));
        codigo.setAttribute("onclick", "ordenarTabla(0);");

        var titulo = document.createElement("TH");
        titulo.appendChild(document.createTextNode("Título"));
        titulo.setAttribute("onclick", "ordenarTabla(1);");

        var nombre = document.createElement("TH");
        nombre.appendChild(document.createTextNode("Nombre"));
        nombre.setAttribute("onclick", "ordenarTabla(2);");
        
//        var edicion = document.createElement("TH");
//        edicion.appendChild(document.createTextNode("Edicion"));
//        edicion.setAttribute("onclick", "ordenarTabla(3);");
//        
//        var eliminar = document.createElement("TH");
//        eliminar.appendChild(document.createTextNode("Eliminar"));
//        eliminar.setAttribute("onclick", "ordenarTabla(4);");

        hileraH.appendChild(codigo);
        hileraH.appendChild(titulo);
        hileraH.appendChild(nombre);
//        hileraH.appendChild(edicion);
//        hileraH.appendChild(eliminar);
        

        tbHead.appendChild(hileraH);
        table.appendChild(tbHead);

        //--Cuerpo de la tabla
        var tbBody = document.createElement("TBODY");
        table.appendChild(tbBody);
        for (var i = 0; i < datosCarreras.carreras.length; i++) {

            //primer columna | codigo
            var row = document.createElement("TR");
            var celda = document.createElement("TD");
            var text = document.createTextNode(
                    datosCarreras.carreras[i].codigo);
            celda.appendChild(text);
            row.appendChild(celda);
            //segunda columna | titulo
            celda = document.createElement("TD");
            text = document.createTextNode(
                    datosCarreras.carreras[i].titulo);
            celda.appendChild(text);
            row.appendChild(celda);
            //tercer columna | nombre
            celda = document.createElement("TD");
            text = document.createTextNode(
                    datosCarreras.carreras[i].nombre);
            celda.appendChild(text);
            row.appendChild(celda);

           
            //boton de editar
            celda = document.createElement("TD");
            var btn = document.createElement("BUTTON");
            btn.className="myButton";
            btn .innerHTML=("Editar");
            celda.appendChild(btn);
            row.appendChild(celda);
            //boton de Eliminar

            celda = document.createElement("TD");
            var btn = document.createElement("BUTTON");
            btn.className="myButton";
            btn .innerHTML=("Eliminar");
            celda.appendChild(btn);
            row.appendChild(celda);

            tbBody.appendChild(row);
        }
    }
}

function ordenarTabla(n) {
    var table, rows, switching, i, x, y, shouldSwitch, dir, switchcount = 0;
    table = document.getElementsByTagName("TBODY")[0];
    switching = true;
    dir = "asc";
    while (switching) {
        switching = false;
        rows = table.rows;
        for (i = 0; i < (rows.length - 1); i++) {
            shouldSwitch = false;
            x = rows[i].getElementsByTagName("TD")[n];
            y = rows[i + 1].getElementsByTagName("TD")[n];
            if (n === 1 || n === 2) {
                if (dir === "asc") {
                    if (Number(x.innerHTML) > Number(y.innerHTML)) {
                        shouldSwitch = true;
                        break;
                    }
                } else if (dir === "desc") {
                    if (Number(x.innerHTML) < Number(y.innerHTML)) {
                        shouldSwitch = true;
                        break;
                    }
                }
            } else {
                if (dir === "asc") {
                    if (x.innerHTML.toLowerCase() > y.innerHTML.toLowerCase()) {

                        shouldSwitch = true;
                        break;
                    }
                } else if (dir === "desc") {
                    if (x.innerHTML.toLowerCase() < y.innerHTML.toLowerCase()) {

                        shouldSwitch = true;
                        break;
                    }
                }
            }
        }
        if (shouldSwitch) {
            rows[i].parentNode.insertBefore(rows[i + 1], rows[i]);
            switching = true;
            switchcount++;
        } else {
            if (switchcount === 0 && dir === "asc") {
                dir = "desc";
                switching = true;
            }
        }
    }
}