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
<title>Registra Usuario</title>
</head>
<body ng-app="menu" ng-controller="ella">
<div class="container">


	<form action="registraUsuario" id="id_form">
	 
	 <!-- sera un gusto conocerte -->
	 <div>
	<input type="text" name="nom" placeholder="Mi nombre"/>
	<input type="radio" name="rbt1" value="Hombre"/>Hombre
	<input type="radio" name="rbt2" value="Mujer"/>Mujer
	<input type="date" name="fecha">
	 </div>
	 <br>
	 <hr>
	 <br>
	 
	 <!-- conoce solteros cerca de ti -->
	 
	 <!-- combo pais y ciudad -->
	 <!-- hacer sql dentro de jsp -->
	 
	 <select name="cboPais">
	 <option value="Peru">Peru
	 <option value="Venezuela">Venezuela
	 <option value="colombia">Argentina
	 </select>
	 <input type="text" placeholder="Ciudad o estado" name="ciudadoestado"/>
	  <br>
	 <hr>
	 <br>
	 <!-- personaliza tu perfil -->
	 <div>
	 Tengo hijos
	 <br>
	 <input type="radio" name="rbtH" value="Si"/>Si
	 <br>
	 <input type="radio" name="rbtH" value="No"/>No
	  <br>
	 <hr>
	 <br>
	 Estado civil
	 <br>
	 <!-- radiobutton de estado civl -->
	 <div>
	 <input type="radio" name="rbtCivil" value=""/>Soltero<br>
	 <input type="radio" name="rbtCivil" value=""/>Tengo una relación<br>
	 <input type="radio" name="rbtCivil" value=""/>Comprometido<br>
	 </div>
	  <br>
	 <hr>
	 <br>
	 Máximo nivel alcanzado
	 <!-- radiobutton -->
	 <div>
	 <input type="radio" name="" value="rbtNivel"/>Secundaria<br>
	 <input type="radio" name="" value="rbtNivel"/>Instituto<br>
	 <input type="radio" name="" value="rbtNivel"/>Universidad<br>
	 <input type="radio" name="" value="rbtNivel"/>Maestría<br>
	 </div>
	  <br>
	 <hr>
	 <br>
	 Mi altura (cm)
	 <select name="cboCm">
	 <option value="150">150
	 <option value="160">160
	 <option value="170">170
	 <option value="180">180
	 <option value="190">190
	 <option value="200">200
	 </select>
	  <br>
	 <hr>
	 <br>
	 Mi ocupación
	 <input type="text" placeholder="Completar" name="ocu"/>
	</div>
	 <br>
	 <hr>
	 <br>
	<!-- ¡Falta poco! -->
	<s:textfield name="correo"/>
	<input type="password" placeholder="contraseña" name="pass"/>
	<input type="password" placeholder="confirma contraseña" name="pass2"/>
	
	<input type="submit" value="Enviar" />
	</form>
</div>




</body>
<script>
angular.module('menu', []).controller('ella', function($scope, $http) {
	$scope.listaPaises = function() {
		
		$http({
		method: 'POST',
		url: 'http://gokhty.skn1.com/dam1/paises.php'
		}).then(function(response) {
		$scope.datos = response.data.paises;
		});
		
	}
	
});
</script>
</html>




