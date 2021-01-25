<?php 
$u=null;
if(Session::getUID()!=""){
  $u = UserData::getById(Session::getUID());	
}
?>
<div class="row">
	<div class="col-md-12">
<div class="btn-group pull-right">
<a href="./index.php?view=boxhistory" class="btn btn-primary "><i class="fa fa-clock-o"></i> Historial</a>
<a href="./index.php?view=processbox" class="btn btn-primary ">Procesar Ventas <i class="fa fa-arrow-right"></i></a>
</div>
<h1><i class='fa fa-archive'></i> Caja</h1>
<div class="clearfix"></div>


<?php
$products = SellData::getSellsUnBoxed();
if(count($products)>0){
$total_total = 0;
$total_total_c = 0;
$total_total_e = 0;
$total_total_t = 0;
?>
<br>
<table class="table table-bordered table-hover	">
	<thead>
		<th></th>
		<th>Productos</th>
		<th>Total</th>
		<th>Efectivo</th>
		<th>Tarjeta</th>
		<th>Costo</th>
		<th>Ganancia</th>
		<th>Fecha</th>
	</thead>
	<?php foreach($products as $sell):?>
	<tbody>
		<tr>
			<td style="width:30px;">
			<td>
				<?php
				$operations = OperationData::getAllProductsBySellId($sell->id);
				echo count($operations);
				?>
			</td>
			<td>
				<?php
				$total_c=0;
				foreach($operations as $operation){
					$product  = $operation->getProduct();
					$total_c += $operation->q*$product->price_in;
				}
				/*
				
				if($sell->monto_e+$sell->monto_t<$total){
				*/
					$total_total += $sell->monto_e+$sell->monto_t;
					$total_total_c += $total_c;
					$total_total_e += $sell->monto_e;
					$total_total_t += $sell->monto_t;
					echo "<b>$ ".number_format($sell->monto_e+$sell->monto_t,2,".",",")."</b>";
				/*
				}else{
					$total_total += $total;
					echo "<b>$ ".number_format($total,2,".",",")."</b>";					
				}
				*/

				?>			
			</td>
			<td><?php echo "<b>$ ".number_format($sell->monto_e,2,".",",")."</b>"; ?></td>
			<td><?php echo "<b>$ ".number_format($sell->monto_t,2,".",",")."</b>"; ?></td>
			<td><?php echo "<b>$ ".number_format($total_c,2,".",",")."</b>"; ?></td>
			<td><?php echo "<b>$ ".number_format($sell->monto_e+$sell->monto_t-$total_c,2,".",",")."</b>";?></td>
			<td><?php echo $sell->created_at; ?></td>
		</tr>

<?php endforeach; ?>
	</tbody>
</table>
<h3>Total efectivo: <?php echo "$ ".number_format($total_total_e,2,".",","); ?></h3>
<h3>Total tarjetas: <?php echo "$ ".number_format($total_total_t,2,".",","); ?></h3>
<h1>Total: <?php echo "$ ".number_format($total_total,2,".",","); ?></h1>
<?php if($u->is_admin){ ?>

<h3>Total costo: <?php echo "$ ".number_format($total_total_c,2,".",","); ?></h3>
<h1>Ganancia: <?php echo "$ ".number_format($total_total-$total_total_c,2,".",","); ?></h1>
	<?php }
}else {

?>
	<div class="jumbotron">
		<h2>No hay ventas</h2>
		<p>No se ha realizado ninguna venta.</p>
	</div>

<?php } ?>
<br><br><br><br><br><br><br><br><br><br>
	</div>
</div>