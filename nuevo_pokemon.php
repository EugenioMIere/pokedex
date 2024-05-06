<?php

// Verificar si los datos del pokemon a agregar fueron enviados 
if (isset ($_POST['imagen']) && isset($_POST['nombre']) && isset($_POST['tipo']) && isset($_POST['descripcion']) && isset($_POST['numero'])){
    $imagen = $_POST['imagen'];
    $nombre = $_POST['nombre'];
    $tipo = $_POST['tipo'];
    $descripcion = $_POST['descripcion'];
    $numero = $_POST['numero'];

    include_once('base_de_datos.php');

    $sql = "INSERT INTO pokemon (numero_identificador, imagen, nombre, tipo, descripcion) VALUES ($numero, $imagen, $nombre, $tipo, $descripcion)";
    $resultado = mysqli_query($conn, $sql);

    if ($resultado){
        echo "El Pokemon ha sido agregado correctamente";
    } else {
        echo "Error al agregar los datos del Pokémon: " . mysqli_error($conn);
    } 
    
    // Cerrar conexión
    mysqli_close($conn);

} else {
    echo "No se han recibido todos los datos necesarios.";
}


?>