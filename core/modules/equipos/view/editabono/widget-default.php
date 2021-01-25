<?php
$edse = AbonosData::getById($_GET["id"]); ?>
<div class="row">
	<div class="col-md-8">
	<h1>Editar abono: </h1>
	<br><br>
	<form class="form-horizontal" method="post" id="editabono" enctype="multipart/form-data" action="index.php?view=updateabonos" role="form">

  <div class="form-group">
    <label for="inputEmail1" class="col-lg-3 control-label">Efectivo</label>
    <div class="col-md-8">
      <input type="text" name="money" class="form-control" id="money" value="<?php echo $edse->monto_e; ?>">
    </div>
  </div>
  <div class="form-group">
    <label for="inputEmail1" class="col-lg-3 control-label">Tarjeta 1</label>
    <div class="col-md-8">
     <input type="text" name="tarjeta1" class="form-control" id="tarjeta1" value="<?php echo $edse->monto_t1; ?>">
    </div>
  </div>

  <div class="form-group">
    <label for="inputEmail1" class="col-lg-3 control-label">Tarjeta 2</label>
    <div class="col-md-8">
     <input type="text" name="tarjeta2" class="form-control" id="tarjeta2" value="<?php echo $edse->monto_t2; ?>" >
    </div>
  </div>

  <div class="form-group">
    <div class="col-lg-offset-3 col-lg-8">
    <input type="hidden" name="abono_id" value="<?php echo $_GET["id"]; ?>">
        <input type="hidden" name="venta" value="<?php echo $_GET["venta"]; ?>">
      <button type="submit" class="btn btn-success">Actualizar abono</button>
    </div>
  </div>
</form>

<br><br><br><br><br><br><br><br><br>
	</div>
</div>
<script>
$(".form-control").on({
    "focus": function (event) {
        $(event.target).select();
    },
    "keyup": function (event) {
        $(event.target).val(function (index, value ) {
            return value.replace(/\D/g, "")
                        //.replace(/([0-9])([0-9]{2})$/, '$1.$2')
                        .replace(/\B(?=(\d{3})+(?!\d)\.?)/g, ",");
        });
    }
});
</script>