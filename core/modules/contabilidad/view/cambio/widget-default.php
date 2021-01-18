<div class="row">
	<div class="col-md-12">
		<h1>Cambio</h1>
		<p><b>Buscar producto por nombre o por codigo:</b></p>
		<form>
		<div class="row">
			<div class="col-md-6">
				<input type="hidden" name="view" value="cambio">
				<input type="text" name="product" class="form-control">
			</div>
			<div class="col-md-3">
		   <button type="submit" class="btn btn-primary"><i class="glyphicon glyphicon-search"></i> Buscar</button>
			</div>
		</div>
		</form>
	</div>

<?php if(isset($_GET["product"])):?>
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
		
			<form method="post" name="results" action="index.php?view=addtocambio" onsubmit="return comprobar();">
				<tr class="<?php if($q<=$product->inventary_min){ echo "danger"; }?>">
					<td style="width:80px;"><?php echo $product->id; ?></td>
					<td><?php echo $product->name; ?></td>
					<td><?php if($product->color_id!=null){echo $product->getColor()->name;}else{ echo "<center>----</center>"; } ?></td>
					<td><?php if($product->talla_id!=null){echo $product->getTalla()->name;}else{ echo "<center>----</center>"; } ?></td>

					<td style="text-align: right;"><b>$<?php echo $product->price_out; ?></b></td>
					<td style="text-align: right;">
						<?php echo $q; ?>
					</td>

					<td>
						<input type="hidden" name="product_id" value="<?php echo $product->id; ?>">
						<input type="" class="form-control" required name="q" placeholder="Cantidad...">
					</td>
					<td><input type="" class="form-control" required name="d" value="0" placeholder="Descuento ..."></td>				

					<td>
						<input type="radio" name="io" id="entra" value="e"/>Entra<br>
						<input type="radio" name="io" id="sale" value="s"/>Sale
					</td>
					<td style="width:183px;">
						<button type="submit" class="btn btn-primary"><i class="glyphicon glyphicon-shopping-cart"></i> Agregar al cambio</button>
					</td>
				</tr>
			</form>
			<script>
				function comprobar() {
			         var pulsado = false;//variable de comprobación
			         var opciones = document.getElementsByName('io');
			         var elegido = -1; //número del elemento elegido en el array
			         for (i=0;i<opciones.length;i++) { //bucle de comprobación
			               if (opciones[i].checked == true) {
			               pulsado = true; 
			               elegido = i; //número del elemento elegido en el array
			               }
			             }
			         if (pulsado == false) { //mensaje de formulario válido
			            alert("No has elegido si el articulo entra o sale");
			            return false; //el formulario no se envía.
			            }
			         }
			</script>
		
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


<!--- Carrito de cambios :) -->
<?php if(isset($_SESSION["cambioin"])):
$totalin = 0;
?>
<h2>Lista de productos que entran</h2>
<table class="table table-bordered table-hover">
<thead>
	<th style="width:30px;">Codigo</th>
	<th style="width:30px;">Cantidad</th>
	<th>Producto</th>
	<th style="width:30px;">Talla</th>
	<th style="width:30px;">Color</th>	
	<th style="width:100px;">Precio Unitario</th>
	<th style="width:100px;">Precio Total</th>
	<th ></th>
</thead>
<?php foreach($_SESSION["cambioin"] as $p):
	$productin = ProductData::getById($p["product_id"]);
	?>
	<tr >
		<td><?php echo $productin->id; ?></td>
		<td ><?php echo $p["q"]; ?></td>
		<td><?php echo $productin->name; ?></td>
		<td><?php if($productin->talla_id!=null){echo $productin->getTalla()->name;}else{ echo "<center>----</center>"; } ?></td>		
		<td><?php if($productin->color_id!=null){echo $productin->getColor()->name;}else{ echo "<center>----</center>"; } ?></td>
		<td><b>$ <?php echo number_format($productin->price_out); ?></b></td>
		<td><b>$ <?php  $pt = $productin->price_out*$p["q"]; $totalin +=$pt; echo number_format($pt); ?></b></td>
		<td style="width:30px;"><a href="index.php?view=clearcambio&product_id=<?php echo $productin->id; ?>&io=e" class="btn btn-danger"><i class="glyphicon glyphicon-remove"></i> Cancelar</a></td>
	</tr>

<?php endforeach; ?>
</table>
<?php endif; ?>
<?php if(isset($_SESSION["cambioout"])):
$totalout = 0;
?>
<h2>Lista de productos que salen</h2>
<table class="table table-bordered table-hover">
	<thead>
		<th style="width:30px;">Codigo</th>
		<th style="width:30px;">Cantidad</th>
		<th>Producto</th>
		<th style="width:30px;">Talla</th>
		<th style="width:30px;">Color</th>	
		<th style="width:100px;">Precio Unitario</th>
		<th style="width:100px;">Precio Total</th>
		<th ></th>
	</thead>
	<?php foreach($_SESSION["cambioout"] as $p):
		$productout = ProductData::getById($p["product_id"]);
		?>
		<tr >
			<td><?php echo $productout->id; ?></td>
			<td ><?php echo $p["q"]; ?></td>
			<td><?php echo $productout->name; ?></td>
			<td><?php if($productout->talla_id!=null){echo $productout->getTalla()->name;}else{ echo "<center>----</center>"; } ?></td>		
			<td><?php if($productout->color_id!=null){echo $productout->getColor()->name;}else{ echo "<center>----</center>"; } ?></td>
			<td><b>$ <?php echo number_format($productout->price_out); ?></b></td>
			<td><b>$ <?php  $pt = $productout->price_out*$p["q"]; $totalout +=$pt; echo number_format($pt); ?></b></td>
			<td style="width:30px;"><a href="index.php?view=clearcambio&product_id=<?php echo $productout->id; ?>&io=s" class="btn btn-danger"><i class="glyphicon glyphicon-remove"></i> Cancelar</a></td>
		</tr>

	<?php endforeach; ?>
