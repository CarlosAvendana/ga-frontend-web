function init() {
    solicitarListaCarreras("Service_Lista_Curso");
}

function solicitarListaCarreras(origen) {
    fetch(origen).then(
            (res) => {
        return res.json();
    }
    ).then(
            (dt) => {
        datosCursos = dt;
        console.log(datosCursos);
        cargarTabla();
    }
    );
}

function crearTabla() {
    if (!document.getElementsByTagName("TABLE")[0]) {
        var table = document.createElement("TABLE");
        document.getElementById("seccion_tabla_curso").appendChild(table);
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

        var codigo_carrera = document.createElement("TH");
        codigo_carrera.appendChild(document.createTextNode("Código Carrera"));
        codigo_carrera.setAttribute("onclick", "ordenarTabla(1);");

        var anio = document.createElement("TH");
        anio.appendChild(document.createTextNode("Año"));
        anio.setAttribute("onclick", "ordenarTabla(2);");

        var ciclo = document.createElement("TH");
        ciclo.appendChild(document.createTextNode("Ciclo"));
        ciclo.setAttribute("onclick", "ordenarTabla(3);");

        var nombre = document.createElement("TH");
        nombre.appendChild(document.createTextNode("Nombre"));
        nombre.setAttribute("onclick", "ordenarTabla(4);");

        var creditos = document.createElement("TH");
        creditos.appendChild(document.createTextNode("Creditos"));
        creditos.setAttribute("onclick", "ordenarTabla(4);");

        var horas_semana = document.createElement("TH");
        horas_semana.appendChild(document.createTextNode("Horas Semanales"));
        horas_semana.setAttribute("onclick", "ordenarTabla(5);");

        hileraH.appendChild(codigo);
        hileraH.appendChild(codigo_carrera);
        hileraH.appendChild(anio);
        hileraH.appendChild(ciclo);
        hileraH.appendChild(nombre);
        hileraH.appendChild(creditos);
        hileraH.appendChild(horas_semana);

        tbHead.appendChild(hileraH);
        table.appendChild(tbHead);

        //--Cuerpo de la tabla
        var tbBody = document.createElement("TBODY");
        table.appendChild(tbBody);
        for (var i = 0; i < datosCursos.cursos.length; i++) {

            //primer columna | codigo
            var row = document.createElement("TR");
            var celda = document.createElement("TD");
            var text = document.createTextNode(datosCursos.cursos[i].codigo);
            celda.appendChild(text);
            row.appendChild(celda);
            //segunda columna | carrera_codigo
            celda = document.createElement("TD");
            text = document.createTextNode(
                    datosCursos.cursos[i].carrera_codigo);
            celda.appendChild(text);
            row.appendChild(celda);
            //tercer columna | anio
            celda = document.createElement("TD");
            text = document.createTextNode(
                    datosCursos.cursos[i].anio);
            celda.appendChild(text);
            row.appendChild(celda);

            //cuarta columna | ciclo
            celda = document.createElement("TD");
            text = document.createTextNode(
                    datosCursos.cursos[i].ciclo);
            celda.appendChild(text);
            row.appendChild(celda);
            //quinta columna | nombre
            celda = document.createElement("TD");
            text = document.createTextNode(
                    datosCursos.cursos[i].nombre);
            celda.appendChild(text);
            row.appendChild(celda);
            //sexta columna | creditos
            celda = document.createElement("TD");
            text = document.createTextNode(
                    datosCursos.cursos[i].creditos);
            celda.appendChild(text);
            row.appendChild(celda);

            //septima columna | horas_semanales
            celda = document.createElement("TD");
            text = document.createTextNode(
                    datosCursos.cursos[i].horas_semanales);
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