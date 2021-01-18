<?php
if(count($_POST)>0){
	$tsd = 0;
	$operations = OperationData::getAllProductsBySellId($_POST["sell_id"]);
	foreach($operations as $operation){
		$product  = $operation->getProduct();
		$tsd += $operation->q*$product->price_out;
	}
	$products = AbonosData::getByReserva($_POST["sell_id"]);
	if(count($products)>0){
		$t_abono_e = 0;
		$t_abono_t1 = 0;
		$t_abono_t2 = 0;
		$t_total = 0;
		foreach($products as $sell){
			$t_abono_e += $sell->monto_e;
			$t_abono_t1 += $sell->monto_t1;
			$t_abono_t2 += $sell->monto_t2;

		}
		$t_total += $t_abono_e + $t_abono_t1 + $t_abono_t2;			
	}
	$t_abono = $_POST["money"] + $_POST["tarjeta1"] + $_POST["tarjeta2"];
	$t_saldo = $tsd - $t_total;
	if ($t_saldo - $t_abono > 0){
	  	$abono = new AbonosData();
	  	$abono->sell_id = $_POST["sell_id"];
	  	$abono->fecha = $_POST["fecha"];
	  	$abono->monto_e = $_POST["money"];
	  	$abono->monto_t1 = $_POST["tarjeta1"];
	  	$abono->monto_t2 = $_POST["tarjeta2"];
	  	$abono->user_id = Session::getUID();
	  	$abono->created_at = "NOW()";
	  	$abono->add();		
	} elseif ($t_saldo - $t_abono == 0){
		print "<script>alert('Está saldando la reserva, por favor presione el botón Retirar');</script>";
	} else {
		print "<script>alert('Está tratando de registrar un abono por una cantidad mayor al saldo');</script>";
	}
}
print "<script>window.location='index.php?view=abonos&id=".$_POST["sell_id"]."';</script>";
?>