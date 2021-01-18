<div class="row">
	<h1><i class='fa fa-reorder'></i> Lista de Productos</h1>
	<div class="clearfix"></div>
	<div class="row">
		<?php
		$products = ProductData::getAll("");
		if(count($products)>0){
			?>
			<form action="core/modules/ventas/view/etiquetas/exportar.php" method="post" id="etiquetar">
				<table class="table table-bordered table-hover">
					<thead>
						<th>Codigo</th>
						<th>Nombre</th>
						<th>Cantidad</th>
						<th>Talla</th>
						<th>Color</th>
						<th>Precio</th>
						<th></th>
					</thead>
					<?php foreach($products as $product):
						$q=OperationData::getQYesF($product->id);	
					?>
					<tr>
						<td><input type=text readonly="readonly" id="codigo" value="<?php echo $product->id; ?>"></td>
						<td><input type=text readonly="readonly" id="nombre" value="<?php echo $product->name; ?>"></td>
						<td><input type="text" id="cant" name="cantidad[]" value="<?php echo $q; ?>"></td>
						<td><input type=text readonly="readonly" id="talla" value="<?php if($product->talla_id!=null){echo $product->getTalla()->name;}else{ echo "<center>----</center>"; }  ?>"></td>
						<td><input type=text readonly="readonly" id="color" value="<?php if($product->color_id!=null){echo $product->getColor()->name;}else{ echo "<center>----</center>"; }  ?>"></td>
						<?php $valores=$product->id.",".$product->name.",".$q.",".$product->getTalla()->name.",".$product->getColor()->name.",".$product->price_out ?>						
						<td><input type=text readonly="readonly" id="precio" value="<?php echo number_format($product->price_out,0,',','.'); ?>"></td>
						<td><input type="checkbox" name="eti[]" id="imprime" value="<?php echo $valores; ?>"/></td>
					</tr>
					<?php endforeach;?>
					<td colspan="6" style="text-align: center;"><button class="btn btn-lg btn-primary" type="submit"><i class="glyphicon glyphicon-print"></i>Imprimir</button></td>
				</table>
				
			</form>
		<div class="clearfix"></div>

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
<script>
	$("#etiquetar").submit(function(e){
		codigo = $("#codigo").val();
		nombre = $("#nombre").val();
		canti = $("#cant").val();
		talla = $("#talla").val();
		color = $("#color").val();
		precio = $("#precio").val();
		valores = codigo+','+nombre+','+canti+','+talla+','+color+','+precio;
		alert(valores);
		$("#imprime").val(valores);



	});
</script>