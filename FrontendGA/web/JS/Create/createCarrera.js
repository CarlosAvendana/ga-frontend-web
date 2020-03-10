function init() {
    cargarTabla();
}



function crearCarreraForm() {

// Fetching HTML Elements in Variables by ID.
    var x = document.getElementById("form_crear_carrera");


    var createform = document.createElement('form'); // Create New Element Form
    createform.setAttribute("action", ""); // Setting Action Attribute on Form
    createform.setAttribute("method", "post"); // Setting Method Attribute on Form
    x.appendChild(createform);






    var heading = document.createElement('h2'); // Heading of Form
    heading.innerHTML = "Crear Carrera";
    createform.appendChild(heading);

    var line = document.createElement('hr'); // Giving Horizontal Row After Heading
    createform.appendChild(line);

    var linebreak = document.createElement('br');
    createform.appendChild(linebreak);

    var namelabel = document.createElement('label'); // Create Label for Name Field
    namelabel.innerHTML = "Codigo carrera: "; // Set Field Labels
    createform.appendChild(namelabel);

    var inputelement = document.createElement('input'); // Create Input Field for Name
    inputelement.setAttribute("type", "text");
    inputelement.setAttribute("name", "codigoId");
    createform.appendChild(inputelement);

    var linebreak = document.createElement('br');
    createform.appendChild(linebreak);

    var nombre_ = document.createElement('label'); // Create Label for nombre Field
    nombre_.innerHTML = "Nombre carrera : ";
    createform.appendChild(nombre_);

    var name_input = document.createElement('input'); // Create Input Field for E-mail
    name_input.setAttribute("type", "text");
    name_input.setAttribute("name", "nombreId");
    createform.appendChild(name_input);

    var linebreak = document.createElement('br');
    createform.appendChild(linebreak);

    var titulo_label = document.createElement('label'); // Append Textarea
    titulo_label.innerHTML = "Titulo carrera: ";
    createform.appendChild(titulo_label);

    var titulo_input = document.createElement('input'); // Create Input Field for E-mail
    titulo_input.setAttribute("type", "text");
    titulo_input.setAttribute("name", "tituloId");
    createform.appendChild(titulo_input);

    var messagebreak = document.createElement('br');
    createform.appendChild(messagebreak);

    var submitelement = document.createElement('input'); // Append Submit Button
    submitelement.setAttribute("type", "submit");
    submitelement.setAttribute("name", "dsubmit");
    submitelement.setAttribute("value", "Crear carrera");

    var cancelelement = document.createElement('input'); // Append Submit Button
    cancelelement.setAttribute("type", "submit");
    cancelelement.setAttribute("name", "dcancel");
    cancelelement.setAttribute("value", "Cancelar");

    createform.appendChild(submitelement);
    createform.appendChild(cancelelement);

}

function cargarTabla() {

    var seccionForm = document.createElement("table");
    document.getElementById("verSiFunciona").appendChild(seccionForm);

    var etiquetaForm = document.createElement('form'); // Create New Element Form
    etiquetaForm.setAttribute("action", ""); // Setting Action Attribute on Form
    etiquetaForm.setAttribute("method", "post"); // Setting Method Attribute on Form
    seccionForm.appendChild(etiquetaForm);


    var table = document.getElementsByTagName("TABLE")[0];
    table.className = "rwd-table";

    var titulo_tabla = document.createElement("TH");
    titulo_tabla.appendChild(document.createTextNode("Crear Carrera"));

    var tbHead = document.createElement("THEAD");
    var hileraH1 = document.createElement("TR");
    var hileraH = document.createElement("TR");

    hileraH1.appendChild(titulo_tabla);
    tbHead.appendChild(hileraH1);
    table.appendChild(tbHead);
    var codigo_titulo = document.createElement("TH");
    codigo_titulo.appendChild(document.createTextNode("Código carrera: "));

    var inputelement = document.createElement('input'); // Create Input Field for Name
    inputelement.setAttribute("type", "text");
    inputelement.setAttribute("name", "codigoId");


    hileraH.appendChild(codigo_titulo);
    hileraH.appendChild(inputelement);
    table.appendChild(hileraH);


}