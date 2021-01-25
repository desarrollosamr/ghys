<?php
if(isset($_SESSION["cambioout"])){
	$cambioout = $_SESSION["cambioout"];
	if(count($cambioout)>0){

		/// antes de proceder con lo que sigue vamos a verificar que:
		// haya existencia de productos
		// si se va a facturar la cantidad a facturr debe ser menor o igual al producto facturado en inventario
		$num_succ = 0;
		$process=false;
		$errors = array();
		foreach($cambioout as $c){
			$q = OperationData::getQYesF($c["product_id"]);
			if($c["q"]<=$q){
				if(isset($_POST["is_oficial"])){
					$qyf =OperationData::getQYesF($c["product_id"]); /// son los productos que puedo facturar
					if($c["q"]<=$qyf){
						$num_succ++;
					}else{
						$error = array("product_id"=>$c["product_id"],"message"=>"No hay suficiente cantidad de producto para facturar en inventario.");					
						$errors[count($errors)] = $error;
					}
				}else{
					// si llegue hasta aqui y no voy a facturar, entonces continuo ...
					$num_succ++;
				}
			}else{
				$error = array("product_id"=>$c["product_id"],"message"=>"No hay suficiente cantidad de producto en inventario.");
				$errors[count($errors)] = $error;
			}
		}

		if($num_succ==count($cambioout)){
			$process = true;
		}

		if($process==false){
			$_SESSION["errors"] = $errors;
				?>	
			<script>
				window.location="index.php?view=cambio";
			</script>
			<?php
		}
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
			if ($_POST['money']>$_POST['excedente']){
				$sell->monto_e = $_POST['excedente'];
			}else{
				$sell->monto_e = $_POST['money'];
			}
			
			$sell->monto_t = $_POST['tarjeta'];
			$sell->person_id = $_POST['client_id'];
			$so = $sell->add_cambioout();

			foreach($cambioout as  $c){
				$op = new OperationData();
				$op->product_id = $c["product_id"] ;
				$op->created_at = "'".$_POST["fecha"]."'";
				$op->operation_type_id = 4;
				//$op->operation_type_id = OperationTypeData::getByName("salida")->id;
				$op->sell_id = $so[1];
				$op->q = $c["q"];
				$op->d = $c["d"];
				$op->ajuste_id = 0;
				if(isset($_POST["is_oficial"])){
					$op->is_oficial = 1;
				}
				$add = $op->add();			 		
			}
			unset($_SESSION["cambioout"]);
			setcookie("selled","selled");
			////////////////////
		}
	}
}
if(isset($_SESSION["cambioin"])){
	$cambioin = $_SESSION["cambioin"];
	if(count($cambioin)>0){	
		$dev = new SellData();
		$dev->user_id = $_SESSION["user_id"];
		$dev->created_at = "'".$_POST["fecha"]."'";
		$dev->tipo_pago = "C";
		$dev->monto_e = 0;
		$dev->monto_t = 0;
		$dev->person_id = $_POST['client_id'];
		$si = $dev->add_cambioin();
		foreach($cambioin as  $c){
			$op = new OperationData();
			$op->product_id = $c["product_id"] ;
			$op->created_at = "'".$_POST["fecha"]."'";
			$op->operation_type_id = 3;
			//$op->operation_type_id = OperationTypeData::getByName("salida")->id;
			$op->sell_id = $si[1];
			$op->q = $c["q"];
			$op->d = $c["d"];
			$op->ajuste_id = 0 ;
			if(isset($_POST["is_oficial"])){
				$op->is_oficial = 1;
			}
			$add = $op->add();			 		
		}		
		unset($_SESSION["cambioin"]);
	}
}
$cambio = new CambiosData();
$cambio->user_id = $_SESSION["user_id"];
$cambio->venta_in = $si[1];
$cambio->venta_out = $so[1];
$cambio->motivo = $_POST["motivo"];
$cambio->created_at = "'".$_POST["fecha"]."'";
$newc = $cambio->add();
/*
foreach($cambioin as $e){
	$opr = new OperationData();
	$opr->cambio_id = $newc[1];
}
*/
print "<script>window.location='index.php?view=onesell&id=$so[1]';</script>";


?>
