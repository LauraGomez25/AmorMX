<?php

    //conexion base de datos
    require('../conexion.php');

    //recuperar la informacion del formulario html ReEmpleados
    $nombre = $_POST['name'];
    $dni = $_POST['dni'];
    $correo = $_POST['email'];
    $telefono = $_POST['phone'];
    $direccion = $_POST['dir'];
    $pass = $_POST['pass'];
    $tipo = $_POST['rol'];
    
    //preparar sql
    $sql = "insert into 
                usuarios (nombre_completo, cedula, contrasena, correo, telefono, id_tipo_usuario, direccion) 
            values('$nombre', '$dni', '$pass', '$correo', '$telefono', $tipo, '$direccion')";

     // Execute sql
     $result = pg_query($conn, $sql);

     if (!$result) {
        die("Error al ejecutar la consulta.");
    }else{
        echo "<script>alert('Registro exitoso');</script>";
        header("Refresh:0;url=http://localhost/AmorMX/pages/Administrador.php");
    }

?>