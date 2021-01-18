<?php
	if (isset($_GET["abono"])){
		$abono = $_GET["abono"];
	}else{
		$abono = $_POST["abono"];
	}
?>
<div class="row">
	<div class="col-md-12">
	<h1>Venta</h1>
	<p><b>Buscar producto por nombre o por codigo:</b></p>
		<form>
		<div class="row">
			<div class="col-md-6">
				<input type="hidden" name="view" value="sell">
				<?php if(isset($_GET["abono"]) && isset($_GET["r"])){ ?>
					<input type="hidden" name="r" value="on"/>
					<input type="hidden" name="abono" value="<?php echo $_GET["abono"] ?>"/>				<?php } ?>
				<input type="text" name="product" class="form-control">
			</div>
			<div class="col-md-3">
			<button type="submit" class="btn btn-primary"><i class="glyphicon glyphicon-search"></i> Buscar</button>
			</div>
		</div>
		</form>
	</div>

<?php if(isset($_GET["product"])): ?>
	<?php
$products = ProductData::getLike($_GET["product"]);
if(count($products)>0){
	?>
<h3>Resultados de la Busqueda</h3>
<table class="table table-bordered table-hover">
	<thead>
		<th>Codigo</th>
		<th>Nombre</th>
		<th>Color</th>
		<th>Talla</th>
		<th>Precio unitario</th>
		<th>En inventario</th>
		<th>Cantidad</th>
		<th>Descuento</th>
		<th style="width:100px;"></th>
	</thead>
	<?php
	$products_in_cero=0;
	foreach($products as $product):
		$q= OperationData::getQYesF($product->id);
	?>
	<?php 
	if($q>0):?>
		<form method="post" action="index.php?view=addtocart">
				<?php if(isset($_GET["abono"]) && isset($_GET["r"])){ ?>
					<input type="hidden" name="r" value="on"/>
					<input type="hidden" name="abono" value="<?php echo $_GET["abono"] ?>"/>				<?php } ?>		
	<tr class="<?php if($q<=$product->inventary_min){ echo "danger"; }?>">
		<td style="width:80px;"><?php echo $product->id; ?></td>
		<td><?php echo $product->name; ?></td>
		<td><?php if($product->color_id!=null){echo $product->getColor()->name;}else{ echo "<center>----</center>"; } ?></td>
		<td><?php if($product->talla_id!=null){echo $product->getTalla()->name;}else{ echo "<center>----</center>"; } ?></td>

		<td><b>$<?php echo $product->price_out; ?></b></td>
		<td>
			<?php echo $q; ?>
		</td>
		<td>
		<input type="hidden" name="product_id" value="<?php echo $product->id; ?>">
		<input type="" class="form-control" required name="q" placeholder="Cantidad de producto ..."></td>
		<td><input type="" class="form-control" required name="d" value="0" placeholder="Descuento ..."></td>
		<td style="width:183px;">
		<button type="submit" class="btn btn-primary"><i class="glyphicon glyphicon-shopping-cart"></i> Agregar a la venta</button>
		</td>
	</tr>
	</form>
<?php else:$products_in_cero++;
?>
<?php  endif; ?>
	<?php endforeach;?>
</table>
<?php if($products_in_cero>0){ echo "<p class='alert alert-warning'>Se omitieron <b>$products_in_cero productos</b> que no tienen existencias en el inventario. <a href='index.php?module=inventary'>Ir al Inventario</a>"; }?>

	<?php
}
?>
<br><hr>
<hr><br>
<?php else:
?>

<?php endif; ?>

<!-- 
**********************************************
Código para manejar los desfases en inventario
**********************************************
 -->

<?php if(isset($_SESSION["errors"])):?>
	<h2>Errores</h2>
	<p></p>
	<table class="table table-bordered table-hover">
	<tr class="danger">
		<th>Codigo</th>
		<th>Producto</th>
		<th>Talla</th>
		<th>Color</th>
		<th>Mensaje</th>
	</tr>
	<?php foreach ($_SESSION["errors"]  as $error):
	$product = ProductData::getById($error["product_id"]);
	?>
	<tr class="danger">
		<td><?php echo $product->id; ?></td>
		<td><?php echo $product->name; ?></td>
		<td><?php if($product->talla_id!=null){echo $product->getTalla()->name;}else{ echo "<center>----</center>"; } ?></td>		
		<td><?php if($product->color_id!=null){echo $product->getColor()->name;}else{ echo "<center>----</center>"; } ?></td>
		<td><b><?php echo $error["message"]; ?></b></td>
	</tr>

	<?php endforeach; ?>
	</table>
	<?php
	unset($_SESSION["errors"]);
