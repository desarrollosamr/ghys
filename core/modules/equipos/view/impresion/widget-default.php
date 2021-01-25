<?php
if(isset($_GET["id"]) && $_GET["id"]!=""){
	$sell = SellData::getById($_GET["id"]);
	$operations = OperationData::getAllProductsBySellId($_GET["id"]);
}


$total = 0;
$dcto = 0;

if($sell->user_id!=""){
	$user = $sell->getUser();
}

//require __DIR__ . '/ticket/autoload.php'; 
require '/ticket/autoload.php'; 

use Mike42\Escpos\Printer;
use Mike42\Escpos\EscposImage;
use Mike42\Escpos\PrintConnectors\WindowsPrintConnector;

$nombre_impresora = "POS-80"; 


$connector = new WindowsPrintConnector($nombre_impresora);
$printer = new Printer($connector);
#Mando un numero de respuesta para saber que se conecto correctamente.
echo 1;
$printer->setJustification(Printer::JUSTIFY_CENTER);

try{
	$logo = EscposImage::load("geek.png", false);
    $printer->bitImage($logo);
}catch(Exception $e){/*No hacemos nada si hay error*/}


$printer->text("\n"."MINUCIA" . "\n");
$printer->text("\n"."NIT: 1140835303-1" . "\n");
$printer->text("Centro Comercial Miramar L-104" . "\n");
$printer->text("Tel: 3013609083" . "\n");
#La fecha también
$printer->text(date("Y-m-d H:i:s") . "\n");
$printer->text("VENTA" . "\n");
$printer->text("Atendido por:".$user->name." ".$user->lastname . "\n");
$printer->text("-----------------------------" . "\n");
$printer->setJustification(Printer::JUSTIFY_LEFT);
$printer->text("COD CANT  DESCRIPCION    DCTO  VALOR" . "\n");
$printer->text("-----------------------------"."\n");
/*
	Ahora vamos a imprimir los
	productos
*/
foreach($operations as $operation){
		$product  = $operation->getProduct();
	/*Alinear a la izquierda para la cantidad y el nombre*/
	$printer->setJustification(Printer::JUSTIFY_LEFT);
    $printer->text($product->id." ".$product->name."\n");
    $printer->text( $operation->q." ".$operation->d." ".number_format($operation->q*$product->price_out*(1-$operation->d/100),0,".",",")."\n");
	$total+=$operation->q*$product->price_out*(1-$operation->d/100);
	$dcto+=$operation->q*$product->price_out*($operation->d/100);
}
/*
	Terminamos de imprimir
	los productos, ahora va el total
*/
$printer->text("-----------------------------"."\n");
$printer->setJustification(Printer::JUSTIFY_RIGHT);
$printer->text("TOTAL:".$total."\n");


/*
	Podemos poner también un pie de página
*/
$printer->setJustification(Printer::JUSTIFY_CENTER);
$printer->text("Muchas gracias por su visita\n");
$printer->text("Políticas de cambio"."\n");
$printer->text("Presentar ticket original"."\n");
$printer->text("Plazo 30 dias"."\n");
$printer->text("No hay devolución de efectivo"."\n");
$printer->text("No aplica en mercancia de liquidacion"."\n");



/*Alimentamos el papel 3 veces*/
$printer->feed(3);

/*
	Cortamos el papel. Si nuestra impresora
	no tiene soporte para ello, no generará
	ningún error
*/
$printer->cut();

/*
	Por medio de la impresora mandamos un pulso.
	Esto es útil cuando la tenemos conectada
	por ejemplo a un cajón
*/
$printer->pulse();

/*
	Para imprimir realmente, tenemos que "cerrar"
	la conexión con la impresora. Recuerda incluir esto al final de todos los archivos
*/
$printer->close();
print "<script>window.location='index.php?view=index';</script>";
?>