<?php
include_once 'header.php';
// Información de mi BDD
$nombre = "";
$tipo = "";
$descripcion = "";

$servername = "localhost:3307";
$username = "root";
$password_bd = "";
$database = "tp_pokedex";

// Crear conexión
$conn = mysqli_connect($servername, $username, $password_bd, $database);

// Verificar la conexión
if ($conn->connect_error) {
    die("Error de conexión: " . $conn->connect_error);
}

// Verificar si se ha enviado un nombre de Pokémon para editar
if(isset($_GET['nombre'])){
    $nombre_pokemon = $_GET['nombre'];

    // Consulta para obtener la información del Pokémon seleccionado
    $sql = "SELECT * FROM pokemon WHERE nombre='$nombre_pokemon'";

    // Ejecutar la consulta
    $resultado = mysqli_query($conn, $sql);

    // Verificar si se obtuvieron resultados
    if ($resultado->num_rows > 0) {
        // Obtener los datos del Pokémon
        $fila = $resultado->fetch_assoc();
        $tipo = $fila['tipo'];
        $nombre = $fila['nombre'];
        $descripcion = $fila['descripcion'];
    } else {
        echo "No se encontró información para el Pokémon seleccionado.";
    }
}

?>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Editar Pokémon</title>
    <link rel='stylesheet' type='text/css' media='screen' href='style.css'>
</head>
<body>
<form class= "actualizarPokemon" action="actualizar_pokemon.php" method="post">
    <h2>Editar Pokémon</h2>
    <label for="nombre">Nombre:</label>
    <input class="txt-actualizar" type="text" id="nombre" name="nombre" value="<?php echo $nombre; ?>"><br><br>
    <label for="tipo">Tipo:</label>
    <input class="txt-actualizar" type="text" id="tipo" name="tipo" value="<?php echo $tipo; ?>"><br><br>
    <label for="descripcion">Descripcion:</label>
    <input class="txt-actualizar" type="text" id="descripcion" name="descripcion" value="<?php echo $descripcion; ?>"><br><br>
    <input class="btn-actualizar" type="submit" value="Actualizar">
</form>
</body>
</html>

<?php
// Cerrar la conexión
$conn->close();
?>
