<div class="row">
	<div class="col-md-12">
	<a href="index.php?view=reportsbyproduct" class="pull-right btn btn-lg btn-default	">Reporte por producto <i class="glyphicon glyphicon-chevron-right"></i> </a>
	<h1>Reportes</h1>
	<div class="jumbotron" id="wellcome">
		<h2>Bienvenido al sistema de reportes</h2>
		<p>Te invitamos a que selecciones un rango de fechas (fecha inicial - fecha final) en las opciones de abajo.</p>
	</div>

	<div class="well">
			<table class="table table-bordered">
					<thead>
						<tr>
							<th>Fecha de inicio</th>
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
								<input type="hidden" name="view" value="reports">
								<button class="btn btn-lg btn-primary">Generar Reporte</button>
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
<?php if($_GET["sd"]!=""&&$_GET["ed"]!=""):?>
			<?php $operations = OperationData::getAllByDateOfficial($_GET["sd"],$_GET["ed"]);
			 ?>

			 <?php if(count($operations)>0):?>
<script>
	$("#wellcome").hide();
</script>
<table class="table table-bordered">
	<thead>
		<th>Id</th>
		<th>Producto</th>
		<th>Cant.</th>
		<th>Tipo</th>
		<th>Fecha</th>
	</thead>
<?php foreach($operations as $operation):?>
	<tr>
		<td><?php echo $operation->id; ?></td>
		<td><?php echo $operation->getProduct()->name; ?></td>
		<td><?php echo $operation->q; ?></td>
		<td><?php echo $operation->getOperationType()->name; ?></td>
		<td><?php echo $operation->created_at; ?></td>
	</tr>
<?php endforeach; ?>

</table>

			 <?php else:
			 // si no hay operaciones
			 ?>
<script>
	$("#wellcome").hide();
</script>
<div class="jumbotron">
	<h2>No hay operaciones</h2>
	<p>El rango de fechas seleccionado no proporciono ningun resultado de operaciones.</p>
</div>

<?php endif; ?>
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
</div>

<br><br><br><br>