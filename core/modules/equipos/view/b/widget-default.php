<div class="row">
	<div class="col-md-12">

<!-- Single button -->
<div class="btn-group pull-right">
<a href="./index.php?view=boxhistory" class="btn btn-default"><i class="fa fa-clock-o"></i> Historial</a>
<div class="btn-group">
  <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
    <i class="fa fa-download"></i> Descargar <span class="caret"></span>
  </button>
  <ul class="dropdown-menu pull-right" role="menu">
    <li><a href="report/box-word.php?id=<?php echo $_GET["id"];?>">Word 2007 (.docx)</a></li>
  </ul>
</div>
</div>
		<h1><i class='fa fa-archive'></i> Corte de Caja #<?php echo $_GET["id"]; ?></h1>
		<div class="clearfix"></div>


<?php
$products = SellData::getByBoxId($_GET["id"]);
if(count($products)>0){
$total_total = 0;
$total_d = 0;
$total_e = 0;
$total_t = 0;
?>
<br>
<table class="table table-bordered table-hover	">
	<thead>
		<th></th>
		<th>Total</th>
		<th>Forma de pago</th>
		<th>Fecha</th>
	</thead>
	<?php foreach($products as $sell):?>

	<tr>
		<td style="width:30px;">
			<a href="./index.php?view=onesell&id=<?php echo $sell->id; ?>" class="btn btn-default btn-xs"><i class="fa fa-arrow-right"></i></a>			
		</td>
		<?php
		$total=0;
		$dcto = 0;		
		//if ($sell->operation_type_id == 5) {
			$total += $sell->monto_e + $sell->monto_t;	
		/*}else{			
			$operations = OperationData::getAllProductsBySellId($sell->id);
			foreach($operations as $operation){
				$product  = $operation->getProduct();
				$total += $operation->q*$product->price_out*(1-$operation->d/100);
				$dcto += $operation->q*$product->price_out*($operation->d/100);
			}
		}*/
		$total_total += $total;
		$total_d += $dcto;	
				
		?>
		<td>
			<?php
			echo "<b>$ ".number_format($total,2,".",",")."</b>";
			switch($sell->tp){
				case "E":
					$total_e += $total;
					break;
				case "T":
					$total_t += $total;
					break;
				case "M":
					$total_e += $sell->monto_e;
					$total_t += $sell->monto_t;
					break;
			}	
			?>			

		</td>
		<td><?php echo $sell->tp; ?></td>
		<td><?php echo $sell->created_at; ?></td>
	</tr>

<?php endforeach; ?>

</table>
<h3>Total efectivo: <?php echo "$ ".number_format($total_e,2,".",","); ?></h3>
<h3>Total tarjetas: <?php echo "$ ".number_format($total_t,2,".",","); ?></h3>
<h3>Total descuento: <?php echo "$ ".number_format($total_d,2,".",","); ?></h3>
<h1>Total: <?php echo "$ ".number_format($total_total,2,".",","); ?></h1>
	<?php
}else {

?>
	<div class="jumbotron">
		<h2>No hay ventas</h2>
		<p>No se ha realizado ninguna venta.</p>
	</div>

<?php } ?>
<br>
	</div>
</div>