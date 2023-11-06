<?php

    //conexion base de datos
    require('../conexion.php');

    //recuperar la informacion del formulario html ReEmpleados
    $nombre = $_POST['nombre'];
    $precio = $_POST['precio'];
    $categoria = $_POST['categoria'];
    
    // Procesa la imagen
    $rutaCarpeta = "../fotos/";
    $nombreImagen = $_FILES["fil_foto"]["name"];
    $rutaImagen = $rutaCarpeta . $nombreImagen;


    //preparar sql
    $sql = "insert into platos(id_categoria, nombre, precio, ruta) 
    values('$categoria','$nombre','$precio','$rutaImagen');";

     // Execute sql
     $result = pg_query($conn, $sql);

     if (!$result) {
        die("Error al ejecutar la consulta.");
    }else{
        // Mueve la imagen desde el directorio temporal al directorio de destino
        if (move_uploaded_file($_FILES["fil_foto"]["tmp_name"], $rutaImagen)) {
            echo "<script>alert('Registro exitoso');</script>";
            header("Refresh:0;url=http://localhost/AmorMX/pages/Administrador.php");
        } else {
            echo "Error al subir la imagen.";
        }

    }  

?>