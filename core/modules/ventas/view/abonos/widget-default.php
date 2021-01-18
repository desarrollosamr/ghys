<?php
$venta = SellData::getById($_GET["id"]);
$operations = OperationData::getAllProductsBySellId($_GET["id"]);
$tsd = 0;
foreach($operations as $operation){
	$product  = $operation->getProduct();
	$tsd+=$operation->q*$product->price_out;
}
?>
<div class="row">
	<div class="col-md-12">
		<h1><i class='glyphicon glyphicon-shopping-cart'></i> Abonos para la reserva <?php echo $_GET["id"] ?></h1></div>
	<div style="float: right;">
		<a href="index.php?view=abono&reserva=<?php echo $_GET["id"]?>" class="btn btn-primary"> Nuevo Abono</a>
	</div>	
	<div class="clearfix"></div>
<?php
$products = AbonosData::getByReserva($_GET["id"]);
if(count($products)>0){
	$t_abono_e = 0;
	$t_abono_t1 = 0;
	$t_abono_t2 = 0;
	$t_total = 0;
	?>
<br>
<table class="table table-bordered table-hover	">
	<thead>
		<th>Id</th>
		<th>Fecha</th>
		<th>Efectivo</th>
		<th>Tarjeta 1</th>
		<th>Tarjeta 2</th>
		<th>Creado</th>
		<th></th>
	</thead>
	<tr>
		<td>
			Inicial
		</td>
		<td>
			<?php echo substr($venta->created_at,0,10);	?>		
		</td>
		<td align="right">
			<?php echo "<b>$ ".number_format($venta->monto_e)."</b>"; ?>
		</td>
		<td align="right">
			<?php echo "<b>$ ".number_format($venta->monto_t1)."</b>"; ?>
		</td>
		<td align="right">
			<?php echo "<b>$ ".number_format($venta->monto_t2)."</b>"; ?>
		</td>		
		<td><?php echo $venta->created_at; ?></td>
	</tr>
	<?php foreach($products as $sell) {?>

	<tr>
		<td>
			<?php echo $sell->id; ?>
		</td>
		<td>
			<?php echo $sell->fecha;	?>		
		</td>
		<td align="right">
			<?php echo "<b>$ ".number_format($sell->monto_e)."</b>"; ?>
		</td>
		<td align="right">
			<?php echo "<b>$ ".number_format($sell->monto_t1)."</b>"; ?>
		</td>
		<td align="right">
			<?php echo "<b>$ ".number_format($sell->monto_t2)."</b>"; ?>
		</td>		
		<td><?php echo $sell->created_at; ?></td>
		<td><a href="index.php?view=editabono&id=<?php echo $sell->id; ?>&venta=<?php echo $_GET["id"]; ?>" id="editabono" class="btn btn-xs btn-danger"><i class="fa fa-edit"></i></a></td>
	</tr>

<?php 
		$t_abono_e  += $sell->monto_e;
		$t_abono_t1 += $sell->monto_t1;
		$t_abono_t2 += $sell->monto_t2;
	}
		$t_abono_e  += $venta->monto_e;
		$t_abono_t1 += $venta->monto_t1;
		$t_abono_t2 += $venta->monto_t2;
		$t_total += $t_abono_e + $t_abono_t1 + $t_abono_t2; ?>
	<tr>
			<td colspan="2" align="center">Totales</td>
			<td align="right"><?php echo "<b>$ ".number_format($t_abono_e)."</b>"; ?></td>
			<td align="right"><?php echo "<b>$ ".number_format($t_abono_t1)."</b>"; ?></td>
			<td align="right"><?php echo "<b>$ ".number_format($t_abono_t2)."</b>"; ?></td>
			<td></td>
			<td></td>
	</tr>

</table>


<table class="table table-bordered table-condensed">
	<tr>
		<td>Total reserva</td><td><?php echo "<b>$ ".number_format($tsd)."</b>"; ?></td>
	</tr>
	<tr>
		<td>Total abonos</td><td><?php echo "<b>$ ".number_format($t_total)."</b>"; ?></td>
	</tr>
	<tr>
		<td>Saldo</td><td><?php echo "<b>$ ".number_format($tsd-$t_total)."</b>"; ?></td>
	</tr>
</table>
<div class="clearfix"></div>

	<?php
}else{
	?>
	<div class="jumbotron">
		<h2>No hay abonos</h2>
		<p>No se ha realizado ningún abono a esta reserva.</p>
	</div>
	<?php
}

?>
<br><br><br><br><br><br><br><br><br><br>
	</div>
</div>