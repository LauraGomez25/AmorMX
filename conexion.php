<?php
	$host = "localhost";
	$port = "5432"; // Puerto predeterminado de PostgreSQL
	$dbname = "nombre_de_base_de_datos";
	$user = "nombre_de_usuario";
	$password = "contraseña";

	// Connect to db
	$dbconn = pg_connect("host=$host port=$port dbname=$dbname user=$user password=$password");

	if (!$dbconn) {
    		die("Error");
	} else {
		echo "OK OK";
	}


	// Close connection
	pg_close($dbconn);
?>