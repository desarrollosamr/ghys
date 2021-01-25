<div class="row">
    <form>
        <div class="form-group col-md-6">
            <label>Selecciona fechas:</label>
            <div class="input-group">
                <div class="input-group-addon">
                    <i class="fa fa-calendar"></i>
                </div>
                <input type="text" id="date_range" name="date_range" class="form-control pull-right">
				<input type="hidden" name="view" value="ajustes">
				<input type="hidden" name="id" value="<?php echo $_GET["id"]; ?>">                    
                <span class="input-group-btn">
                    <button class="btn btn-info btn-flat" type="submit" name="submitRangeDates">Enviar</button>
                </span>
            </div>
        </div>
    </form>
<div style="float: right;">
	<a href="index.php?view=ajuste" class="btn btn-default"> Nuevo Ajuste</a>
</div></div>
<div class="alert alert-danger" id="alert">
		<strong></strong>
</div>

<div class="row">
	<div class="col-md-12">
	<?php 
	$total_total = 0;
	$total_total_e=0;
	$total_total_t=0;	
	if(isset($_GET["date_range"])){
		if($_GET["date_range"]!=""){ 
			$sd=substr($_GET["date_range"],0,10);
			$ed=substr($_GET["date_range"],13,10);	
			$products = AjustesData::getAllByDate($sd,$ed);
		}
	}else{
		$products = AjustesData::getAll();
	}
	if(count($products)>0){
	?>
		<table class="table table-bordered table-hover">
			<thead><th>Fecha</th><th>Tipo</th><th>Producto</th><th>Talla</th><th>Color</th><th>Cantidad</th></thead>
			<tbody>
			<?php foreach($products as $sell){
				$talla = TallaData::getById($sell->getProduct()->talla_id);
				$color = ColorData::getById($sell->getProduct()->color_id);
				$total_total_e += $sell->monto_e;
				$total_total_t += $sell->monto_t;
				$operations = OperationData::getAllProductsBySellId($sell->id);
				$total=0;
				$total += $sell->monto_e + $sell->monto_t;
				$dcto=0;						
				$total_total += $total;
			?>
			<tr>
				<td><?php echo $sell->date;?></td>
				<td><?php echo $sell->getType()->name; ?></td>
				<td><?php echo $sell->getProduct()->name; ?></td>	
				<td><?php echo $talla->name; ?></td>
				<td><?php echo $color->name; ?></td>	
				<td><?php echo $sell->quantity; ?></td>
			</tr>
			<?php } ?>
		</tbody>
	</table>

	<?php }else{ ?>
		<div class="jumbotron">
			<h2>No hay ajustes</h2>
			<p>No se ha realizado ningun ajuste.</p>
		</div>
	<?php } ?>
</div>	
</div>
