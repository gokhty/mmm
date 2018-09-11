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
<title>Consulta de computadora por Stock</title>
</head>
<body>

	<div class="container">
		<h1>Consulta de computadora por Stock</h1>
		<form action="consultaXStock">
			<label>Sock</label> <input type="text" id="id_Stock">
			<button type="button" class="btn btn-primary" onclick="javascript:filtroStock()">Filtrar</button>
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
	function filtroStock(){
		var idStock=$("#id_Stock").val();
		//alert(idStock);
		$.ajax({
			type: 'get',
			url:  'consultaXStock2?filtro='+idStock,
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
</script>
</html>