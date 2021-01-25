<?php
$operation = OperationData::getById($_GET["opid"]);
$operation->del();
//print "<script>window.location='index.php?view=$_GET[ref]&product_id=$_GET[pid]';</script>";
print "<script>window.location='index.php?view=onesell&id=$_GET[sellid]&r=on';</script>";

?>