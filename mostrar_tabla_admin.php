<?php
// Información de mi BDD
    $servername = "localhost";
    $username = "root";
    $password_bd = "";
    $database = "tp_pokedex";

    // Crear conexion 
    $conn = mysqli_connect($servername, $username, $password_bd, $database);


// Verificar la conexión
if ($conn->connect_error) {
    die("Error de conexión: " . $conn->connect_error);
}

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
    echo "<th>Acciones</th>";
    echo "</tr>";

    // Recorrer los resultados y mostrar los datos de cada Pokemon en filas de la tabla
    while ($fila = $resultado->fetch_assoc()) {
        echo "<tr>";
        // Mostrar los datos del Pokemon en celdas de la tabla
        echo "<td>" . $fila['numero_identificador'] . "</td>";
        echo "<td>" . $fila['nombre'] . "</td>";
        echo "<td>" . $fila['tipo'] . "</td>";
        // Mostrar la imagen en una celda de la tabla
        echo '<td><img src="' . $fila['imagen'] . '" alt="Pokemon"></td>';
        // Agregar la columna de acciones con botones para modificar y eliminar
        echo "<td> <button> Modificar </button> <button> Eliminar </button> </td>";
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
