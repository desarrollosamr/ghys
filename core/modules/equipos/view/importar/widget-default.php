<?php
ini_set('max_execution_time', 300);
// Name of the file
$filename = 'core/modules/ventas/view/importar/minucia.sql';
// MySQL host
$mysql_host = 'localhost';
// MySQL username
$mysql_username = 'root';
// MySQL password
$mysql_password = 'the_reborn';
// Database name
$mysql_database = 'inventiolite';

// Connect to MySQL server
$con = @new mysqli($mysql_host,$mysql_username,$mysql_password,$mysql_database);

// Check connection
if ($con->connect_errno) {
    echo "Fallo al conectar a la base de datos: " . $con->connect_errno;
    echo "<br/>Error: " . $con->connect_error;
}
$query = '';
$sqlScript = file('core/modules/ventas/view/importar/minucia.sql');
foreach ($sqlScript as $line)   {
        
        $startWith = substr(trim($line), 0 ,2);
        $endWith = substr(trim($line), -1 ,1);
        
        if (empty($line) || $startWith == '--' || $startWith == '/*' || $startWith == '//') {
                continue;
        }
                
        $query = $query . $line;
        if ($endWith == ';') {
                mysqli_query($con,$query) or die('<div class="error-response sql-import-response">Problem in executing the SQL query <b>' . $query. '</b></div>');
                $query= '';             
        }
}
echo '<div class="success-response sql-import-response">Importacion exitosa</div>';
?>

