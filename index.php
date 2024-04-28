<!doctype html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title> Pokedex </title>
    <link rel='stylesheet' type='text/css' media='screen' href='style.css'>
</head>
<body>
    <?php
    include_once 'header.php';
    ?>

    <table>
    <tr>
        <td>Imagen</td>
        <td>Tipo</td>
        <td>Número</td>
        <td>Nombre</td>
    </tr>
    <?php

    $directorio = "imagenes_subidas_por_admin/"; // Aparece la lista de pokemones que el admin subió
    $imagenes = glob($directorio . "*.{jpg,png,gif}", GLOB_BRACE);
    $numero = 1;
    foreach ($imagenes as $imagen) {
        $nombrePokemon = pathinfo($imagen, PATHINFO_FILENAME);
        echo "<tr>";
        echo "<td class=\"imagen_pokemon\"><img src=\"$imagen\" alt=\"$nombrePokemon\"></td>";
        echo "<td class=\"tipo_pokemon\"> gi </td>";
        echo "<td class=\"numero_pokemon\">$numero</td>";
        echo "<td class=\"nombre_pokemon\">$nombrePokemon</td>";
        echo "</tr>";
        $numero++; // Se incrementa para que el admin no lo tenga que hacer a mano
    }
    ?>
</table>

</body>
</html>