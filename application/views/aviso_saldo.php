<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<title>Aviso saldo</title> 
	<!--Estilos-->
	<link rel="shortcut icon" type="image/ico" href="http://localhost/blog/public/assets/images/favicon.ico"/>
	<link href='http://localhost/plataforma/public/assets/css/style.css' rel='stylesheet' type='text/css' />

	<script src="http://localhost/plataforma/public/assets/js/card.js"></script>
</head>
<body>
	<!--vista de menu-->
	<?php include('menu.php');?>
	<?php if (!empty($saldo)) : ?>
		<?php foreach($saldo as $saldof) : ?>			
			<?php $saldoz = $saldof->saldo ?>			
		<?php endforeach; ?>
		<!-- If there is no info -->

	<?php endif; ?>

	<!--Formulario para ingresar dinero en la cuenta-->
	<div class="show_entries" >		
		<p>Para realizar el alta a la suscripción necesitas tener saldo positivo en tu cuenta, ingresa una cantidad minima  de 5$ para poder darte de alta en el servicio.</p>
				<?=form_open(base_url().'index.php/plataforma/update_saldo/')?>
		<p>Cantidad:</p>
		<input type="number" class="estiloareanumeros"  required name="quantity" min="5" max="500" placeholder="custom ammount">$
		<div >
			<p><?=form_input('quantityOriginal',$saldoz)?></p> 
		</div>
		<p>Texto legal:</p>
		<textarea class="estiloarea" readonly="">
			Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla pulvinar rutrum magna eu hendrerit. Etiam quis justo porta, dapibus mauris eget, iaculis est. Proin in lorem posuere, lacinia lacus non, ultricies elit. Donec iaculis venenatis mi, at sodales libero venenatis sed. Sed dui tortor, volutpat sit amet tristique ut, ullamcorper egestas lectus. In eget felis diam. Nam sit amet efficitur ex. Ut sollicitudin euismod commodo.

			Nunc quis arcu mauris. Donec sit amet purus quis velit tristique cursus egestas sed eros. Fusce dictum placerat mi, nec volutpat nulla posuere vel. Nulla facilisi. Curabitur congue dui at felis facilisis, sed commodo enim faucibus. Pellentesque suscipit posuere eros ut rutrum. Sed semper egestas metus, eu iaculis arcu placerat vitae. Vivamus finibus vulputate ex, nec eleifend est vehicula a. Quisque malesuada posuere tellus nec varius. Morbi molestie leo suscipit velit posuere feugiat. Aliquam erat volutpat.

			Interdum et malesuada fames ac ante ipsum primis in faucibus. Proin varius elit eget leo gravida, eu mollis justo eleifend. Maecenas sed massa turpis. Proin interdum ex purus, at molestie ante porttitor sed. Cras convallis ante in accumsan aliquet. Sed interdum tristique lobortis. Suspendisse potenti. Nam erat ex, lobortis sed nulla et, accumsan pharetra magna. Interdum et malesuada fames ac ante ipsum primis in faucibus. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Phasellus a hendrerit enim. Nullam ac sagittis ipsum, iaculis egestas nulla.
		</textarea>
		<br/>
		<p>
			<input type="checkbox"  id="terminos" required >
			He leido y acepto la condiciones			 
		</p>
		<?=form_submit('submit', 'Realizar pago')?>
		<p>Datos de pago:</p>
		
		<div class="demo-container">
			<div class="card-wrapper"></div>

			<div class="form-container active">
				<form action="">
					<input placeholder="Card number" required type="text" name="number">
					<input placeholder="Full name" required type="text" name="name">
					<input placeholder="MM/YY" required type="text" name="expiry">
					<input placeholder="CVC" required type="text" name="cvc">
				</form>
			</div>
		</div>	
		
		<script src="../lib/js/card.js"></script>
		<script>
			new Card({
				form: document.querySelector('form'),
				container: '.card-wrapper'
			});
		</script>
	</div>	
</body>
</html>