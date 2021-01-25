<?php
$product = ProductData::getById($_GET["id"]);
$categories = CategoryData::getAll();
$tallas = TallaData::getAll();
$colores = ColorData::getAll();

if($product!=null):
?>
<div class="row">
	<div class="col-md-8">
	<h1><small>Editar Producto: </small><?php echo $product->name ?> </h1>
  <?php if(isset($_COOKIE["prdupd"])):?>
    <p class="alert alert-info">La informacion del producto se ha actualizado exitosamente.</p>
  <?php setcookie("prdupd","",time()-18600); endif; ?>
	<br><br>
		<form class="form-horizontal" method="post" id="addproduct" enctype="multipart/form-data" action="index.php?view=updateproduct" role="form">

  <div class="form-group">
    <label for="inputEmail1" class="col-lg-3 control-label">Imagen*</label>
    <div class="col-md-8">
      <input type="file" name="image" id="name" placeholder="">
<?php if($product->image!=""):?>
  <br>
        <img src="storage/products/<?php echo $product->image;?>" class="img-responsive">

<?php endif;?>
    </div>
  </div>

  <div class="form-group">
    <label for="inputEmail1" class="col-lg-3 control-label">Nombre*</label>
    <div class="col-md-8">
      <input type="text" name="name" class="form-control" id="name" value="<?php echo $product->name; ?>" placeholder="Nombre del Producto">
    </div>
  </div>
    <div class="form-group">
	    <label for="inputEmail1" class="col-lg-3 control-label">Categoria</label>
	    <div class="col-md-8">
		    <select name="category_id" class="form-control">
			    <option value="">-- NINGUNA --</option>
			    <?php foreach($categories as $category):?>
			      <option value="<?php echo $category->id;?>" <?php if($product->category_id!=null&& $product->category_id==$category->id){ echo "selected";}?>><?php echo $category->name;?></option>
			    <?php endforeach;?>
		    </select>    
	    </div>
	</div>
    <div class="form-group">
	    <label for="inputEmail1" class="col-lg-3 control-label">Talla</label>
	    <div class="col-md-8">
		    <select name="talla_id" class="form-control">
			    <option value="">-- NINGUNA --</option>
			    <?php foreach($tallas as $talla):?>
			      <option value="<?php echo $talla->id;?>" <?php if($product->talla_id!=null&& $product->talla_id==$talla->id){ echo "selected";}?>><?php echo $talla->name;?></option>
			    <?php endforeach;?>
		    </select>    
	    </div>
	</div>
    <div class="form-group">
	    <label for="inputEmail1" class="col-lg-3 control-label">Color</label>
	    <div class="col-md-8">
		    <select name="color_id" class="form-control">
			    <option value="">-- NINGUNA --</option>
			    <?php foreach($colores as $color):?>
			      <option value="<?php echo $color->id;?>" <?php if($product->color_id!=null&& $product->color_id==$color->id){ echo "selected";}?>><?php echo $color->name;?></option>
			    <?php endforeach;?>
		    </select>    
	    </div>
	</div>
  <div class="form-group">
    <label for="inputEmail1" class="col-lg-3 control-label">Descripcion</label>
    <div class="col-md-8">
      <textarea name="description" class="form-control" id="description" placeholder="Descripcion del Producto"><?php echo $product->description;?></textarea>
    </div>
  </div>

  <div class="form-group">
    <label for="inputEmail1" class="col-lg-3 control-label">Precio de Entrada*</label>
    <div class="col-md-8">
      <input type="text" name="price_in" class="form-control" value="<?php echo $product->price_in; ?>" id="price_in" placeholder="Precio de entrada">
    </div>
  </div>
  <div class="form-group">
    <label for="inputEmail1" class="col-lg-3 control-label">Precio de Salida*</label>
    <div class="col-md-8">
      <input type="text" name="price_out" class="form-control" id="price_out" value="<?php echo $product->price_out; ?>" placeholder="Precio de salida">
    </div>
  </div>
  <div class="form-group">
    <label for="inputEmail1" class="col-lg-3 control-label">Unidad*</label>
    <div class="col-md-8">
      <input type="text" name="unit" class="form-control" id="unit" value="<?php echo $product->unit; ?>" placeholder="Unidad del Producto">
    </div>
  </div>

  <div class="form-group">
    <label for="inputEmail1" class="col-lg-3 control-label">Minima en inventario:</label>
    <div class="col-md-8">
      <input type="text" name="inventary_min" class="form-control" value="<?php echo $product->inventary_min;?>" id="inputEmail1" placeholder="Minima en Inventario (Default 10)">
    </div>
  </div>

  <div class="form-group">
    <div class="col-lg-offset-3 col-lg-8">
    <input type="hidden" name="product_id" value="<?php echo $product->id; ?>">
      <button type="submit" class="btn btn-success">Actualizar Producto</button>
    </div>
  </div>
</form>

<br><br><br><br><br><br><br><br><br>
	</div>
</div>
<?php endif; ?>