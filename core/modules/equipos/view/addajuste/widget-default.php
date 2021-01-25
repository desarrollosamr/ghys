<?php

if(count($_POST)>0){
  $ajuste = new AjustesData();
  $ajuste->date = $_POST["date"];
  $ajuste->type = $_POST["type"];
  $ajuste->article = $_POST["article"];
  $ajuste->quantity = $_POST["quantity"];
  $ajuste->user_id = Session::getUID();
  $ajuste->created_at = "NOW()";
  $ajuste->add();
}
if($_POST["quantity"]!="" || $_POST["quantity"]!="0"){
 $op = new OperationData();
 $op->product_id = $_POST["article"];

 $op->ajuste_id = $ajuste->dn[1] ;
 if($_POST["type"]==1){
 	$op->operation_type_id=OperationTypeData::getByName("entradaxajuste")->id;
 }elseif($_POST["type"]==2){
	$op->operation_type_id=OperationTypeData::getByName("salidaxajuste")->id;
 }	
 $op->q = $_POST["quantity"];
 $op->d = 0;
 $op->created_at = "NOW()";
 $op->sell_id="NULL";
 $op->add();
}
print "<script>window.location='index.php?view=ajustes';</script>";



?>