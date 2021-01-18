<div class="row">
	<div class="col-md-12">
<!-- Single button -->
		<h1><i class="glyphicon glyphicon-stats"></i> Inventario valorizado y ganancias proyectadas</h1>
		<div class="clearfix"></div>
<?php
	$products = ProductData::getAll("");
if(count($products)>0){
	$total_c = 0;
	$total_v = 0;
	foreach($products as $product){
		$q=OperationData::getQYesF($product->id);
		$total_c += $q*$product->price_in;
		$total_v += $q*$product->price_out;
	}
	$total_g = $total_v - $total_c; 
?>
	<table class="table table-bordered table-hover">
	<tr>
		<td>Costo del inventario valorizado</td>
		<td><?php echo "<b>$ ".number_format($total_c,2,".",",")."</b>";  ?></td>
	</tr>
	<tr>
		<td>Ventas proyectadas</td>
		<td><?php echo "<b>$ ".number_format($total_v,2,".",",")."</b>";  ?></td>
	</tr>
	<tr>
		<td>Ganancias proyectadas</td>
		<td><?php echo "<b>$ ".number_format($total_g,2,".",",")."</b>";  ?></td>
	</tr>
</table>
<?php
}else{
	?>
	<div class="jumbotron">
		<h2>No hay productos</h2>
		<p>No se han agregado productos a la base de datos, puedes agregar uno dando click en el boton <b>"Agregar Producto"</b>.</p>
	</div>
	<?php
}

?>
<br><br><br><br><br><br><br><br><br><br>
	</div>
</div>