<?php
// Información de mi BDD
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

// Verificar si se han enviado los datos del formulario
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Obtener los datos del formulario
    $nombre = $_POST['nombre'];

    // Consulta para actualizar los datos del Pokémon
    $sql = "DELETE from pokemon WHERE nombre='$nombre'";

    // Ejecutar la consulta
    if (mysqli_query($conn, $sql)) {
        // Mostrar confirmación mediante JavaScript y redireccionar
        echo "<script>alert('Los datos del Pokémon se han eliminado correctamente.'); window.location.href = 'vista_administrador.php';</script>";
    } else {
        // Mostrar error mediante JavaScript
        echo "<script>alert('Error al actualizar los datos del Pokémon: " . mysqli_error($conn) . "');</script>";
    }
}

// Cerrar la conexión
$conn->close();
?>
