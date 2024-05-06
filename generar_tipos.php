<?php
// Conectar con mi BDD
include 'base_de_datos.php';

// Consultar los tipos de Pokémon desde la base de datos
$sql = "SELECT DISTINCT tipo FROM pokemon";
$resultado = $conn->query($sql);

// Verificar si hay resultados
if ($resultado->num_rows > 0) {
    echo '<select id="tipo" name="tipo" required>';
    echo '<option value="">Selecciona un tipo</option>';
    // Generar las opciones
    while($fila = $resultado->fetch_assoc()) {
        echo '<option value="' . $fila['tipo'] . '">' . $fila['tipo'] . '</option>';
    }
    echo '</select>';
} else {
    echo 'No se encontraron tipos de Pokémon en la base de datos.';
}

// Cerrar la conexión a la base de datos
$conn->close();
?>
