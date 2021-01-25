
<div class="row">
	<div class="col-md-8">
	<h1><small>Abonar a la reserva No.: </small><?php echo $_GET["reserva"] ?></h1>
	<br><br>
	<form class="form-horizontal" method="post" id="abono" action="index.php?view=addabono" role="form">

  <div class="form-group">
    <label for="inputEmail1" class="col-lg-3 control-label">Fecha</label>
    <div class="col-md-8">
      <input type="date" name="fecha" class="form-control" id="fecha" required="required">
    </div>
  </div>
  <div class="form-group">
    <label for="inputEmail1" class="col-lg-3 control-label">Efectivo</label>
    <div class="col-md-8">
      <input type="number" name="money" class="form-control" id="money" value="0" required="required">
    </div>
  </div>
  <div class="form-group">
    <label for="inputEmail1" class="col-lg-3 control-label">Tarjeta 1</label>
    <div class="col-md-8">
     <input type="number" name="tarjeta1" class="form-control" id="tarjeta1" value="0" required="required">
    </div>
  </div>

  <div class="form-group">
    <label for="inputEmail1" class="col-lg-3 control-label">Tarjeta 2</label>
    <div class="col-md-8">
     <input type="number" name="tarjeta2" class="form-control" id="tarjeta2" value="0" required="required">
    </div>
  </div>

  <div class="form-group">
    <div class="col-lg-offset-3 col-lg-8">
    <input type="hidden" name="sell_id" value="<?php echo $_GET["reserva"]; ?>">
      <button type="submit" class="btn btn-success">Agregar abono</button>
    </div>
  </div>
</form>

<br><br><br><br><br><br><br><br><br>
	</div>
</div>
