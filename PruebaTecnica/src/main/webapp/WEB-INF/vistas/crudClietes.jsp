<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Clientes</title>
    

    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link href="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/css/select2.min.css" rel="stylesheet" />
    <script src="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/js/select2.min.js"></script>

    <script type="text/javascript" src="js/jquery.min.js"></script>
    <script type="text/javascript" src="js/jquery.dataTables.min.js"></script>
    <script type="text/javascript" src="js/dataTables.bootstrap.min.js"></script>
    <script type="text/javascript" src="js/bootstrap.min.js"></script>
    <script type="text/javascript" src="js/bootstrapValidator.js"></script>
    <script type="text/javascript" src="js/global.js"></script>

    <link rel="stylesheet" href="css/bootstrap.css" />
    <link rel="stylesheet" href="css/dataTables.bootstrap.min.css" />
    <link rel="stylesheet" href="css/bootstrap.min.css.map" />
    <link rel="stylesheet" href="css/bootstrapValidator.css" />
    <link rel="stylesheet" href="css/table.css" />
</head>
<body>
    <div class="container-xl">
        <div class="table">
            <div class="table-wrapper">
                <div class="table-title">
                    <div class="row">
                        <div class="col-sm-8"><h2><b>Clientes</b></h2></div>
                        <div class="col-sm-12">
                            <div class="search-box">
                                <i class="material-icons">&#xE8B6;</i>
                                <input id="id_txt_filtro" type="text" class="form-control" placeholder="Buscar&hellip;">
                            </div>
                        </div>
                        <button type="button" class="btn btn-secondary btn-sm add-new" style="width: 12%;" id="id_btn_filtrar"><i class="fa fa-caret-down"></i>&nbsp;Muestra datos</button>
                        &nbsp;
                        &nbsp;
                        <button type="button" class="btn btn-success btn-sm add-new" style="width: 12%;" data-toggle="modal" data-target="#id_div_modal_registra"><i class="fa fa-plus"></i>&nbsp;Nuevo cliente</button>
                    </div>
                </div>
                <table  id="id_table" class="table table-striped table-hover table-bordered">
                    <thead class=" table-dark">
                        <tr>
                            <th>Doucmento</th>
                            <th>Nombre</th>
                            <th>Apellido</th>
                            <th style="width: 10%;">Fecha Nacimiento</th>
                            <th>Ciudad</th>
                            <th >Email</th>
                            <th>Telefono</th>
                            <th>Ocupacion</th>
                            <th>Actualizar</th>
                            <th>Eliminar</th>
                        </tr>
                    </thead>
                    <tbody>        
                    </tbody>
                </table>
            </div>
        </div>

            <!-- Modal de Agregar Cliente -->
            <div class="modal fade" id="id_div_modal_registra" >
                <div class="modal-dialog" style="width: 60%">
            
                    <!-- Modal content-->
                    <div class="modal-content">
                    <div class="modal-header" style="padding: 35px 50px">
                        Registro de Cliente
                    </div>
                    <div class="modal-body" style="padding: 20px 10px;">
                            <form id="id_form_registra" accept-charset="UTF-8" action="registraActualizaCrudCliente" class="form-horizontal"    method="post">
                                <div class="panel-group" id="steps">
                                    <!-- Step 1 -->
                                            <div class="panel-body">
                                                <div class="form-group col">
                                                    <label>Documento</label>
                                                    <input class="form-control" id="id_reg_documento" name="documento" placeholder="Ingrese documento: " type="text"/>
                                                </div>
                                                <div class="form-row">
                                                    <div class="form-group col">
                                                        <label>Nombre</label>
                                                        <input style="width: 85%;" class="form-control" id="id_reg_nombre" name="nombre" placeholder="Ingrese nombre: " type="text"/>
                                                    </div>
                                                    <div class="form-group col">
                                                        <label>Apellido</label>
                                                        <input class="form-control" id="id_reg_apellido" name="apellido" placeholder="Ingrese apellido: " type="text" />
                                                    </div>
                                                </div>
                                                <br>
                                                <div class="form-row">
                                                    <div class="form-group col">
                                                        <label>Fecha Nacimiento</label>
                                                        <input style="width: 85%;" class="form-control" id="id_reg_fecha" name="fechaNacimiento" placeholder="Ingrese fecha nacimiento: " type="date" min="1957-12-31" max="2004-12-31" />
                                                    </div>
                                                    <div class="form-group">
                                                        <label>Edad</label>
                                                        <input class="form-control" id="id_reg_minima" name="edadMinima" type="text" />
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <div class="form-group col">
                                                        <label>Email</label>
                                                        <input class="form-control" id="id_reg_email" name="email" placeholder="Ingrese email: " type="text"/>
                                                    </div>
                                                </div>
                                                <div class="form-row">
                                                    <div class="form-group col">
                                                        <label>Telefono</label>
                                                        <input style="width: 85%;" class="form-control" id="id_reg_telefono" name="telefono" placeholder="Ingrese telefono: " type="text"/>
                                                    </div>
                                                    <div class="form-group col">
                                                        <label>Ciudad</label>
                                                        <select class="form-control"  id="id_reg_ciudad" name="ciudad">
                                                            <option value=" "><-Seleccione-></option>
                                                        </select>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <div class="form-group col">
                                                        <label>Ocupacion</label>
                                                        <select class="form-control" id="id_reg_ocupacion" name="ocupacion" >
                                                            <option value=" "><-Seleccione-></option>
                                                        </select>
                                                    </div>
                                                </div>
                                                <br>
                                                <div class="form-group">
                                                    <div class="col-lg-9 col-lg-offset-3">
                                                        <button type="button" class="btn btn-success" id="id_btn_registra">Registrar</button>
                                                        <button type="button" class="btn btn-warning" data-dismiss="modal" value="Cancel">Cancelar</button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>


                <!-- Modal de Actualizar Cliente -->
                <div class="modal fade" id="id_div_modal_actualiza" >
                    <div class="modal-dialog" style="width: 60%">
                
                        <div class="modal-content">
                        <div class="modal-header" style="padding: 35px 50px">
                            Actualiza Cliente
                        </div>
                        <div class="modal-body" style="padding: 20px 10px;">
                                <form id="id_form_actualiza" accept-charset="UTF-8"  action="registraActualizaCrudCliente" class="form-horizontal"     method="post">
                                    <div class="panel-group" id="steps">
                                        <!-- Step 1 -->
                                                <div class="panel-body">
                                                    <div class="form-group col">
                                                        <label>Documento</label>
                                                        <input class="form-control" id="id_act_documento" name="documento" placeholder="Ingrese documento: " type="text"/>
                                                    </div>
                                                    <div class="form-row">
                                                        <div class="form-group col">
                                                            <label>Nombre</label>
                                                            <input  style="width: 85%;" class="form-control" id="id_act_nombre" name="nombre" placeholder="Ingrese nombre: " type="text"/>
                                                        </div>
                                                        <div class="form-group col">
                                                            <label>Apellido</label>
                                                            <input class="form-control" id="id_act_apellido" name="apellido" placeholder="Ingrese apellido: " type="text" />
                                                        </div>
                                                    </div>
                                                    <br>
                                                    <div class="form-row">
                                                        <div class="form-group col">
                                                            <label>Fecha Nacimiento</label>
                                                            <input style="width: 85%;" class="form-control" id="id_act_fecha" name="fechaNacimiento" placeholder="Ingrese fecha nacimiento: " type="date" min="1957-12-31" max="2004-12-31" />
                                                        </div>
                                                        <div class="form-group col">
                                                            <label>Email</label>
                                                            <input class="form-control" id="id_act_email" name="email" placeholder="Ingrese email: " type="text"/>
                                                        </div>
                                                    </div>
                                                    <div class="form-row">
                                                        <div class="form-group col">
                                                            <label>Telefono</label>
                                                            <input style="width: 85%;" class="form-control" id="id_act_telefono" name="telefono" placeholder="Ingrese telefono: " type="text"/>
                                                        </div>
                                                        <div class="form-group col">
                                                            <label>Ciudad</label>
                                                            <select class="js-states form-control"  id="id_act_ciudad" name="ciudad">
                                                                <option value=" "><-Seleccione-></option>
                                                            </select>
                                                        </div>
                                                    </div>
                                                    <div class="form-group">
                                                        <div class="form-group col">
                                                            <label>Ocupacion</label>
                                                            <select class="form-control" id="id_act_ocupacion" name="ocupacion" >
                                                                <option value=" "><-Seleccione-></option>
                                                            </select>
                                                        </div>
                                                    </div>
                                                    <br>
                                                    <div class="form-group">
                                                        <div class="col-lg-9 col-lg-offset-3">
                                                            <button type="button" class="btn btn-success" id="id_btn_actualiza">Actualizar</button>
                                                            <input type="button" class="btn btn-warning" data-dismiss="modal" value="Cancel">
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                



