<!DOCTYPE html>
<html lang="es">
    <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="/css/agregar_pokemon_estilos">
    <title> Agregar Pokémon </title>
    </head>
<body>
    <h1> Agregar Pokémon </h1>
    <?php

    include_once('header.php');

    ?>

   <form action="nuevo_pokemon.php" method="post">
               <label for="numero">Número:</label>
                <input type="number" id="numero" name="numero"> <br>
                <label for="nombre">Nombre:</label>
                <input type="text" id="nombre" name="nombre"> <br>
                <label for="tipo">Tipo:</label>
                <input type="select" id="tipo" name="tipo"><br>
                <?php include 'generar_tipos.php'; ?> // Trae los tipos de pokemon desde la base de datos
                <label for="tipo">Descripción:</label>
                <input type="text" id="descripcion" name="descripcion"><br>
                <label for="imagen">Imágen:</label>
                <input type="file" id="imagen" name="imagen"> <br>
                <input type="submit" value="Agregar">
    </form>

</body>
</html>