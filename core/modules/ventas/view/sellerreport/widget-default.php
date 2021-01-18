
<?php

if(isset($_POST['id'])){
	$product = SellData::getBySellerId($_POST["id"]);
}else{
	$product = SellData::getBySellerId($_GET["id"]);
}
$client = UserData::getById($_GET["id"]);
if(count($product)>0){
?>
	<div class="row">
		<div class="col-md-12">
			<h1><small>Reporte de ventas del Sr(a): </small><?php echo $client->name." ".$client->lastname; ?> </h1>
		</div>
	</div>
    <div class="row">
        <form>
            <div class="form-group col-md-6">
                <label>Selecciona fechas:</label>
                <div class="input-group">
                    <div class="input-group-addon">
                        <i class="fa fa-calendar"></i>
                    </div>
                    <input type="text" id="date_range" name="date_range" class="form-control pull-right">
					<input type="hidden" name="view" value="sellerreport">
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

	<!--- -->
	<div class="row">
		<div class="col-md-12">
			<?php if(isset($_GET["date_range"])){
				if($_GET["date_range"]!=""){ ?>
					<script>$("#wellcome").hide();</script>
				<?
					$sd=substr($_GET["date_range"],0,10);
					$ed=substr($_GET["date_range"],13,10);
					$product=SellData::getSellsByDateSeller($_GET["id"],$sd,$ed);
					$total=0;
					$total_e=0;
					$total_t=0;?>							
					<table class="table table-striped">
					  	<thead><th>Id</th><th>Fecha</th><th>Efectivo</th><th>Tarjeta</th><th>Total</th></thead><tbody>	  				
					  	<?php foreach($product as $ventas){ 
					  		$total_e+=$ventas->monto_e;
					  		$total_t+=$ventas->monto_t;?>							  
							<tr>
								<td><?php echo $ventas->id; ?></td>
								<td><?php echo $ventas->created_at; ?></td>
								<td align="right"><?php echo number_format($ventas->monto_e,2,".",","); ?></td>
								<td align="right"><?php echo number_format($ventas->monto_t,2,".",","); ?></td>
								<td align="right"><?php echo number_format($ventas->monto_e+$ventas->monto_t,2,".",","); ?></td>
							</tr>
				 		<?php } ?>
				 		</tbody>
				 		<tr>
				 			<td>Totales</td><td>&nbsp;</td>
							<td align="right"><?php echo number_format($total_e,2,".",","); ?></td>
							<td align="right"><?php echo number_format($total_t,2,".",","); ?></td>
							<td align="right"><?php echo number_format($total_e+$total_t,2,".",","); ?></td>					 			
				 		</tr>
				 	</table>
				<?php } else { ?>
					<script>
						$("#wellcome").hide();
					</script>
					<div class="jumbotron">
						<h2>Fecha Incorrectas</h2>
						<p>Puede ser que no selecciono un rango de fechas, o el rango seleccionado es incorrecto.</p>
					</div>
				<?php }?>
			<?php } else {
				$total=0;
				$total_e=0;
				$total_t=0;?>			
		<table class="table table-striped">
			  <thead><th>Id</th><th>Fecha</th><th>Efectivo</th><th>Tarjeta</th><th>Total</th></thead><tbody>	  				
			  	<?php foreach($product as $ventas){ 
			  		$total_e+=$ventas->monto_e;
			  		$total_t+=$ventas->monto_t;?>							  
					<tr>
						<td><?php echo $ventas->id; ?></td>
						<td><?php echo $ventas->created_at; ?></td>
						<td align="right"><?php echo number_format($ventas->monto_e,2,".",","); ?></td>
						<td align="right"><?php echo number_format($ventas->monto_t,2,".",","); ?></td>
						<td align="right"><?php echo number_format($total_e+$total_t,2,".",","); ?></td>
					</tr>						
				<?php }	?>		
	 		</tbody>
	 		<tr>
	 			<td>Totales</td><td>&nbsp;</td>
				<td align="right"><?php echo number_format($total_e,2,".",","); ?></td>
				<td align="right"><?php echo number_format($total_t,2,".",","); ?></td>
				<td align="right"><?php echo number_format($total_e+$total_t,2,".",","); ?></td>	 		</tr>
							
		</table>
		<?php 	} ?>
		</div>
	</div>
<?php } else {?>
	<br><br><br><br>
	<div class="jumbotron">
		<h2>No hay ventas</h2>
		<p>No hay ventas reportadas para el Sr(a): <?php echo $client->name." ".$client->lastname; ?></p>
	</div>
<?php } ?>