endif; ?>


<!--- 
************************************************
Carrito de compras
************************************************
 -->
 
<?php 
if(isset($_GET["id"]) && $_GET["id"]!=""){
	$sell = SellData::getById($_GET["id"]);
	$comprador = $sell->getPerson();

	
	$operations = OperationData::getAllProductsBySellId($_GET["id"]);
	$_SESSION["cart"] = array();
	foreach ($operations as $operation) {
		$nc = count($cart);
		$product = array("product_id"=>$operation->product_id,"q"=>$operation->q,"d"=>$operation->d);
		$cart[$nc] = $product;
		$_SESSION["cart"] = $cart;
	}
}

?>
<?php if(isset($_SESSION["cart"])):
$total = 0;
?>

<!-- ******************************  -->
<h2>Lista de venta</h2>
<!-- ******************************  -->

<table class="table table-bordered table-hover">
<thead>
	<th style="width:30px;">Codigo</th>
	<th style="width:30px;">Cantidad</th>
	<th style="width:30px;">Unidad</th>
	<th>Producto</th>
	<th style="width:30px;">Talla</th>
	<th style="width:30px;">Color</th>	
	<th style="width:100px;">Precio Unitario</th>
	<th style="width:100px;">Descuento</th>
	<th style="width:100px;">Precio Total</th>
	<th ></th>
</thead>
<?php foreach($_SESSION["cart"] as $p):
$product = ProductData::getById($p["product_id"]);
?>
<tr >
	<td><?php echo $product->id; ?></td>
	<td ><?php echo $p["q"]; ?></td>
	<td><?php echo $product->unit; ?></td>
	<td><?php echo $product->name; ?></td>
	<td><?php if($product->talla_id!=null){echo $product->getTalla()->name;}else{ echo "<center>----</center>"; } ?></td>		
	<td><?php if($product->color_id!=null){echo $product->getColor()->name;}else{ echo "<center>----</center>"; } ?></td>
	<td><b>$ <?php echo number_format($product->price_out); ?></b></td>
	<td>

			<b> <?php echo $p["d"]!="" ? number_format($p["d"]) : 0; ?>%</b>	
	</td>
	<td><b>$ <?php  $pt = $product->price_out*$p["q"]*(1-$p["d"]/100); $total +=$pt; echo number_format($pt); ?></b></td>

	<?php if(isset($_GET["abono"]) && isset($_GET["r"])){ ?>
		<td style="width:30px;"><a href="index.php?view=clearcart&product_id=<?php echo $product->id; ?>&abono=<?php echo $_GET["abono"] ?>&r=on" class="btn btn-danger"><i class="glyphicon glyphicon-remove"></i> Cancelar</a></td>					
	<?php } else { ?>			
		<td style="width:30px;"><a href="index.php?view=clearcart&product_id=<?php echo $product->id; ?>" class="btn btn-danger"><i class="glyphicon glyphicon-remove"></i> Cancelar</a></td>
	<?php } ?>
</tr>

<?php endforeach; ?>
</table>
<?php if(isset($_GET["r"]) && $_GET["r"]!=""){ ?>
	<form method="post" class="form-horizontal" id="processsell" action="index.php?view=processsell&r=on">
		<input type="hidden" name="abono" value="<?php echo $_GET["abono"]; ?>"/>
<?php }else{ ?>
	<form method="post" class="form-horizontal" id="processsell" action="index.php?view=processsell">
<?php } ?>
<h2>Resumen</h2>
<div class="form-group">
	<label for="inputEmail1" class="col-lg-2 control-label">Fecha</label>
    <div class="col-lg-10">
    	<input type="hidden" name="rescan" value="<?php echo $_GET["id"]; ?>"/>
      <input type="datetime" name="fecha" required class="form-control" id="fecha" value="<?php echo date('Y-m-d h:i:s');?>" placeholder="Fecha">
	</div>
    <label for="inputEmail1" class="col-lg-2 control-label">Cliente</label>
    <div class="col-lg-10">
	    <?php 
	    if(isset($_GET["id"]) && $_GET["id"]!=""){ ?>
	    	<input type="hidden" name="client_id" value="<?php echo $sell->person_id; ?>"/>
	    	<input  type="hidden" name="abono" value="<?php echo $abono; ?>"/>
	    <?php
	    	echo $comprador->name." ".$comprador->lastname; 
		}else{ 
			$clients = PersonData::getClients();
		    ?>
		    <select name="client_id" id="cliente" class="form-control">
			    <option value="">-- NINGUNO --</option>
			    <?php foreach($clients as $client):?>
			    	<option value="<?php echo $client->id;?>"><?php echo $client->name." ".$client->lastname;?></option>
			    <?php endforeach;?>
	    	</select>
	    <?php } ?>
    </div>
  </div>
	<?php if ($abono > 0){ ?>
	<h3>Abono: <?php echo number_format($abono,2,'.',','); ?></h3>
	<?php } ?>