<!-- JS -->
<script type="text/javascript">

function listarDatos(lista){
    $('#id_table').DataTable().clear();
    $('#id_table').DataTable().destroy();
    $('#id_table').DataTable({
        data:lista,
        searching: false,
		ordering: true,
		processing: true,
		pageLength: 5,
		lengthChange: false,
        columns:[
            {data:"documento"},
            {data:"nombre"},
            {data:"apellido"},
            {data:"fechaNacimiento"},
            {data:"email"},
            {data:"telefono"},
            {data:"ciudad.nombre"},
            {data:"ocupacion.nombre"},
            {data: function(row, type, val, meta){
					var salida='<button type="button" style="width: 90px" class="btn btn-primary" onclick="editar(\''+row.documento + '\',\'' +row.nombre + '\',\''+row.apellido + '\',\''+row.fechaNacimiento + '\',\'' +row.email + '\', \''+ row.telefono + '\',\''+ row.ciudad.idCiudad + '\',\''+ row.ocupacion.idOcupacion +'\')">Editar</button>';
					return salida;
				},className:'text-center'},	
				{data: function(row, type, val, meta){
				    var salida='<button type="button" style="width: 90px" class="btn btn-danger" onclick="eliminar(\'' + row.documento + '\')">Eliminar</button>';
					return salida;
				},className:'text-center'},	
        ]
    });
}

