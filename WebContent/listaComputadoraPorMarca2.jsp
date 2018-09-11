<!DOCTYPE html>

<html lang="esS">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/bootstrap-theme.css">
<link rel="stylesheet" href="css/bootstrapValidator.css">

<script src="js/bootstrap.min.js"></script>
<script src="js/jquery.min.js"></script>
<script src="js/bootstrapValidator.js"></script>
<title>Consulta de computadora por Marca</title>
</head>
<body>

	<div class="container">
		<h1>Consulta de computadora por nombre</h1>
				<form id="id_form" class="form-inline"> 
						<label for="id_marca">Marca</label>
						<select id="id_marca" class='form-control' onchange="javascript:filtroMarca()">
							<option value=" ">[Seleccione]</option>    
						</select>
						<button type="button" class="btn btn-primary"  onclick="javascript:filtroMarca()">Filtrar</button>
				</form>
		<br>
		<br>
		<br>

		<table class="table" id="id_table">
			<thead>
				<tr>
					<th>Id</th>
					<th>Nombre</th>
					<th>Precio</th>
					<th>Stock</th>
					<th>Marca</th>
				</tr>
			</thead>
			<tbody>


			</tbody>
		</table>


	</div>




</body>
<script type="text/javascript">
	var varCargaMarca = function (){
		$.getJSON("cargaMarca",
				{},
				function (data) {
					$.each(data.lstMarca, function (index, item) {
						$("#id_marca").append("<option value='"+item.idMarca+"'>"+item.nombre+"</option>");
					});
				}
		);
	};
	function filtroMarca(){
		var idMarca=$("#id_marca").val();
		$.ajax({
			type: 'get',
			url:  'consultaXMarca2?filtro='+idMarca,
			success:function(data){
					$('#id_table tbody').remove();
					$.each(data.lstComputadora, function (index, item) { 
						$("#id_table").append("<tr><td>"+
													item.idComputadora+"</td><td>"+
													item.nombre+"</td><td>"+
													item.precio+"</td><td>"+
													item.stock+"</td><td>"+
													item.marca.nombre+"</td>"+
													"</tr>");
					});
				
			}		
		})
	}
	
	
	$(document).ready(varCargaMarca);
</script>
</html>

