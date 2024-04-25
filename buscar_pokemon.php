<?php

if (isset($_POST['search'])){
    $pokemon_buscado = ($_POST['search']);
    $pokemon_encontrado = false;
    $directorio_imagenes = "/pokedex/imagenes_subidas_por_admin/";

    // Obtener la lista de archivos en la carpeta de imágenes
        $archivos = scandir($_SERVER['DOCUMENT_ROOT'] . $directorio_imagenes);
 
         // Recorrer los archivos y Buscar el pokemon por el nombre ingresado
         foreach ($archivos as $archivo) {
            if (is_file($_SERVER['DOCUMENT_ROOT'] . $directorio_imagenes . $archivo)) {
                // Obtener el nombre del archivo sin la extensión
                $nombre_archivo = pathinfo($archivo, PATHINFO_FILENAME);
                // Comparar ignorando mayúsculas y minúsculas
                if (strcasecmp($nombre_archivo,$pokemon_buscado) === 0) {
                    // Mostrar la imagen si se encuentra
                    echo "<img src='$directorio_imagenes$archivo' alt='$nombre_archivo'>";
                    $pokemon_encontrado = true;
                    // Terminar el bucle ya que se encontró el archivo
                    break;
                } 
            } 
         } if (!$pokemon_encontrado){
            echo "Pokemon inexistente";
         }
} else if (!isset($_POST['search'])){
    // Si no buscó ningún pokemon, redirigir al index
    header("Location: index.php");
    exit();
}

?>