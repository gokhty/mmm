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


	<form action="perfil" id="id_form">
			<input type="hidden" name="metodo" value="registra">
			<div class="form-group">
				<label class="control-label" for="id_nombre">Nombres</label>
				<input class="form-control" type="text" id="id_nombre" name="computadora.nombre" placeholder="Ingrese el nombre">
			</div>

<input type="checkbox" name="chk1" value="1" />chk1
<input type="checkbox" name="chk2" value="2" />chk2
<input type="checkbox" name="chk3" value="3" />chk3
<input type="checkbox" name="chk4" value="4" />chk4
<input type="checkbox" name="chk5" value="5" />chk5
<input type="checkbox" name="chk6" value="6" />chk6

			<div class="form-group">
				<button type="submit" class="btn btn-primary" >Crea Computadora</button>
			</div>
	</form>
</div>




</body>
</html>




