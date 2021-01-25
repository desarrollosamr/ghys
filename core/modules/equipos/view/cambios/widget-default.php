<div class="row">
	<div class="col-md-12">
		<h1><i class='glyphicon glyphicon-transfer'></i> Lista de Cambios</h1>
		<div class="clearfix"></div>


<?php

$products = CambiosData::getCambios();

if(count($products)>0){

	?>
<br>
	<?php foreach($products as $cambio):?>
	<table class="table table-bordered table-hover	">
	<thead style="background-color:#d3e6e7">
		<th>Cambio</th>
		<th>Motivo</th>
		<th>Fecha</th>
		<th></th>
	</thead>
		<tr>
			<td>
				<?php echo $cambio->id; ?>		
			</td>
			<td>
				<?php echo $cambio->motivo; ?>
			</td>
			<td>
				<?php echo $cambio->created_at; ?>
			</td>
		</tr>
		<tr style="background-color:#abe68c">
			<th></th>
			<th>Entradas</th>
			<th>Talla</th>
			<th>Color</th>			
		</tr>
			<?php		
			$devo  = OperationData::getAllProductsBySellId($cambio->venta_in);
			foreach($devo as $pdev){ 
				$product  = $pdev->getProduct();
			?>
				<tr>
					<td></td>
					<td>
						<?php echo $product->name; ?>
					</td>
					<td>
						<?php echo $product->getTalla()->name; ?>
					</td>
					<td>
						<?php echo $product->getColor()->name; ?>
					</td>
				</tr>
			<?php } ?>				
		<tr style="background-color:#abe68c">
			<th></th>
			<th>Salidas</th>
			<th>Talla</th>
			<th>Color</th>			
		</tr>
			<?php		
			$prsa  = $cambio->getSale();
			foreach($prsa as $sal){ 
				$product = $sal->getProduct();
			?>
				<tr>
					<td></td>
					<td>
						<?php echo $product->name; ?>
					</td>
					<td>
						<?php echo $product->getTalla()->name; ?>
					</td>
					<td>
						<?php echo $product->getColor()->name; ?>
					</td>
				</tr>
			<?php } ?>				
		</table>
	<?php endforeach; ?>

<div class="clearfix"></div>

	<?php
}else{
	?>
	<div class="jumbotron">
		<h2>No hay cambios</h2>
		<p>No se ha realizado ningún cambio.</p>
	</div>
	<?php
}

?>
<br><br><br><br><br><br><br><br><br><br>
	</div>
</div>