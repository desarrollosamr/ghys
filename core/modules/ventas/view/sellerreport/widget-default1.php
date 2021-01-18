<?php
if(isset($_POST['id'])){
	$product = SellData::getBySellerId($_POST["id"]);
}else{
	$product = SellData::getBySellerId($_GET["id"]);
}
$client = UserData::getById($_GET["id"]);
if(count($product)>0):
?>
	<div class="row">
		<div class="col-md-12">
			<h1><small>Reporte de ventas del Sr(a): </small><?php echo $client->name." ".$client->lastname; ?> </h1>
			<div class="jumbotron" id="wellcome">
				<h2>Bienvenido al sistema de reportes</h2>
				<p>Te invitamos a que selecciones un rango de fechas (fecha inicial - fecha final) en las opciones de abajo.</p>
			</div>
			<div class="well">
				<table class="table table-bordered">
					<thead>
						<tr>
							<th>Fecha de incio</th>
							<th>Fecha de fin</th>
							<th></th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<form>
								<td><input type="date" name="sd"/> </td>
								<td><input type="date" name="ed"/>   </td>
								<td id="">
									<input type="hidden" name="view" value="sellerreport">
									<input type="hidden" name="id" value="<?php echo $_GET["id"]; ?>">
									<button type="submit" class="btn btn-lg btn-primary">Generar Reporte</button>
								</td>
							</form>
						</tr>
					</tbody>
				</table>
				<div class="alert alert-danger" id="alert">
					<strong></strong>
			  	</div>
			</div>
		</div>
	</div>
	<!--- -->
	<div class="row">

		<div class="col-md-12">
			<?php if(isset($_GET["sd"]) && isset($_GET["ed"]) ):?>
			<?php    if($_GET["sd"]!="" && $_GET["ed"]!=""):?>
				<table class="table table-hover table-bordered">
			  	<thead><th>Id</th><th>Producto</th><th>Cantidad</th><th>Tipo</th><th>Fecha</th></thead>	  				
			  	<?php foreach($product as $ventas):?>
				  <?php $operations = OperationData::getAllByDateOfficialBS($ventas->id, $_GET["sd"],$_GET["ed"]);?>
					 <?php if(count($operations)>0):
					 	$total = 0;?>
					  	<script>$("#wellcome").hide();</script>
						<?php foreach($operations as $operation):?>
							<tr>
								<td><?php echo $operation->id; ?></td>
								<td><?php echo $operation->getProduct()->name; ?></td>
								<td><?php echo $operation->q; ?></td>
								<td><?php echo $operation->getOperationType()->name; ?></td>
								<td><?php echo $operation->created_at; ?></td>
							</tr>
						<?php 
								$total += $operation->monto_e + monto_t;
							endforeach; ?>
							<tr>
								
							</tr>
					 <?php endif; ?>
				<?php endforeach;?>			
			<?php else:?>
				<script>
					$("#wellcome").hide();
				</script>
				<div class="jumbotron">
					<h2>Fecha Incorrectas</h2>
					<p>Puede ser que no selecciono un rango de fechas, o el rango seleccionado es incorrecto.</p>
				</div>
			<?php endif;?>
			<?php endif; ?>
		</div>
		</table>
<?php else:?>
	</div>
	<br><br><br><br>
<div class="jumbotron">
	<h2>No hay ventas</h2>
	<p>No hay ventas reportadas para el Sr(a): <?php echo $client->name." ".$client->lastname; ?></p>
</div>
<?php endif; ?>