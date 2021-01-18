<?php
if(isset($_SESSION["reabastecer"])){
	$cart = $_SESSION["reabastecer"];
	if(count($cart)>0){

$process = true;

//////////////////////////////////
		if($process==true){
			$sell = new SellData();
			$sell->user_id = $_SESSION["user_id"];
			$sell->created_at = "'".$_POST["fecha"]."'";
			if ($_POST['money']<>0 and $_POST['tarjeta']<>0){
				$sell->tipo_pago = "M";
			}elseif ($_POST['money']<>0 and $_POST['tarjeta']==0){
				$sell->tipo_pago = "E";
			}elseif ($_POST['money']==0 and $_POST['tarjeta']<>0) {
				$sell->tipo_pago = "T";
			}
			$sell->monto_e = $_POST['money'];
			$sell->monto_t = $_POST['tarjeta'];
			if(isset($_POST["client_id"]) && $_POST["client_id"]!=""){
			 	$sell->person_id=$_POST["client_id"];
 				$s = $sell->add_re_with_client();
			 }else{
 				$s = $sell->add_re();
			 }

		foreach($cart as  $c){
			$op = new OperationData();
			$op->product_id = $c["product_id"] ;
			$op->created_at = "'".$_POST["fecha"]."'";
			$op->operation_type_id=1; // 1 - entrada
			$op->sell_id=$s[1];
			$op->q = $c["q"];
			$op->d = 0;
			$op->ajuste_id = 0 ;

			if(isset($_POST["is_oficial"])){
				$op->is_oficial = 1;
			}

			$add = $op->add();			 		

		}
			unset($_SESSION["reabastecer"]);
			setcookie("selled","selled");
////////////////////
print "<script>window.location='index.php?view=onere&id=$s[1]';</script>";
		}
	}
}



?>
