<?php

if(count($_POST)>0){

	$venta = SellData::getById($_POST["sell_id"]);
	if ($_POST['money']<>0 and $_POST['tarjeta1']<>0){
		$venta->tipo_pago = "M";
	}elseif ($_POST['money']<>0 and $_POST['tarjeta1']==0){
		$venta->tipo_pago = "E";
	}elseif ($_POST['money']==0 and $_POST['tarjeta1']<>0) {
		$venta->tipo_pago = "T";
	}	
	$venta->monto_e = str_replace(",","",$_POST["money"]);
	$venta->monto_t = str_replace(",","",$_POST["tarjeta1"]);
	//$venta->monto_t1 = $_POST["tarjeta2"];
	$venta->update_pago();
	print "<script>window.location='index.php?view=sells';</script>";
}
?>