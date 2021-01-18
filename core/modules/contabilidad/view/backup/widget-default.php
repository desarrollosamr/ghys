<?php 
$cone = new mysqli(localhost,root,the_reborn,inventiolite);
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
	echo "Respaldando la tabla: ".$table."...<br>";
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
echo " OK";
$archivo = "core/modules/ventas/view/backup/db-backup-sipuve-".date("Ymd-His", time()).".sql";
$handle = fopen($archivo,"w");
$w=fwrite($handle, $sql);
fclose($handle);
?>
