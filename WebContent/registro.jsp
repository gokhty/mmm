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
	 <!-- hacer sql dentro de jsp -->
	 </div>
	 
	 <!-- personaliza tu perfil -->
	 <div>
	 Tengo hijos
	 <input type="radio" name="rbtSi" value="Si"/>Si
	 <input type="radio" name="rbtNo" value="No"/>No
	 
	 Estado civil
	 <!-- radiobutton de estado civl -->
	 <div ng-repeat="x in estados">
	 <input type="radio" name="{{x.id}}" value="{{x.nom}}"/>{{x.nom}}
	 </div>
	 
	 Máximo nivel alcanzado
	 <!-- radiobutton -->
	 <div ng-repeat="x in estudios">
	 <input type="radio" name="{{x.id}}" value="{{x.nom}}"/>{{x.nom}}
	 </div>
	 
	 Mi altura (cm)
	 <!-- comobox con una lista de numeros -->
	 
	 Mi ocupación
	 <input type="text" placeholder="Completar"/>
	</div>
	
	<!-- ¡Falta poco! -->
	<s:textfield name="correo"/>
	<input type="password" placeholder="contraseña"/>
	<input type="password" placeholder="confirma contraseña"/>
	
	</form>
</div>




</body>
<script>
angular.module('menu', []).controller('ella', function($scope, $http) {
	 $scope.estados = [
	                  	{ 
	                    	id: 1, 
	                    	nom: 'Soltero', 
	                  	},
	                  	{ 
	                    	id: 2, 
	                    	nom: 'Tengo una relación', 
	                  	},
	                  	{ 
	                    	id: 3, 
	                    	nom: 'Comprometido', 
	                  	},
	                  ]
	 $scope.estudios = [
	                  	{ 
	                    	id: 1, 
	                    	nom: 'Secundaria', 
	                  	},
	                  	{ 
	                    	id: 2, 
	                    	nom: 'Instituto', 
	                  	},
	                  	{ 
	                    	id: 3, 
	                    	nom: 'Universidad', 
	                  	},
	                  	{ 
	                    	id: 4, 
	                    	nom: 'Maestría', 
	                  	},
	                  ]
	
});
</script>
</html>




