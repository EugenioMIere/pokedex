<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Editar Pokémon</title>
</head>
<body>
<h1>Editar Pokémon</h1>
<?php
// Verificar si se ha recibido el ID del Pokémon
if (isset($_GET['id'])) {
    $pokemon_id = $_GET['id'];

    // Información de la base de datos
    $servername = "localhost:3307";
    $username = "root";
    $password_bd = "";
    $database = "tp_pokedex";

    // Crear conexión
    $conn = mysqli_connect($servername, $username, $password_bd, $database);

    // Verificar la conexión
    if (!$conn) {
        die("Error de conexión: " . mysqli_connect_error());
    }

    // Consulta para obtener los datos del Pokémon
    $sql = "SELECT * FROM pokemon WHERE nombre = $pokemon_id";
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
