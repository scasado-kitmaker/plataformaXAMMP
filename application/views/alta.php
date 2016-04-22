<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<title>Alta en el servicio</title> 
	<!--Estilos-->
	<link rel="shortcut icon" type="image/ico" href="http://localhost/blog/public/assets/images/favicon.ico"/>
</head>
<body>
	<!--vista de menu-->
	<?php include('menu.php');?>

	<!--Formulario para aceptar el alta en el servicio-->
	<div class="show_entries" >
		<?=form_open(base_url().'index.php/plataforma/alta/')?>
		<p>Texto legal:</p>
		<p><?=form_textarea('content','Texto legal to complicado shur','readonly')?></p>	
		<input type="checkbox" name="vehicle" value="Bike"> He leido y acepto la condiciones<br>

		<!-- if que compruebe el saldo de la bbdd del usuario, si es mayor a 0 boton desactivado y aviso de saldo insuficiente, boton de añadir saldo activado-->
		<?=form_submit('submit', 'Darse de alta')?>
	</div>
</body>
</html>