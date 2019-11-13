<?php
$db_host="localhost";
$db_user="root";
$db_password="";
$db_name="uft";
$db_table_name="universitario";
   $db_connection = mysqli_connect($db_host, $db_user, $db_password);

if (!$db_connection) {
	die('No se ha podido conectar a la base de datos');
}
$subs_name = utf8_decode($_POST['nombre']);
$subs_telefono = utf8_decode($_POST['telefono']);
$subs_email = utf8_decode($_POST['email']);

$resultado=mysqli_query($db_connection, "SELECT * FROM ".$db_table_name." WHERE Email = '".$subs_email."'");

if (mysqli_num_rows($resultado)>0)
{

header('Location: Fail.html');

} else {
	
	$insert_value = 'INSERT INTO`' . $db_name . '`.`'.$db_table_name.'` (`Nombre` , `Telefono` , `Email`) VALUES ("' . $subs_name . '", "' . $subs_telefono . '", "' . $subs_email .'")';

mysqli_select_db($db_connection, $db_name);
$retry_value = mysqli_query($db_connection, $insert_value);

if (!$retry_value) {
   die('Error: ' . mysqli_error($db_connection));
}
	
header('Location: index.html');

}

mysqli_close($db_connection);

		
?>