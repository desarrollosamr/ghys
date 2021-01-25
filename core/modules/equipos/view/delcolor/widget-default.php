<?php

$category = Colordata::getById($_GET["id"]);
$products = ProductData::getAllByColorId($color->id);
foreach ($products as $product) {
	$product->del_color();
}

$color->del();
Core::redir("./index.php?view=colores");


?>