<?php
## Imaginando que el archivo no cambia.
$archivo = "etiqueta.txt";
$f=fopen($archivo,"w");
$contenido = "Codigo,Nombre,Cantidad,Talla,Color,Precio" . "\r\n";
fwrite($f,$contenido);
$mysqli = new mysqli('localhost', 'root', 'the_reborn', 'inventiolite');
$sql = "SELECT product.id as codigo, product.name as nombre, tallas.name as talla, colores.name as color, product.price_out as precio FROM product LEFT JOIN tallas on product.talla_id = tallas.id LEFT JOIN colores on product.color_id = colores.id order by product.name";
$filas = mysqli_query($mysqli,$sql);
	//$products = ProductData::getAll("");
	//if(count($products)>0){
		//foreach($curr_products as $product){
		while ($row = mysqli_fetch_array($filas)) {
			$q=0;
			$ins = 0;
			$outs = 0;
			$ti = "select sum(q) as entradas from operation where product_id=" . $row['$codigo'] . " and (operation_type_id=1 or operation_type_id=3)";
			if ($tis = $mysqli->query($ti) and $tis->num_rows>0)  {
				$rtis = mysqli_fetch_array($tis);
				$ins = $rtis['entradas'];
			}
			$to = "select sum(q) as salidas from operation where product_id=" . $row['$codigo'] . " and (operation_type_id=2 or operation_type_id=4)";
			if ($tos = $mysqli->query($to) and $tos->num_rows>0)  {
				$rtos = mysqli_fetch_array($tos);
				$outs = $rtos['salidas'];
			}			
			$q = $ins - $outs;
			if($q > 0){
				$registro = "";
				$registro .= $row['codigo'] . ",";
				$registro .= $row['nombre'] . ",";
				$registro .= $q . ",";
				$registro .= $row['talla'];
				$registro .= "," . $row['color'];
				$registro .= ",$" . number_format($row['precio'],0,',','.') . "\r\n";
				fwrite($f,$registro);				
			}
		}
	//}
	fclose($f);
	$enlace = $archivo; 
	header ("Content-Disposition: attachment; filename=".$enlace); 
	header ("Content-Type: application/octet-stream"); 
	header ("Content-Length: ".filesize($enlace)); 
	readfile($enlace); 

?>