$("#id_btn_filtrar").click(function(){
    var fil=$("#id_txt_filtro").val();
    $.getJSON("listarClientes",{"filtro":fil}, function(lista){
        listarDatos(lista);
    });
});

$.getJSON("listaOcupacion", {}, function(data){
    $.each(data, function(i, item){
        $("#id_reg_ocupacion").append("<option value="+item.idOcupacion +">"+item.nombre +"</option>");
        $("#id_act_ocupacion").append("<option value="+item.idOcupacion +">"+item.nombre +"</option>");
    });
});

$.getJSON("listaCiudad",{},function(data){
    $.each(data, function(i,item){
        $("#id_reg_ciudad").append("<option value="+item.idCiudad + ">" +item.nombre +"</option>");
        $("#id_act_ciudad").append("<option value="+item.idCiudad + ">" +item.nombre +"</option>");
    });
});


$(document).ready(function() {
    $('#id_act_ciudad').select2();
});
$(document).ready(function() {
    $('#id_reg_ciudad').select2();
});


function accionEliminar(documentoId){
    $.ajax({
        type: "POST",
        url: "eliminarCliente",
        data: {"documentoId": documentoId},
        success: function(data){
            listarDatos(data.mensaje);
            mostrarMensaje(data.mensaje);
        },
        error: function(){
            mostrarMensaje(MSG_ERROR);
        }
    });
}
function eliminar(documentoId){
    mostrarMensajeConfirmacion(MSG_ELIMINAR, accionEliminar, null, documentoId);
}



