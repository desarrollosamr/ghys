<?php

if(isset($_GET["io"]) and $_GET["io"]=="e"){
	if(isset($_GET["product_id"])){
		$cambioin=$_SESSION["cambioin"];
		if(count($cambioin)==1){
		 unset($_SESSION["cambioin"]);
		}else{
			$ncart = null;
			$nx=0;
			foreach($cambioin as $c){
				if($c["product_id"]!=$_GET["product_id"]){
					$ncart[$nx]= $c;
				}
				$nx++;
			}
			$_SESSION["cambioin"] = $ncart;
		}
	}	
}elseif(isset($_GET["io"]) and $_GET["io"]=="s"){
	if(isset($_GET["product_id"])){
		$cambioout=$_SESSION["cambioout"];
		if(count($cambioout)==1){
		 unset($_SESSION["cambioout"]);
		}else{
			$ncart = null;
			$nx=0;
			foreach($cambioout as $c){
				if($c["product_id"]!=$_GET["product_id"]){
					$ncart[$nx]= $c;
				}
				$nx++;
			}
			$_SESSION["cambioout"] = $ncart;
		}
	}	
}else{
	 unset($_SESSION["cambioout"]);
	 unset($_SESSION["cambioin"]);
}
print "<script>window.location='index.php?view=cambio';</script>";

?>