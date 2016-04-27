<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="utf-8">
	<title>llamar</title> 
	<!--Estilos-->
	<link rel="shortcut icon" type="image/ico" href="http://localhost/plataforma/public/assets/images/favicon.ico"/>
</head>
<body>
	
		<?=form_open(base_url().'index.php/users/validate/')?>
		<!--Muestra un toast en caso de que los datos sea incorrectos-->
		<?php
		echo '<a href="http://localhost/plataforma/index.php/webservices/getToken"> obtener token</a>'
		?>
	

</div>
</body>
</html>