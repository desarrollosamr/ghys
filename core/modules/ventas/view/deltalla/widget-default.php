<?php

$talla = Talladata::getById($_GET["id"]);
$products = ProductData::getAllByTallaId($talla->id);
foreach ($products as $product) {
	$product->del_talla();
}

$talla->del();
Core::redir("./index.php?view=tallas");


?>