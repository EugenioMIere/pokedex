<!DOCTYPE html>
<html lang="es">
    <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title> Eliminar Pokemon </title>
    </head> 
<body>

    <?php
///conectar a bdd
include_once 'base_de_datos.php';

// Verificar si se mandó el id (nombre) del pokemon
if (isset($_GET['nombre'])){
    $nombre = $_GET['nombre'];

    // Conecto a la BDD
    include_once('base_de_datos.php');

    // Consulta para eliminar el Pokemon
    $sql = "DELETE from pokemon WHERE nombre = '$nombre'";

    // Guardo resultado en una varialbe
    $resultado = mysqli_query($conn, $sql);

    // Verifico q no arroje resultados vacíos
    if ($resultado) {
        //  Confirmo la eliminación y redirecciono
        echo "Los datos del Pokémon se han eliminado correctamente.";
    } else {
        // Muestro el error si no arrojó nada
        echo "Error al eliminar los datos del Pokémon: " . mysqli_error($conn) . ".";
    }
}

// Cerrar la conexión
$conn->close();
?>

</body>     
</html>
