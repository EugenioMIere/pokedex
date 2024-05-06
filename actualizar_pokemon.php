<?php
// Verificar si se han enviado los datos del formulario
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Verificar si se han recibido los datos necesarios
    if (isset($_POST['pokemon_id'], $_POST['nombre'], $_POST['tipo'])) {
        // Recuperar los datos del formulario
        $nombre = $_POST['nombre'];
        $tipo = $_POST['tipo'];
        $descripcion = $_POST['descripcion'];
        // Otros campos del Pokémon si los hubiera

       //conectar a bdd
        include_once 'base_de_datos.php';

// Verificar si se han enviado los datos del formulario
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Obtener los datos del formulario
    $nombre = $_POST['nombre'];
    $tipo = $_POST['tipo'];
    $descripcion = $_POST['descripcion'];

        // Consulta para actualizar los datos del Pokémon
        $sql = "UPDATE pokemon SET nombre = '$nombre', tipo = '$tipo', descripcion = '$descripcion' WHERE nombre = $nombre";

        if (mysqli_query($conn, $sql)) {
            echo "Los datos del Pokémon se han actualizado correctamente.";
        } else {
            echo "Error al actualizar los datos del Pokémon: " . mysqli_error($conn);
        }

        // Cerrar conexión
        mysqli_close($conn);
    } else {
        echo "No se han recibido todos los datos necesarios.";
    }
} else {
    echo "Acceso no permitido.";
}
?>
