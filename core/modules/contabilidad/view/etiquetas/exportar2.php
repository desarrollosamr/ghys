<?php
## Imaginando que el archivo no cambia.
/*
$archivo = "etiqueta.txt";
$f=fopen($archivo,"w");
$contenido = "Codigo,Nombre,Cantidad,Talla,Color,Precio" . "\r\n";
fwrite($f,$contenido);
*/
?>
<table><tr>
<?php
$etxim = $_POST['eti'];
$col = 1;
foreach($etxim as $ei){
	$datos = explode(",",$ei);
	if($col>3){
		$col = 1;
	?>
		</tr><tr>
	<?php	
		}
	?>
	<td>
		<table style="table-layout:fixed;width:120px;padding: 0px;">
			<tr><td style="font-size: 9px;width: 105px;padding: 0px;"><?php echo $datos[1]; ?></td></tr>
			<tr><td style="font-size: 9px;"padding: 0px;>$ <?php echo number_format(intval($datos[5]),0,',','.'); ?></td></tr>
			<tr><td style="font-size: 9px;width:50px;padding: 0px;">T:<?php echo $datos[3]; ?> <?php echo $datos[4]; ?></td></tr>
			<tr><td style="padding: 0px;"><img src="barcode.php?text=<?php echo $datos[0]; ?>&size=30&sizefactor=1.2" /></td></tr>
		</table>
	</td>
<?php 		
	$col += 1;
}
?>
</tr>
</table>
<?php
/*
fclose($f);
$enlace = $archivo; 
header ("Content-Disposition: attachment; filename=".$enlace); 
header ("Content-Type: application/octet-stream"); 
header ("Content-Length: ".filesize($enlace)); 
readfile($enlace); 
*/
?>