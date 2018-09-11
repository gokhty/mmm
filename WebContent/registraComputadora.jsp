<!DOCTYPE html>
<html lang="esS" >
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="js/dataTables.bootstrap.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/bootstrapValidator.js"></script>
<link rel="stylesheet" href="css/bootstrap.css"/>
<link rel="stylesheet" href="css/dataTables.bootstrap.min.css"/>
<link rel="stylesheet" href="css/bootstrapValidator.css"/>
<title>Registra Computadora</title>
</head>
<body>
<div class="container">
${requestScope.mensajeValida}  
<h1>Registra Computadora</h1>
	<form action="registraCompu" id="id_form"> 
			<input type="hidden" name="metodo" value="registra">	
			<div class="form-group">
				<label class="control-label" for="id_nombre">Nombres</label>
				<input class="form-control" type="text" id="id_nombre" name="computadora.nombre" placeholder="Ingrese el nombre">
			</div>
			<div class="form-group">
				<label class="control-label" for="id_precio">Precio</label>
				<input class="form-control" type="text" id="id_precio" name="computadora.precio" placeholder="Ingrese el precio">
			</div>
			<div class="form-group">
				<label class="control-label" for="id_stock">Stock</label>
				<input class="form-control" type="text" id="id_stock" name="computadora.stock" placeholder="Ingrese el stock">
			</div>
			<div class="form-group">
				<label class="control-label" for="id_marca">Marca</label>
				<select id="id_marca" name="computadora.marca.idMarca" class='form-control'>
					<option value=" ">[Seleccione]</option>    
				</select>
		    </div>
			<div class="form-group">
				<button type="submit" class="btn btn-primary" >Crea Computadora</button>
			</div>
	</form>
</div>

<script type="text/javascript">
	
	var varCargaMarca = function (){
		$.getJSON("cargaMarca", //alias del servlet
				{}, //los parametros
				function (data, textStatus, jqXHR) { //los datos llegan en el objeto data
					$.each(data.lstMarca, function (index, item) { //attr-->atributo
							$("<option/>").attr("value",item.idMarca).text(item.nombre).appendTo("#id_marca");
					});
				}
		);
	};
	
	$(document).ready(varCargaMarca);
</script>
	
<script type="text/javascript">
$(document).ready(function() {
    $('#id_form').bootstrapValidator({
        message: 'This value is not valid',
        feedbackIcons: {
            valid: 'glyphicon glyphicon-ok',
            invalid: 'glyphicon glyphicon-remove',
            validating: 'glyphicon glyphicon-refresh'
        },
        fields: {
        	nombre: {
        		selector : '#id_nombre',
                validators: {
                    notEmpty: {
                        message: 'El nombre es un campo obligatorio'
                    },
                    stringLength :{
                    	message:'El nombre es de 5 a 100 caracteres',
                    	min : 5,
                    	max : 100
                    }
                }
            },
        	precio: {
        		selector : '#id_precio',
                validators: {
                	notEmpty: {
                        message: 'El precio es un campo obligatorio'
                    },
                    regexp: {
                        regexp: /^[0-9]*\.?[0-9]+$/,
                        message: 'El precio es real'
                    }
                }
            },
            stock: {
            	selector : '#id_stock',
                validators: {
                    notEmpty: {
                        message: 'El stock es un campo obligatorio'
                    },
                    digits: {
		                message: 'El stock es entero'
		            },
                }
            },
            marca: {
            	selector : '#id_marca',
                validators: {
                    notEmpty: {
                        message: 'La Marca es un campo obligatorio'
                    }
                }
            },
          
        }   
    });

    // Validate the form manually
    $('#validateBtn').click(function() {
        $('#id_form').bootstrapValidator('validate');
    });
});
</script>


</body>
</html>




