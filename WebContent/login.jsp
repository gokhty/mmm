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
	<form action="login" id="id_form" method="post">
			<div class="form-group">
				<label class="control-label" for="id_nombre">Nombres</label>
				<input class="form-control" type="text" id="id_nombre" name="usu" placeholder="Ingrese el nombre">
			</div>
			<div class="form-group">
				<label class="control-label" for="id_precio">Precio</label>
				<input class="form-control" type="text" id="id_precio" name="pass" placeholder="Ingrese el precio">
			</div>

			<div class="form-group">
				<button type="submit" class="btn btn-primary" id="btnLogin" >Crea Computadora</button>
			</div>

	</form>

	<form action="registrar" id="id_form" method="post">
			<div class="form-group">
				<label class="control-label" for="id_nombre">Nombres</label>
				<input class="form-control" type="text" id="id_nombre" name="usu" placeholder="Ingrese el nombre">
			</div>
				

			<div class="form-group">
				<button type="submit" class="btn btn-primary" id="btnLogin" >Crea Computadora</button>
			</div>

	</form>
</div>
</body>
<script>
</script>
</html>




