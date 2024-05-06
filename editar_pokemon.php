<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="editar_pokemon_estilos.css">
    <title>Editar Pokémon</title>
</head>
<body>
<?php
include_once('header.php');

echo "<h1>Editar Pokémon</h1>";

    //conectar a bdd
    include_once 'base_de_datos.php';

// Verificar si se ha recibido el ID (nombre) del Pokémon
if (isset($_GET['nombre'])) {
    $pokemon_nombre = $_GET['nombre'];

    // Consulta para obtener los datos del Pokémon
    $sql = "SELECT * FROM pokemon WHERE nombre = '$pokemon_nombre'";
    $resultado = mysqli_query($conn, $sql);

    if ($resultado && mysqli_num_rows($resultado) > 0) {
        $pokemon = mysqli_fetch_assoc($resultado);
        // Mostrar un formulario con los datos del Pokémon para su edición
        ?>
        <form action="actualizar_pokemon.php" method="post">
            <label for="nombre">Nombre:</label>
            <input type="text" name="nombre" value="<?php echo $pokemon['nombre']; ?>"><br>
            <label for="tipo">Tipo:</label>
            <input type="text" name="tipo" value="<?php echo $pokemon['tipo']; ?>"><br>
            <label for="tipo">Descripción:</label>
            <input type="text" name="descripcion" value="<?php echo $pokemon['descripcion']; ?>"><br>
            <input type="submit" value="Guardar cambios">
        </form>
        <?php
    } else {
        echo "No se encontró el Pokémon.";
    }

    // Cerrar conexión
    mysqli_close($conn);
} else {
    echo "ID del Pokémon no proporcionado.";
}
?>
</body>
</html>
