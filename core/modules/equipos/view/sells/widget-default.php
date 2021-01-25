<div class="row">
    <form>
        <div class="form-group col-md-6">
            <label>Selecciona fechas:</label>
            <div class="input-group">
                <div class="input-group-addon">
                    <i class="fa fa-calendar"></i>
                </div>
                <input type="text" id="date_range" name="date_range" class="form-control pull-right">
				<input type="hidden" name="view" value="sells">
				<input type="hidden" name="id" value="<?php echo $_GET["id"]; ?>">                    
                <span class="input-group-btn">
                    <button class="btn btn-info btn-flat" type="submit" name="submitRangeDates">Enviar</button>
                </span>
            </div>
        </div>
    </form>
</div>
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
			$products = SellData::getSellsByDate($sd,$ed);
		}
	}else{
		$products = SellData::getSells();
	}
	if(count($products)>0){
	?>
		<table class="table table-bordered table-hover">
			<thead><th>&nbsp;</th><th>Productos</th><th>Total</th><th>Forma de pago</th><th>Fecha</th><th>&nbsp;</th><th>&nbsp;</th></thead>
			<tbody>
			<?php foreach($products as $sell){
				$total_total_e += $sell->monto_e;
				$total_total_t += $sell->monto_t;
				$operations = OperationData::getAllProductsBySellId($sell->id);
				$total=0;
				$total += $sell->monto_e + $sell->monto_t;
				$dcto=0;						
				$total_total += $total;
			?>
			<tr>
				<td>
					<a href="index.php?view=onesell&id=<?php echo $sell->id; ?>" class="btn btn-xs btn-default"><i class="glyphicon glyphicon-eye-open"></i></a>
				</td>
				<td><?php echo count($operations);?></td>
				<td><?php echo "<b>$ ".number_format($total)."</b>"; ?></td>
				<td><?php echo $sell->tipo_pago; ?></td>		
				<td><?php echo $sell->created_at; ?></td>
				<?php 
				$u=null;
				if(Session::getUID()!=""){
  					$u = UserData::getById(Session::getUID());
				}
				if($u->is_admin){ ?>
					<td><a href="index.php?view=delsell&id=<?php echo $sell->id; ?>" onclick="return confirm('Confirma la eliminación de esta venta?');" id="delsell" class="btn btn-xs btn-danger"><i class="fa fa-trash"></i></a></td>
					<td><a href="index.php?view=editsell&id=<?php echo $sell->id; ?>" id="editsell" class="btn btn-xs btn-danger"><i class="fa fa-edit"></i></a></td>					
				<?php }	 ?>

			</tr>
			<?php } ?>
		</tbody>
		<tr>
			<td>Total efectivo</td>
			<td align="right"><?php echo "$ ".number_format($total_total_e,2,".",","); ?></td>
		</tr><tr>
			<td>Total tarjetas</td>
			<td align="right"><?php echo "$ ".number_format($total_total_t,2,".",","); ?></td>
		</tr><tr>
			<td>Total</td>
			<td align="right"><?php echo "$ ".number_format($total_total,2,".",","); ?></td>
		</tr>
	</table>

	<?php }else{ ?>
		<div class="jumbotron">
			<h2>No hay ventas</h2>
			<p>No se ha realizado ninguna venta.</p>
		</div>
	<?php } ?>
</div>	
</div>