function editar(documentoId,nombre,apellido,fechaNacimiento,email,telefono,idCiudad,idOcupacion){
    $('#id_act_documento').val(documentoId);
    $('#id_act_nombre').val(nombre);
    $('#id_act_apellido').val(apellido);
    $('#id_act_fecha').val(fechaNacimiento);
    $('#id_act_email').val(email);
    $('#id_act_telefono').val(telefono);
    $('#id_act_ciudad').val(idCiudad);
    $('#id_act_ocupacion').val(idOcupacion);
    $('#id_div_modal_actualiza').modal("show");
}

function limpiarForm(){
    $('#id_reg_documento').val('');
    $('#id_reg_nombre').val('');
    $('#id_reg_apellido').val('');
    $('#id_reg_fechaNacimiento').val('');
    $('#id_reg_email').val('');
    $('#id_reg_telefono').val('');
    $('#id_reg_ciudad').val('');
    $('#id_reg_ocupacion').val('');
}

$("#id_btn_registra").click(function(){
    var validator = $('#id_form_registra').data('bootstrapValidator');
    validator.validate();

    if(validator.isValid()){
        $.ajax({
            type: "POST",
            url: "registrarCliente",
            data: $('#id_form_registra').serialize(),
            success: function(data){
                listarDatos(data.lista);
                $('#id_div_modal_registra').modal("hide");
                mostrarMensaje(data.mensaje);
                limpiarForm();
                validator.resetForm();
            },
            error: function(){
                mostrarMensaje(MSG_ERROR);
            }
        });
    }
});

$("#id_btn_actualiza").click(function(){
    var validator = $('#id_form_actualiza').data('bootstrapValidator');
    validator.validate();
    if(validator.isValid()){
        $.ajax({
            type: "POST",
            url: "actualizarCliente",
            data: $('#id_form_actualiza').serialize(),
            success: function(data){
                listarDatos(data.lista);
                $('#id_div_modal_actualiza').modal("hide");
                mostrarMensaje(data.mensaje);
                validator.resetForm();
            },
            error: function(){
                mostrarMensaje(MSG_ERROR);
            }
        });
    }
});

$('#id_reg_fecha').on('change', function(){
    $('#id_reg_minima').val(Calular_Fecha());
});
function Calular_Fecha()
{
    var fecha_selecionada= $('#id_reg_fecha').val();
    var fecha_nacimiento = new Date(fecha_selecionada);
    var fecha_Actual = new Data();
    var edad = (parseInt((fecha_Actual - fecha_nacimiento) / (1000*60*60*24*365)));
    return edad;
}

</script>
<!-- JS -->
<!---->
<!--Validacion-->
<script type="text/javascript">
    $('#id_form_registra').bootstrapValidator({
        message: 'This value is not valid',
        feedbackIcons: {
            valid: 'glyphicon glyphicon-ok',
            invalid: 'glyphicon glyphicon-remove',
            validating: 'glyphicon glyphicon-refresh'
        },
        fields: {
        	"documento":{
                selector: "#id_reg_documento",
                validators:{
                    notEmpty: {
                         message: 'El documento es obligatorio'
                    },
                    regexp: {
                        regexp: /^[0-9]{6,10}$/,
                        message: 'el documento es de 6 a 10'
                    },
                }
            },
            "nombre": {
        		selector : '#id_reg_nombre',
                validators:{
                    notEmpty: {
                         message: 'El nombre es obligatorio'
                    },
                    stringLength: {
                        min: 3,
                        max: 40,
                        message: 'El nombre es de 3 a 40 caracteres'
                    },
                }
            },
            "apellido": {
        		selector : '#id_reg_apellido',
                validators:{
                    notEmpty: {
                         message: 'El apellido es obligatorio'
                    },
                    stringLength: {
                        min: 3,
                        max: 40,
                        message: 'El apellido es de 3 a 40 caracteres'
                    },
                }
            },
            "fechaNacimiento":{
            	 selector: "#id_reg_fecha",
                 validators:{
                	 notEmpty: {
                         message: 'La fecha es obligatoria'
                    },
                    date: {
                        message: 'La fecha tiene formato DD/MM/YYYY',
                        format: 'DD/MM/YYYY'
                    },
                 }
            },
            "edadMinima": {
        		selector : '#id_reg_minima',
                validators: {
                	notEmpty: {
                        message: 'La edad es un campo obligatorio'
                    },
                    lessThan: {
		                value: 65,
		                inclusive: true,
		                message: 'El cliente debe ser menor a 65'
		            },
		            greaterThan: {
		                value: 18,
		                inclusive: true,
		                message: 'El cliente debe ser mayor a 18'
		            }
                }
            },
            "email": {
        		selector : '#id_reg_email',
                validators:{
                    notEmpty: {
                         message: 'El correo es obligatorio'
                    },
                    emailAddress: {
                        message: 'El correo no es valido'
                    },
                }
            },
            "telefono": {
        		selector : '#id_reg_telefono',
                validators: {
                	notEmpty: {
                        message: 'El telefono es obligatorio'
                    },
                    regexp: {
                        regexp: /^[0-9]{10}$/,
                        message: 'el telefono es 10 d�gitos'
                    },
                }
            },
            "ciudad.name": {
        		selector : '#id_reg_ciudad',
                validators: {
                	notEmpty: {
                        message: 'La ciudad esobligatorio'
                    },
                }
            },
            "ocupacion.name": {
        		selector : '#id_reg_ocupacion',
                validators: {
                	notEmpty: {
                        message: 'La ocupacion es obligatorio'
                    },
                }
            },
        	
        }   
    });
