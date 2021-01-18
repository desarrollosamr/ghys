<?php
$sell = SellData::getById($_GET["id"]);
$u=null;
if(Session::getUID()!=""){
  $u = UserData::getById(Session::getUID());
}
?>
<?php 
	if($sell->operation_type_id==4){?>
	<h1>Resumen de Cambio</h1>
<?php }elseif(!isset($_GET["r"]) or  $_GET["r"]==NULL){?>
	<h1>Resumen de Venta</h1>
<?php }elseif($_GET["r"]=="canres"){?>
	<h1>Retiro de Reserva</h1>
<?php }else{?>
	<h1>Resumen de Reserva</h1>
<?php }?>
<?php if(isset($_GET["id"]) && $_GET["id"]!=""):?>
<?php

$operations = OperationData::getAllProductsBySellId($_GET["id"]);
$recibido = 0;
$dcto = 0;
$recibido = $sell->monto_e + $sell->monto_t;
$total = 0;
$tsd = 0;
$abono = $_GET["abono"];
?>
<?php
if(isset($_COOKIE["selled"])){
	foreach ($operations as $operation) {
//		print_r($operation);
		$qx = OperationData::getQYesF($operation->product_id);
		// print "qx=$qx";
			$p = $operation->getProduct();
		if($qx==0){
			echo "<p class='alert alert-danger'>El producto <b style='text-transform:uppercase;'> $p->name</b> no tiene existencias en inventario.</p>";			
		}else if($qx<=$p->inventary_min/2){
			echo "<p class='alert alert-danger'>El producto <b style='text-transform:uppercase;'> $p->name</b> tiene muy pocas existencias en inventario.</p>";
		}else if($qx<=$p->inventary_min){
			echo "<p class='alert alert-warning'>El producto <b style='text-transform:uppercase;'> $p->name</b> tiene pocas existencias en inventario.</p>";
		}
	}
	setcookie("selled","",time()-18600);
}

?>
<table class="table table-bordered">
<?php if($sell->person_id!=""):
$client = $sell->getPerson();
?>
<tr>
	<td style="width:150px;">Cliente</td>
	<td><?php echo $client->name." ".$client->lastname;?></td>
</tr>

<?php endif; ?>
<?php if($sell->seller!=""):
$seller = $sell->getSeller();
?>
<tr>
	<td>Atendido por</td>
	<td><?php echo $seller->name." ".$seller->lastname;?></td>
</tr>
<?php endif; ?>
</table>
<br><table class="table table-bordered table-hover">
	<thead>
		<th>Codigo</th>
		<th>Cantidad</th>
		<th>Nombre del Producto</th>
		<th>Talla</th>
		<th>Precio Unitario</th>
		<th>Descuento</th>
		<th>Total</th>
	<?php if($sell->operation_type_id==5){  ?>
		<th></th>
	<?php } ?>
	</thead>
<?php
	foreach($operations as $operation){
		$product  = $operation->getProduct();
?>
<tr>
	<td><?php echo $product->id ;?></td>
	<td><?php echo $operation->q ;?></td>
	<td><?php echo $product->name ;?></td>
	<td><?php if($product->talla_id!=null){echo $product->getTalla()->name;}else{ echo "<center>----</center>"; } ?></td>
	<td>$ <?php echo number_format($product->price_out,2,".",",") ;?></td>
	<td> <?php echo $operation->d; ?>%</td>
	<td><b>$ <?php echo number_format($operation->q*$product->price_out*(1-$operation->d/100),2,".",",");$total+=$operation->q*$product->price_out*(1-$operation->d/100);$dcto+=$operation->q*$product->price_out*$operation->d/100;$tsd+=$operation->q*$product->price_out?></b></td>
	<?php if($sell->operation_type_id==5 and $u->is_admin){  ?>
		<td style="width:30px;"><a href="index.php?view=delop&opid=<?php echo $operation->id; ?>&sellid=<?php echo $sell->id; ?>" onclick="return confirm('Confirma la eliminación de esta reserva?');" class="btn btn-xs btn-danger"><i class="fa fa-trash"></i></a></td>
	<?php } ?>
</tr>
<?php
	}
	?>
