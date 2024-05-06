<?php
$config = parse_ini_file('pokedex.ini');


$servername = $config['host'];
$username = $config['username'];
$password_bd = $config['password'];
$database = $config['database'];


$conn = mysqli_connect($servername, $username, $password_bd, $database);


// Verificar la conexión
if ($conn->connect_error) {
    die("Error de conexión: " . $conn->connect_error);
}