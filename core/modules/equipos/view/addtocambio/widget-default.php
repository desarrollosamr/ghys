<?php

if(isset($_POST["io"]) and $_POST["io"]=="e"){
	if(!isset($_SESSION["cambioin"])){
		$product = array("product_id"=>$_POST["product_id"],"q"=>$_POST["q"],"d"=>$_POST["d"]);
		$_SESSION["cambioin"] = array($product);
		$cambioin = $_SESSION["cambioin"];
	}else {
		$found = false;
		$cambioin = $_SESSION["cambioin"];
		$index=0;
		$q = OperationData::getQYesF($_POST["product_id"]);
		$can = true;
		if($can==true){
			foreach($cambioin as $c){
				if($c["product_id"]==$_POST["product_id"]){
					echo "found";
					$found=true;
					break;
				}
				$index++;
			//	print_r($c);
			//	print "<br>";
			}

			if($found==true){
				$q1 = $cambioin[$index]["q"];
				$q2 = $_POST["q"];
				$cambioin[$index]["q"]=$q1+$q2;
				$_SESSION["cambioin"] = $cambioin;
			}

			if($found==false){
			    $nc = count($cambioin);
				$product = array("product_id"=>$_POST["product_id"],"q"=>$_POST["q"],"d"=>$_POST["d"]);
				$cambioin[$nc] = $product;
			//	print_r($cambio);
				$_SESSION["cambioin"] = $cambioin;
			}
		}
	}
}else{
	if(!isset($_SESSION["cambioout"])){
		$product = array("product_id"=>$_POST["product_id"],"q"=>$_POST["q"],"d"=>$_POST["d"]);
		$_SESSION["cambioout"] = array($product);
		$cambioout = $_SESSION["cambioout"];

	///////////////////////////////////////////////////////////////////
		$num_succ = 0;
		$process=false;
		$errors = array();
		foreach($cambioout as $c){
			$q = OperationData::getQYesF($c["product_id"]);
//			echo ">>".$q;
			if($c["q"]<=$q){
				$num_succ++;
			}else{
				$error = array("product_id"=>$c["product_id"],"message"=>"No hay suficiente cantidad de producto en inventario.");
				$errors[count($errors)] = $error;
			}
		}
	///////////////////////////////////////////////////////////////////

		//echo $num_succ;
		if($num_succ==count($cambioout)){
			$process = true;
		}
		if($process==false){
			unset($_SESSION["cambioout"]);
			$_SESSION["errors"] = $errors;
			?>	
			<script>
				window.location="index.php?view=cambio";
			</script>
			<?php
		}
	}else {

		$found = false;
		$cambioout = $_SESSION["cambioout"];
		$index=0;
		$q = OperationData::getQYesF($_POST["product_id"]);
		$can = true;
		if($_POST["q"]<=$q){
		}else{
			$error = array("product_id"=>$_POST["product_id"],"message"=>"No hay suficiente cantidad de producto en inventario.");
			$errors[count($errors)] = $error;
			$can=false;
		}

		if($can==false){
			$_SESSION["errors"] = $errors;
				?>	
			<script>
				window.location="index.php?view=cambio";
			</script>
			<?php
		}
		?>
		<?php
		if($can==true){
			foreach($cambioout as $c){
				if($c["product_id"]==$_POST["product_id"]){
					echo "found";
					$found=true;
					break;
				}
				$index++;
			//	print_r($c);
			//	print "<br>";
			}

			if($found==true){
				$q1 = $cambioout[$index]["q"];
				$q2 = $_POST["q"];
				$cambioout[$index]["q"]=$q1+$q2;
				$_SESSION["cambioout"] = $cambioout;
			}

			if($found==false){
			    $nc = count($cambioout);
				$product = array("product_id"=>$_POST["product_id"],"q"=>$_POST["q"],"d"=>$_POST["d"]);
				$cambioout[$nc] = $product;
			//	print_r($cambio);
				$_SESSION["cambioout"] = $cambioout;
			}

		}
	}
}

 print "<script>window.location='index.php?view=cambio';</script>";
// unset($_SESSION["cambio"]);

?>