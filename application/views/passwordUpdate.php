<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<title>Registrate</title> 
	<!--Estilos-->
	<link rel="shortcut icon" type="image/ico" href="http://localhost/blog/public/assets/images/favicon.ico"/>
</head>
<body>
	<!--Formulario usado para enviar los datos para crear un usuario-->
	<?php include('menu.php');?>
	<div class="show_entries">		
		<?=form_open(base_url().'index.php/users/updatePassword/')?>
		<div style="display: none;">
		<p>Name: <?=form_input('telefono','','placeholder="Introduce tu telefono, sera tu nick de usuario."')?></p>
		</div>
		<p>Password: <?=form_password('password','','placeholder="Introduce tu nueva contraseña"')?></p>
		<?=form_submit('submit', 'Actualizar contraseña')?>
	</div>
</body>
</html>