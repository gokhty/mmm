
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
<link rel="stylesheet" href="css/bootstrap.css"/>
<link rel="stylesheet" href="css/dataTables.bootstrap.min.css"/>
<link rel="stylesheet" href="css/bootstrapValidator.css"/>
<title>Registra Computadora</title>
</head>
<body>

<s:if test="%{#session.permiso == 'sip'}">
<s:property value="#usu"/>
</s:if>
<s:else>
<%response.sendRedirect("login.jsp");%>
</s:else>



<div class="container">

<h3>abc</h3>

<form action="eli" method="post">
<s:actionmessage name="correo"/>
<button type="submit">cerrar</button>
</form>

</div>

</body>
</html>