</script>
<!--Validacion-->
<!--Validacion-->
<script type="text/javascript">
    $('#id_form_actualiza').bootstrapValidator({
        message: 'This value is not valid',
        feedbackIcons: {
            valid: 'glyphicon glyphicon-ok',
            invalid: 'glyphicon glyphicon-remove',
            validating: 'glyphicon glyphicon-refresh'
        },
        fields: {
        	"documento":{
                selector: "#id_act_documento",
                validators:{
                    notEmpty: {
                         message: 'El documento es obligatorio'
                    },
                    regexp: {
                        regexp: /^[0-9]{6,10}$/,
                        message: 'el documento es de 6 a 10'
                    },
                }
            },
            "nombre": {
        		selector : '#id_act_nombre',
                validators:{
                    notEmpty: {
                         message: 'El nombre es obligatorio'
                    },
                    stringLength: {
                        min: 3,
                        max: 40,
                        message: 'El nombre es de 3 a 40 caracteres'
                    },
                }
            },
            "apellido": {
        		selector : '#id_act_apellido',
                validators:{
                    notEmpty: {
                         message: 'El apellido es obligatorio'
                    },
                    stringLength: {
                        min: 3,
                        max: 40,
                        message: 'El apellido es de 3 a 40 caracteres'
                    },
                }
            },
            "fechaCumpelanos":{
            	 selector: "#id_act_fecha",
                 validators:{
                	 notEmpty: {
                         message: 'La fecha es obligatoria'
                    },
                    date: {
                        message: 'La fecha tiene formato DD/MM/YYYY',
                        format: 'DD/MM/YYYY'
                    },
                 }
            },
            "email": {
        		selector : '#id_act_email',
                validators:{
                    notEmpty: {
                         message: 'El correo es obligatorio'
                    },
                    emailAddress: {
                        message: 'El correo no es valido'
                    },
                }
            },
            "telefono": {
        		selector : '#id_act_telefono',
                validators: {
                	notEmpty: {
                        message: 'El telefono es obligatorio'
                    },
                    regexp: {
                        regexp: /^[0-9]{10}$/,
                        message: 'el telefono es 10 d�gitos'
                    },
                }
            },
            "ciudad.name": {
        		selector : '#id_act_ciudad',
                validators: {
                	notEmpty: {
                        message: 'La ciudad esobligatorio'
                    },
                }
            },
            "ocupacion.name": {
        		selector : '#id_act_ocupacion',
                validators: {
                	notEmpty: {
                        message: 'La ocupacion es obligatorio'
                    },
                }
            },
        	
        }   
    });
</script>
<!--Validacion-->
</body>
</html> 