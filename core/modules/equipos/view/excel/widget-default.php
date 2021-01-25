<?php
	//if(isset($_POST["export_data"])) {
		$filename = "productos_".date('Ymd') . ".xls";
		header("Content-Type: application/vnd.ms-excel");
		header("Content-Disposition: attachment; filename='$filename'");
		$show_coloumn = false;
		$products = ProductData::getAll("");
		//if(!empty($developer_records)) {
			foreach($products as $record) {
				if(!$show_coloumn) {
					// display field/column names in first row
					echo implode("t", array_keys($record)) . "n";
					$show_coloumn = true;
				}
				echo implode("t", array_values($record)) . "n";
			}
		//}
		exit;
	//}
?>