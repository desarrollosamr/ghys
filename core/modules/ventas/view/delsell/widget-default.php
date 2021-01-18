<?php

$sell = SellData::getById($_GET["id"]);
$operations = OperationData::getAllProductsBySellId($_GET["id"]);

foreach ($operations as $op) {
	$op->del();
}

$sell->del();
if(isset($_GET["r"]) and $_GET["r"]=="on"){
	Core::redir("./index.php?view=reservas");
} else {
	Core::redir("./index.php?view=sells");
}
?>