<?php
## Imaginando que el archivo no cambia.
$archivo = "etiqueta.txt";
$f=fopen($archivo,"w");
$contenido = "Codigo,Nombre,Cantidad,Talla,Color,Precio" . "\r\n";
fwrite($f,$contenido);
$etxim = $_POST['eti'];

foreach($etxim as $ei){
	$datos = explode(",",$ei);
	$ne = intval($datos[2]);
	if($ne > 0){

		for($i=0;$i<$ne;$i++){
			$registro = "";
			$registro .= $datos[0] . ",";
			$registro .= $datos[1] . ",";
			$registro .= $datos[2] . ",";
			$registro .= $datos[3];
			$registro .= "," . $datos[4];
			$registro .= ",$" . number_format(intval($datos[5]),0,',','.') . "\r\n";
			fwrite($f,$registro);							
		}
	}	
}
fclose($f);
$enlace = $archivo; 
header ("Content-Disposition: attachment; filename=".$enlace); 
header ("Content-Type: application/octet-stream"); 
header ("Content-Length: ".filesize($enlace)); 
readfile($enlace); 

?>