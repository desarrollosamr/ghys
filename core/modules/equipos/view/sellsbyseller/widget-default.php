<div class="row">
	<div class="col-md-12">
		<h1>Reporte por vendedor</h1>
		<p class="alert alert-success">Debe seleccionar un vendedor para visualizar su reporte.</p>
		<div class="clearfix"></div>
		<form>
			<div class="row">
				<div class="col-md-6">
					<input type="hidden" name="view" value="sellsbyseller">
					<input type="text" name="product" class="form-control">
				</div>
				<div class="col-md-3">
					<button type="submit" class="btn btn-primary"><i class="glyphicon glyphicon-search"></i> Buscar</button>
				</div>
			</div>
		</form>
	</div>

<?php

if(isset($_GET["product"])){
	$products = UserData::getLike($_GET["product"]);
} else {
	$products = UserData::getSellers("");
}
if(count($products)>0){
?>
</div>
<div class="clearfix"></div>
<br><table class="table table-bordered table-hover">
	<thead>
		<th>Codigo</th>
		<th>Nombre</th>
		<th></th>
	</thead>
	<?php foreach($products as $product):?>
	<tr>
		<td><?php echo $product->id; ?></td>
		<td><?php echo $product->name." ".$product->lastname; ?></td>
		<td>
		<a href="index.php?view=sellerreport&id=<?php echo $product->id; ?>" class="btn btn-primary"><i class="glyphicon glyphicon-eye-open"></i> Ver Reporte</a>
		</td>
	</tr>
	<?php endforeach;?>
</table>

<div class="clearfix"></div>

	<?php
}else{
	?>
	<div class="jumbotron">
		<h2>No hay vendedores registrados</h2>
	</div>
	<?php
}

?>
<br><br><br><br><br><br><br><br><br><br>
	</div>
</div>