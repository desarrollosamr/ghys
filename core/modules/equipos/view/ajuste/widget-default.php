<?php
$types = AjustesTypeData::getAll();
$products = ProductData::getAll("");
$u=null;
if(Session::getUID()!=""){
  $u = UserData::getById(Session::getUID());
}
?>
<div class="row">
	<div class="col-md-12">
	<h1>Nuevo Ajuste</h1>
	<br>
		<form class="form-horizontal" method="post" id="addajuste" action="index.php?view=addajuste" role="form">


  <div class="form-group">
    <label for="inputEmail1" class="col-lg-2 control-label">Fecha *</label>
    <div class="col-md-6">
      <input type="date" name="date" class="form-control" id="date" required placeholder="Fecha">
    </div>
  </div>
  <div class="form-group">
    <label for="inputEmail1" class="col-lg-2 control-label">Tipo de ajuste *</label>
    <div class="col-md-6">
    <select name="type" class="form-control">
    <option value="0">-- NINGUNO --</option>
    <?php foreach($types as $type){?>
      <option value="<?php echo $type->id;?>"><?php echo $type->name;?></option>
    <?php } ?>
      </select>    </div>
  </div>
  <div class="form-group">
    <label for="inputEmail1" class="col-lg-2 control-label">Producto *</label>
    <div class="col-md-6">
    <select name="article" class="form-control">
    <option value="0">-- NINGUNO --</option>
    <?php foreach($products as $product){
    	$talla = $product->getTalla()->name;
		$color = $product->getColor()->name;
		$producto = $product->name . "  " . $color . "  " . $talla;

		?>
      <option value="<?php echo $product->id;?>"><?php echo $producto;?></option>
    <?php } ?>
      </select>    </div>
  </div>
  <div class="form-group">
    <label for="inputEmail1" class="col-lg-2 control-label">Cantidad *</label>
    <div class="col-md-6">
      <input type="text" name="quantity" class="form-control" required id="quantity" placeholder="Cantidad">
    </div>
  </div>
  <input type="hidden" id="user" name="user" value="<?php $u ?>"/>
  <p class="alert alert-info">* Campos obligatorios</p>

  <div class="form-group">
    <div class="col-lg-offset-2 col-lg-10">
      <button type="submit" class="btn btn-primary">Agregar Ajuste</button>
    </div>
  </div>
</form>
</div>
</div>