<?php
if(isset($_SESSION["cart"])){
	$cart = $_SESSION["cart"];
	if(count($cart)>0){
/// antes de proceder con lo que sigue vamos a verificar que:
		// haya existencia de productos
		// si se va a facturar la cantidad a facturr debe ser menor o igual al producto facturado en inventario
		$num_succ = 0;
		$process=false;
		$errors = array();
		foreach($cart as $c){
			$q = OperationData::getQYesF($c["product_id"]);
			$r = OperationData::getReservado($c["product_id"]);
			if($c["q"]<=$q+$r){
				if(isset($_POST["is_oficial"])){
					$qyf =OperationData::getQYesF($c["product_id"]); /// son los productos que puedo facturar
					if($c["q"]<=$qyf+$r){
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
		if($num_succ==count($cart)){
			$process = true;
		}
		if($process==false){
			$_SESSION["errors"] = $errors;
			?>	
			<script>
				window.location="index.php?view=sell";
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
			$sell->monto_e = $_POST['money'];
			$sell->monto_t = $_POST['tarjeta'];
			$sell->seller = $_POST["vendedor"];
			if ($_POST['reserva']=="on"){
			 	$sell->person_id=$_POST["client_id"];
				$s = $sell->add_reserva();
			}else{
				if(isset($_POST["client_id"]) && $_POST["client_id"]!=""){
				 	$sell->person_id=$_POST["client_id"];
	 				$s = $sell->add_with_client();
				 }else{
	 				$s = $sell->add();
				 }				
			}
			if(isset($_GET["r"]) && $_GET["r"]!=""){
				$sell->cancelar_reserva($_POST["rescan"]);	
				OperationData::cancelar_reserva($_POST["rescan"]);		
			}
			foreach($cart as  $c){
				$op = new OperationData();
				$op->product_id = $c["product_id"] ;
				$op->created_at = "'".$_POST["fecha"]."'";
				if ($_POST['reserva']=="on"){
					$op->operation_type_id = 5;
				}else{
					$op->operation_type_id = OperationTypeData::getByName("salida")->id;					
				}
				$op->sell_id = $s[1];
				$op->q = $c["q"];
				$op->d = $c["d"];
				$op->ajuste_id = 0;

				if(isset($_POST["is_oficial"])){
					$op->is_oficial = 1;
				}

				$add = $op->add();			 		

				unset($_SESSION["cart"]);
				setcookie("selled","selled");
			}
			if(isset($_GET["r"]) && $_GET["r"]!=""){
				print "<script>window.location='index.php?view=onesell&id=$s[1]&r=canres&abono=".$_POST["abono"]."';</script>";
			}else{
				print "<script>window.location='index.php?view=onesell&id=$s[1]&r=".$_POST['reserva']."';</script>";
			}
		}
	}
}



?>
