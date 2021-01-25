<?php 
$u=null;
if(Session::getUID()!=""){
  $u = UserData::getById(Session::getUID());	
}
//$anoac=year(date());
?>
<h1><i class='fa fa-archive'></i> Historial de Caja</h1>
<div class="row">
	<div class="well">
			<table class="table table-bordered">
					<thead><tr><th>Año</th><th>Mes</th><th></th></tr></thead>
					<tbody>
						<tr>
							<form>
								<td>
									<select name="ano">
										<option value="2018" selected="selected">2018</option>
										<option value="2019">2019</option>
										<option value="2020">2020</option>
										<option value="2021">2021</option>
										<option value="2022">2022</option>
										<option value="2023">2023</option>
										<option value="2024">2024</option>
										<option value="2025">2025</option>
									</select>
								</td>
								<td>
									<select name="mes">
										<option value="01" selected="selected">Enero</option>
										<option value="02">Febrero</option>
										<option value="03">Marzo</option>
										<option value="04">Abril</option>
										<option value="05">Mayo</option>
										<option value="06">Junio</option>
										<option value="07">Julio</option>
										<option value="08">Agosto</option>
										<option value="09">Septiembre</option>
										<option value="10">Octubre</option>
										<option value="11">Noviembre</option>
										<option value="12">Diciembre</option>
									</select>								
								</td>
								<td id="">
								<input type="hidden" name="view" value="boxhistory">
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
	<div class="col-md-12">
<!-- Single button -->

<div class="clearfix"></div>


<?php
if(($_GET["ano"]!="" or $_GET["ano"]!=NULL)  && ($_GET["mes"]!="" or $_GET["mes"]!=NULL)){
	$boxes = BoxData::getByMonth($_GET["mes"],$_GET["ano"]); 
}else{
	$boxes = BoxData::getCurrent();
}
if(count($boxes)>0){
$total_total = 0;
$total_total_e=0;
$total_total_t=0;
$total_total_c=0;
?>
<script>
	$("#wellcome").hide();
</script>
<br>
<table class="table table-bordered table-hover	">
	<thead>
		<th></th>
		<th>Total</th>
		<th>Efectivo</th>
		<th>Tarjeta</th>
		<th>Costo</th>
		<th>Ganancia</th>
		<th>Fecha</th>
	</thead>
	<?php foreach($boxes as $box):
		$sells = SellData::getByBoxId($box->id);
	?>
	<tr>
		<td style="width:30px;">
			<a href="./index.php?view=b&id=<?php echo $box->id; ?>" class="btn btn-default btn-xs"><i class="fa fa-arrow-right"></i></a>			
		</td>
			<?php
			$total=0;
			$total_e=0;
			$total_t=0;
			$total_costo = 0;
			foreach($sells as $sell){
				$operations = OperationData::getAllProductsBySellId($sell->id);
				foreach ($operations as $operation){
					$product  = $operation->getProduct();
					$total_costo += $operation->q*$product->price_in;
				}
				//if ($sell->operation_type_id == 5) {
				$total += $sell->monto_e + $sell->monto_t;	
				$total_e += $sell->monto_e;
				$total_t += $sell->monto_t;	
				/*}else{			
					$operations = OperationData::getAllProductsBySellId($sell->id);
					foreach($operations as $operation){
						$product  = $operation->getProduct();
						$total += $operation->q*$product->price_out;
					}
				} */
			}
			$total_total += $total;
			$total_total_e += $total_e;
			$total_total_t += $total_t;
			$total_total_c += $total_costo;
			?>			
		<td><?php echo "<b>$ ".number_format($total,2,".",",")."</b>"; ?></td>
		<td><?php echo "<b>$ ".number_format($total_e,2,".",",")."</b>"; ?></td>
		<td><?php echo "<b>$ ".number_format($total_t,2,".",",")."</b>"; ?></td>
		<td><?php echo "<b>$ ".number_format($total_costo,2,".",",")."</b>"; ?></td>
		<td><?php echo "<b>$ ".number_format($total-$total_costo,2,".",",")."</b>"; ?></td>
		<td><?php echo $box->created_at; ?></td>
	</tr>
	<?php endforeach; ?>

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