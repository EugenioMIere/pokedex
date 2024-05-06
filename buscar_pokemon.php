<!DOCTYPE html>
<html lang="es">
    <head> 
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel='stylesheet' type='text/css' media='screen' href='style.css'>
    </head>
<body>

<?php
include_once 'header.php';
if (isset($_POST['search'])){
    $pokemon_buscado = ($_POST['search']);
    $pokemon_encontrado = false;
    
    ///conectar a bdd
    include_once 'base_de_datos.php';

// Consulta para obtener el pokemon buscado 
$sql = "SELECT * FROM pokemon WHERE nombre = '" . $pokemon_buscado . "'";

$result = mysqli_query($conn, $sql);

// Si se devuelve un pokemon
if (mysqli_num_rows($result) > 0) {
    while ($row = mysqli_fetch_assoc($result)){
        // Imprimir la informacion del pokemon
        echo '<div class="pokemon">';
       echo '<img class="imagen_pokemon" src="' . $row["imagen"] . '" alt="' . $row["nombre"] . '">';
       echo '<div class="nombre_tipo_container">';
        echo '<h2 class="nombre_pokemon">' . $row["nombre"] . '</h2>';
        echo '<p class="tipo_pokemon"><strong>Tipo:</strong> ' . $row["tipo"] . '</p>';
        echo '</div>';
       echo '<p class="descripcion_pokemon"><strong>Descripción:</strong> ' . $row["descripcion"] . '</p>';
       echo '</div>';
    }
} else {
    echo "El pokemon buscado es inexistente";
}
} else {
    // Si no busca nada, redirige al index
    header('Location: index.php');
    exit();
}

?>
</body>
</html>
