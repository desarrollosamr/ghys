<?php 
$cone = new mysqli('188.121.44.69','minucia','minucia2911','minucia');
// Report all errors
error_reporting(E_ALL);
if (! mysqli_set_charset ($cone, "UTF_8"))
{
    mysqli_query($cone, "SET NAMES utf-8");
}
$tables = array();
$result = mysqli_query($cone, "show tables");
while($row = mysqli_fetch_row($result))
{
    $tables[] = $row[0];
}
$sql = "SET FOREIGN_KEY_CHECKS = 0;\n";
/**
* Iterate tables
*/
foreach($tables as $table)
{
	$result = mysqli_query($cone, "SELECT * FROM ".$table);
	$numFields = mysqli_num_fields($result);
	$sql .= "TRUNCATE TABLE ".$table.";\n";

	for ($i = 0; $i < $numFields; $i++) 
	{
	    while($row = mysqli_fetch_row($result))
	    {
	        $sql .= 'INSERT INTO '.$table.' VALUES(';
	        for($j=0; $j<$numFields; $j++) 
	        {
	            $row[$j] = addslashes($row[$j]);
	            $row[$j] = preg_replace("/\n/","\\n",$row[$j]);
	            if (isset($row[$j]))
	            {
	                $sql .= '"'.$row[$j].'"' ;
	            }
	            else
	            {
	                $sql.= '""';
	            }

	            if ($j < ($numFields-1))
	            {
	                $sql .= ',';
	            }
	        }

	        $sql.= ");\n";
	    }
	}
}
$sql.="SET FOREIGN_KEY_CHECKS = 1;";
$sql.="\n\n\n";
$archivo = "minucia.sql";
$handle = fopen($archivo,"w");
$w=fwrite($handle, $sql);
fclose($handle);
$enlace = $archivo; 
header ("Content-Disposition: attachment; filename=".$enlace); 
header ("Content-Type: application/octet-stream");
header("Content-Transfer-Encoding: Binary");  
header ("Content-Length: ".filesize($enlace)); 
readfile($enlace); 
?>
