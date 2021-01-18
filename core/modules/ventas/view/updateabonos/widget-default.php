<?php

if(count($_POST)>0){
	$tsd = 0;
	$operations = OperationData::getAllProductsBySellId($_POST["venta"]);
	foreach($operations as $operation){
		$product  = $operation->getProduct();
		$tsd += $operation->q*$product->price_out;
	}
	$products = AbonosData::getByReserva($_POST["venta"]);
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
	$t_saldo = $tsd - $t_total;
	$money=str_replace(",","",$_POST["money"]);
	$tarjeta1=str_replace(",","",$_POST["tarjeta1"]);
	$tarjeta2=str_replace(",","",$_POST["tarjeta2"]);
	$t_abono = $money+$tarjeta1+$tarjeta2;

	$ab_actual = AbonosData::getById($_POST["abono_id"]);
	$ab_actual->monto_e = $money;
	$ab_actual->monto_t1 = $tarjeta1;
	$ab_actual->monto_t2 = $tarjeta2;

	//if ($t_saldo - $t_abono > 0){
		$ab_actual->update_abono();
	/*
	} elseif ($t_saldo - $t_abono == 0){
		print "<script>alert('Está saldando la reserva, por favor presione el botón Retirar');</script>";
	} else {
		print "<script>alert('Está tratando de registrar un abono por una cantidad mayor al saldo');</script>";
	} */	
		
	print "<script>window.location='index.php?view=abonos&id=".$_POST["venta"]."';</script>";
}
?>