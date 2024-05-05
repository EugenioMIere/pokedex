<?php
session_start();

// Preguntar si esta seteado en el form
if (isset($_POST['user']) && isset($_POST['password'])){
    $user = $_POST['user'];
    $password = $_POST['password'];

// Preguntar a la BD si es valido el usuario
    $esValido = consultarBD($user, $password);

    if ($esValido){
        $_SESSION['user'] = $user;

        header("location: vista_administrador.php"); // La vista_administrador nos lleva a la pag principal de administrador logueado


        exit();
    } else { // si el usuario no está registrado, redirige al index
        header("location: index.php");
    }
} else {
    // si no se mandó info por el form, redirige al index
    header("location: index.php");
    exit();
}

function consultarBD ($user, $password){
    $servername = "localhost:3307";
    $username = "root";
    $password_bd = "";
    $database = "tp_pokedex";

    // Crear conexion 
    $conn = mysqli_connect($servername, $username, $password_bd, $database);

    // Verificar conexion
    if (!$conn){
        die("Error al conectar con la base de datos: " . mysqli_connect_error());
    }

    // Realizar consulta
    $sql = "SELECT * FROM login WHERE usuario = '" . $user . "' && password = '" . $password . "'";
    $result = mysqli_query($conn, $sql);

    return mysqli_num_rows($result);
}

?>