</table>
<br><br>
<table style="border: 1px solid #dddddd">

	<tr>
		<td style="font-size: 20px;">Subtotal</td>
		<td style="font-size: 20px; text-align: right;"> $ <?php echo number_format($tsd,2,'.',','); ?></td>
	</tr>
	<?php if(isset($_GET["r"]) and  $_GET["r"]!="canres"){?>
	<tr>
		<td style="font-size: 22px;">Descuento:</td>
		<td style="font-size: 22px; text-align: right;"> $ <?php echo number_format($dcto,2,'.',','); ?></td>
	</tr>	
	<?php } ?>
	<?php if($_GET["r"]=="canres"){ ?>
	<tr>
		<td style="font-size: 20px;">Abono</td>
		<td style="font-size: 20px; text-align: right;"> $ <?php echo number_format($abono,2,'.',','); ?></td>
	</tr>		
	<?php } ?>	
	<?php if($_GET["r"]=="canres"){ ?>
	<tr>
		<td style="font-size: 22px;">Total:</td>
		<td style="font-size: 22px; text-align: right;"> $ <?php echo number_format($tsd - $abono,2,'.',','); ?></td>
	</tr>	
	<?php }else{ ?>
		<tr>
			<td style="font-size: 22px;">Total:</td>
			<td style="font-size: 22px; text-align: right;"> $ <?php echo number_format($total,2,'.',','); ?></td>
		</tr>			
	<?php } ?>


	<tr>
		<td style="font-size: 20px;">Efectivo</td>
		<td style="font-size: 20px; text-align: right;"> $ <?php echo number_format($sell->monto_e,2,'.',','); ?></td>
	</tr>
	<tr>
		<td style="font-size: 20px;">Tarjeta</td>
		<td style="font-size: 20px; text-align: right;"> $ <?php echo number_format($sell->monto_t,2,'.',','); ?></td>
	</tr>
	<tr>
		<td style="font-size: 26px;">
		<?php if(!isset($_GET["r"]) or  $_GET["r"]==NULL or $_GET["r"]=="canres"){?>
				Total:
		<?php }else{ ?>
				Saldo:
		<?php }	 ?>		
		</td>
		<td style="font-size: 26px; text-align: right;">
		<?php if(!isset($_GET["r"]) or  $_GET["r"]==NULL){?>		
				$ <?php echo number_format($recibido,2,'.',','); ?>
		<?php }elseif($_GET["r"]=="canres"){ ?>
				$ <?php echo number_format($total-$abono,2,'.',','); ?>
		<?php }elseif($sell->operation_type_id==4){ ?>
				$ <?php echo number_format($recibido,2,'.',','); ?>
		<?php }else{ ?>
				$ <?php echo number_format($total-$recibido,2,'.',','); ?>
		<?php }	 ?>		
			
		</td>
	</tr>
</table><br>
<?php if(isset($_GET["r"]) && $_GET["r"]=="on"){ ?>
   <button class="btn btn-lg btn-primary" onclick="window.location='index.php?view=sell&amp;id=<?php echo $_GET["id"]?>&amp;r=on&amp;abono=<?php echo $_GET["abono"]?>'"><i class="glyphicon glyphicon-usd"></i>Retirar</button>
<?php } ?>
<button class="btn btn-lg btn-primary" onclick="window.location='index.php?view=factura&amp;id=<?php echo $_GET["id"]?>&amp;abono=<?php echo $_GET["abono"]?>'"><i class="glyphicon glyphicon-print"></i>Imprimir</button>
<button class="btn btn-lg btn-primary" onclick="window.location='index.php?view=factura&amp;destino=regalo&amp;id=<?php echo $_GET["id"]?>'"><i class="glyphicon glyphicon-print"></i>Imprimir regalo</button>
<?php else:?>
	501 Internal Error
<?php endif; ?>