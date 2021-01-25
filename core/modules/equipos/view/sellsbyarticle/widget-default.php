<div class="row">
	<div class="jumbotron" id="wellcome">
		<h2>Reporte de ventas</h2>
		<p>Te invitamos a que selecciones un rango de fechas (fecha inicial - fecha final) en las opciones de abajo.</p>
	</div>
	<div class="well">
		<table class="table table-bordered">
			<thead><tr><th>Fecha de inicio</th><th>Fecha de fin</th><th></th></tr></thead>
			<tbody>
				<tr>
					<form>
						<td><input type="date" name="sd"/></td>
						<td><input type="date" name="ed"/></td>
						<td id="">
							<input type="hidden" name="view" value="sells">
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
	<div>
		<?php 
		$total_total = 0;
		$total_total_e=0;
		$total_total_t=0;		
		if(($_GET["sd"]!="" or $_GET["sd"]!=NULL)  && ($_GET["ed"]!="" or $_GET["ed"]!=NULL)){
			$products = SellData::getSellsByDate($_GET["sd"],$_GET["ed"]); 
		}else{
			$products = SellData::getSellsByDate(date("d-m-Y"),date("d-m-Y"));
		}
		if(count($products)>0){
		?>
			<script>
				$("#wellcome").hide();
			</script>
			<br>
			<table class="table table-bordered table-hover	">
				<thead>
					<th>Producto</th>
					<th>Vendidos</th>
					<th>Existencia</th>
					<th>Fecha</th>
				</thead>
				<?php foreach($products as $sell):?>
					<?php
						$operations = OperationData::getAllProductsBySellId($sell->id);
						foreach ($operations as $operation) { 
							// print_r($operation);
							$qx = OperationData::getQYesF($operation->product_id);
							// print "qx=$qx";
							$p = $operation->getProduct();
					?>
							<tr>
								<td>
									<?php $p->name; ?>
								</td>
								<td>
									<?php

									?>		
								</td>
								<td>
									<?php echo $qx; ?>
								</td>		
								<td><?php echo $sell->created_at; ?></td>

							</tr>
					<?php							
						}
					?>				

				<?php 
					$total_total += $total;
					$total_total_e += $sell->monto_e;
					$total_total_t += $sell->monto_t;
				endforeach; ?>
		</table>
		<h3>Total efectivo: <?php echo "$ ".number_format($total_total_e,2,".",","); ?></h3>
		<h3>Total tarjetas: <?php echo "$ ".number_format($total_total_t,2,".",","); ?></h3>
		<h1>Total: <?php echo "$ ".number_format($total_total,2,".",","); ?></h1>		
		<div class="clearfix"></div>
		<?php
		}else{
			?>
			<div class="jumbotron">
				<h2>No hay ventas</h2>
				<p>No se ha realizado ninguna venta.</p>
			</div>
			<?php
		}
		?>
		<br><br><br><br><br><br><br><br><br><br>
	</div>
</div>