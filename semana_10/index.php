<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Peliculas</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <?php
        // Esto vendria de la base de datos
        $nombre = 'Gala';
        $usuario = [
            'nombre' => 'Carlos',
            'email' => 'carlos@gamil.com',
            'foto' => 'images/hombre.png'
        ];
        $logueado = true;
        // Array indexado numerico
        $peliculas = [
            ['titulo' => 'La última batalla', 'foto' => 'images/batalla.webp', 'likes' => 100],
            ['titulo' => 'Lo cuatro fantasitcos', 'foto' => 'images/cuatro.webp', 'likes' => 50],
            ['titulo' => 'Superman', 'foto' => 'images/superman.webp', 'likes' => 200],
            ['titulo' => 'Tiempo de Asesinos', 'foto' => 'images/tiempos.webp', 'likes' => 10]
        ];
    ?>
    <h1>Peliculas</h1>
    <hr>
    <?php
        $avatar = $usuario['foto'];
        if( $logueado == true){
            echo("<h2>Bienvenido $nombre</h2>");
            echo("<img src='$avatar' />");
            echo("<br>");
            for( $i=0; $i< count($peliculas)  ; $i++){
                $titulo = $peliculas[$i]['titulo'];
                $imgUrl = $peliculas[$i]['foto'];
                $likes = $peliculas[$i]['likes'];
                echo("<div class='card'>
                            <img src='$imgUrl' alt='' class='pelicula'>
                            <h4> $titulo </h4>
                     </div>");
            }

       
   

        } else {
            echo("<h2> Registrase </h2>");
        }
    ?>
    

</body>
</html>