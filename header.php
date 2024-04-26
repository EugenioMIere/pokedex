
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
<header>
    <div class="conteiner">
     <div class="inicio">
    <img src="imagenes/Pokedex.png" alt="">
     </div>
     <div class="centro">
    <h1>Pokedex</h1>
     </div>
    <div class="final">
    <form action="validar_session.php" method="post" >
        <label for="user" ></label>
        <input type="text" id="user" name="user" required placeholder="Usuario">

        <label for="password"></label>
        <input type="password" id="password" name="password" required placeholder="Clave">
        <button type="submit" >Ingresar</button>
    </form>
    </div>
    </div>
</header>

<div class="search">
    <form action="buscar_pokemon.php" method="post" >

        <label for="search" ></label>
        <input type="search" id="search" name="search" required placeholder="Ingrese el nombre, tipo o numero de pokemon">
        <button type="submit"> ¿Quién es este pokemon? </button>
    </form>
</div>

</body>
</html>