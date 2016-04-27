<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="utf-8">
	<title>Identificate</title> 
	<!--Estilos-->
	<link rel="shortcut icon" type="image/ico" href="http://localhost/plataforma/public/assets/images/favicon.ico"/>
</head>
<body>
	<?php include('menu.php');?>
	<div class="show_entries">		
		<?=form_open(base_url().'index.php/users/validate/')?>
		<!--Muestra un toast en caso de que los datos sea incorrectos-->
		<?php echo (isset($error)) ? '<script type="text/javascript">

		toastr.options = {
			"closeButton": true,
			"debug": false,
			"newestOnTop": false,
			"progressBar": true,
			"positionClass": "toast-top-full-width",
			"preventDuplicates": false,
			"onclick": null,
			"showDuration": "300",
			"hideDuration": "1000",
			"timeOut": "5000",
			"extendedTimeOut": "1000",
			"showEasing": "swing",
			"hideEasing": "linear",
			"showMethod": "fadeIn",
			"hideMethod": "fadeOut"
		}
		Command: toastr["error"]("Los datos introducidos son incorrectos", "Aviso")
	</script>' 
	: '';?>
	<p>telefono: <?=form_input('username','','placeholder="Usuario"')?></p>   
	<p>Contraseña: <?=form_password('password','','placeholder="Contraseña"')?></p>
	<?php
	echo '<p>¿No tienes cuenta?<a href="http://localhost/plataforma/index.php/users/signup/"> ¡Registrate!</a></p>'
	?>
	<?=form_submit('submit', 'Iniciar sesión')?>
</div>

</div>
</body>
</html>