<%@taglib uri="/struts-tags" prefix="s"%>
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
<script type="text/javascript" src="js/angular.min.js"></script>
<link rel="stylesheet" href="css/bootstrap.css"/>
<link rel="stylesheet" href="css/dataTables.bootstrap.min.css"/>
<link rel="stylesheet" href="css/bootstrapValidator.css"/>
<title>Registra Computadora</title>
</head>
<body ng-app="menu" ng-controller="ella">
<div class="container">


	<form action="std" id="id_form">
	 
	 <!-- sera un gusto conocerte -->
	 <div>
	<input type="text" name="nom" placeholder="Mi nombre"/>
	<input type="radio" name="rbt1" value="Hombre"/>Hombre
	<input type="radio" name="rbt2" value="Mujer"/>Mujer
	<input type="date" name="fecha">
	 </div>
	 
	 <!-- conoce solteros cerca de ti -->
	 <div>
	 <!-- combo pais y ciudad -->
	 <select >
	 <option>
	 </select>
	 </div>
	 
	 <!-- personaliza tu perfil -->
	 <div>
	 Tengo hijos
	 <input type="radio" name="rbtSi" value="Si"/>Si
	 <input type="radio" name="rbtNo" value="No"/>No
	 
	 Estado civil
	 <!-- radiobutton de estado civl -->
	 
	 Máximo nivel alcanzado
	 <!-- radiobutton -->
	 
	 Mi altura (cm)
	 <!-- comobox con una lista de numeros -->
	 
	 Mi ocupación
	 <input type="text" placeholder="Completar"/>
	</div>
	
	<!-- ¡Falta poco! -->
	<s:textfield name="correo"/>
	<input type="password" placeholder="contraseña"/>
	<input type="password" placeholder="confirma contraseña"/>
	
			
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
<script>

</script>
</html>




