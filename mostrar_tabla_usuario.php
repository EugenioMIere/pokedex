<?php
//conectar a bdd
include_once 'base_de_datos.php';

// Consulta para obtener todas las imágenes de la tabla "pokemon"
$sql = "SELECT numero_identificador, nombre, tipo, imagen FROM pokemon";

// Ejecutar la consulta
$resultado = mysqli_query($conn, $sql);

// Verificar si se obtuvieron resultados
if ($resultado->num_rows > 0) {
    // Comenzar la tabla
    echo "<table border='1'>";
    echo "<tr>";
    echo "<th>ID</th>";
    echo "<th>Nombre</th>";
    echo "<th>Tipo</th>";
    echo "<th>Imagen</th>";
    echo "</tr>";

    // Recorrer los resultados y mostrar los datos de cada Pokemon en filas de la tabla
    while ($fila = $resultado->fetch_assoc()) {
        echo "<tr>";
        // Mostrar los datos del Pokemon en celdas de la tabla
        echo "<td >" . $fila['numero_identificador'] . "</td>";
        echo "<td >" . $fila['nombre'] . "</td>";
        echo '<td><img src="'."./Tipos/" . $fila['tipo'] .".webp". '" ></td>';
        // Mostrar la imagen en una celda de la tabla
        echo '<td><img src="' . $fila['imagen'] . '" alt="Pokemon"></td>';
        echo "</tr>";
    }
    // Cerrar la tabla
    echo "</table>";
}  else {
    echo "No se encontraron Pokemon en la base de datos.";
}

// Cerrar la conexión
$conn->close();

?>