<div class="form-group">
	<?php if(!isset($_GET["abono"]) && !isset($_GET["r"])){ ?>
		<label for="inputEmail1" class="col-lg-2 control-label">Reserva</label>
		<div class="col-lg-10">
	      <input type="checkbox" name="reserva" class="form-control" id="reserva">
		</div>
    <?php } ?>
	<label for="inputEmail1" class="col-lg-2 control-label">Efectivo</label>
	<div class="col-lg-10">
      <input type="text" name="money" required class="form-control" id="money" value="0" placeholder="Efectivo">
	</div>
    <label for="inputEmail1" class="col-lg-2 control-label">Tarjeta</label>
    <div class="col-lg-10">
      <input type="text" name="tarjeta" required class="form-control" id="tarjeta" value="0" placeholder="Con tarjeta">
    </div>
    <label for="inputEmail1" class="col-lg-2 control-label">Vendedor</label>
    <div class="col-lg-10">
    	<?php 
    		$u=null;
			if(Session::getUID()!=""){
			  $u = UserData::getById(Session::getUID());

			  if(!$u->is_admin){ ?>
			  	<input type="hidden" name="vendedor" value="<?php echo $u->id ?>">
		<?php  }else{
				$sellers = UserData::getSellers();
		?>
			    <select name="vendedor" id="vendedor" class="form-control">
				    <?php foreach($sellers as $seller):?>
				    	<option value="<?php echo $seller->id;?>"><?php echo $seller->name." ".$seller->lastname;?></option>
				    <?php endforeach;?>
				</select>
		<?php			  	
			  }
			}
		?>

    </div>
</div>
  <div class="row">
<div class="col-md-6 col-md-offset-6">
<?php if($abono > 0){
	$total = $total - $abono;
}
?>
<table class="table table-bordered">
<tr>
	<td><p>Total</p></td>
	<td><p><b>$ <?php echo number_format($total); ?></b></p></td>
</tr>

</table>
  <div class="form-group">
    <div class="col-lg-offset-2 col-lg-10">
      <div class="checkbox">
        <label>
          <input name="is_oficial" type="hidden" value="1">
        </label>
      </div>
    </div>
  </div>
<div class="form-group">
    <div class="col-lg-offset-2 col-lg-10">
      <div class="checkbox">
        <label>
		<a href="index.php?view=clearcart" class="btn btn-lg btn-danger"><i class="glyphicon glyphicon-remove"></i> Cancelar</a>
        <button class="btn btn-lg btn-primary"><i class="glyphicon glyphicon-usd"></i><i class="glyphicon glyphicon-usd"></i> Finalizar Venta</button>
        </label>
      </div>
    </div>
  </div>
</form>
<script>
	$("#processsell").submit(function(e){
		money = parseInt($("#money").val());
		tarjeta = parseInt($("#tarjeta").val());
		reserva = $("#reserva").prop('checked');
		cliente = $("#cliente").val();
		total = <?php echo $total;?>;
		recibido = money + tarjeta;
		if(money==0 && tarjeta==0){
			alert("No ha digitado ningún monto");
			e.preventDefault();
		}else{
			if(reserva==true && cliente==""){
				alert("Debe escoger un cliente para reservar");
				e.preventDefault();			
			}else{
				if((reserva==true) && (recibido >= total)){
					alert("El valor reportado es igual al precio de venta. Revise si la operación es una venta");					e.preventDefault();
				}else{
					expa = total - tarjeta;
					if(expa<0){
						alert("Revise el valor en tarjeta");
						e.preventDefault();
					}else{
						if(reserva==false){						
							if(money<expa){
								alert("No se puede efectuar la operacion");
								e.preventDefault();
							}else{
								go = confirm("Cambio: $"+(money-expa));
								if(money>expa){
									$("#money").val(expa);
								}
								if(go){}
									else{e.preventDefault();}
							}							
						}									
					}	
				}
			}					
		}


	});
</script>
</div>
</div>

<br><br><br><br><br>
<?php endif; ?>

</div>