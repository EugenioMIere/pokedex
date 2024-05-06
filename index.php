<!doctype html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title> Pokedex </title>
    <link rel='stylesheet' type='text/css' media='screen' href='css/style.css'>
</head>
<body>
<?php
include_once 'header.php';

// Verificar si el usuario ha iniciado sesión y es "administrador"
if (isset($_SESSION['usuario']) && $_SESSION['usuario'] === 'administrador') {
    include_once('mostrar_tabla_admin.php');
} else {
    include_once('mostrar_tabla_usuario.php');
}

?>
</table>

</body>
</html>