</table>

<form method="post" class="form-horizontal" id="processcambio" action="index.php?view=processcambio">
<h2>Resumen</h2>
<div class="form-group">
	<label for="inputEmail1" class="col-lg-2 control-label">Fecha</label>
    <div class="col-lg-10">
      <input type="datetime" name="fecha" required class="form-control" id="fecha" value="<?php echo date('Y-m-d h:i:s');?>" placeholder="Fecha">
	</div>
    <label for="inputEmail1" class="col-lg-2 control-label">Cliente</label>
    <div class="col-lg-10">
    <?php 
$clients = PersonData::getClients();
    ?>
    <select name="client_id" class="form-control">
    <option value="">-- NINGUNO --</option>
    <?php foreach($clients as $client):?>
    	<option value="<?php echo $client->id;?>"><?php echo $client->name." ".$client->lastname;?></option>
    <?php endforeach;?>
    	</select>
    </div>
  </div>
<div class="form-group">
	<label for="inputEmail1" class="col-lg-2 control-label">Efectivo</label>
	<div class="col-lg-10">
      <input type="text" name="money" required class="form-control" id="money" value="0" placeholder="Efectivo" onfocus="" onkeyup="puntitos(this,this.value.charAt(this.value.length-1))">
	</div>
    <label for="inputEmail1" class="col-lg-2 control-label">Tarjeta</label>
    <div class="col-lg-10">
      <input type="text" name="tarjeta" required class="form-control" id="tarjeta" value="0" placeholder="Con tarjeta" onkeyup="puntitos(this,this.value.charAt(this.value.length-1))">
    </div>
    <script>
function puntitos(donde,caracter){
	pat = /[\*,\+,\(,\),\?,\,$,\[,\],\^]/
	valor = donde.value
	largo = valor.length
	crtr = true
	if(isNaN(caracter) || pat.test(caracter) == true){
		if (pat.test(caracter)==true){ 
			caracter = &quot;\&quot; + caracter
		}
		carcter = new RegExp(caracter,&quot;g&quot;)
		valor = valor.replace(carcter,&quot;&quot;)
		donde.value = valor
		crtr = false
	}
	else{
		var nums = new Array()
		cont = 0
		for(m=0;m&lt;largo;m++){
			if(valor.charAt(m) == &quot;.&quot; || valor.charAt(m) == &quot; &quot;)
				{continue;}
			else{
				nums[cont] = valor.charAt(m)
				cont++
			}
		}
	}
	var cad1=&quot;&quot;,cad2=&quot;&quot;,tres=0
	if(largo &gt; 3 &amp;&amp; crtr == true){
		for (k=nums.length-1;k&gt;=0;k--){
			cad1 = nums[k]
			cad2 = cad1 + cad2
			tres++
			if((tres%3) == 0){
				if(k!=0){
					cad2 = &quot;.&quot; + cad2
				}
			}
		}
		donde.value = cad2
	}
}	
</script>
    <label for="inputEmail1" class="col-lg-2 control-label">Motivo del cambio</label>
    <div class="col-lg-10">
      <input type="text" name="motivo" required class="form-control" id="motivo" placeholder="Motivo...">
    </div>

  </div>
  <div class="row">
<div class="col-md-6 col-md-offset-6">
<table class="table table-bordered">
<tr>
	<td><p>Valor articulos para cambio</p></td>
	<td><p><b>$ <?php echo number_format($totalin); ?></b></p></td>
</tr>

<tr>
	<td><p>Valor articulos nuevos</p></td>
	<td><p><b>$ <?php echo number_format($totalout); ?></b></p></td>
</tr>
<tr>
	<td><p>Total a pagar</p></td>
	<td><p><b>$ <?php echo number_format($totalout - $totalin); $excedente = $totalout - $totalin;?>
				<input type="hidden" name="excedente" value="<?php echo $excedente; ?>"
	</b></p></td>
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
		<a href="index.php?view=clearcambio" class="btn btn-lg btn-danger"><i class="glyphicon glyphicon-remove"></i> Cancelar</a>
        <button class="btn btn-lg btn-primary"><i class="glyphicon glyphicon-usd"></i><i class="glyphicon glyphicon-usd"></i> Finalizar Cambio</button>
        </label>
      </div>
    </div>
  </div>
</form>

<script>
	$("#processsell").submit(function(e){
		$dife = $totalout - $totalin;
		money = $("#money").val();
		tarjeta = $("#tarjeta").val();
		expa = <?php echo $dife;?>-tarjeta;
		if(money<expa && tarjeta==0){
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
	});
</script>
<script>
	$("input[type=text]").focus(function(){	   
      this.select();
    });

</script>
</div>

<br><br><br><br><br>
<?php endif; ?>

</div>