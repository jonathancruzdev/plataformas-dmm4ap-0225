<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Peliculas</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <h1>Peliculas</h1>

    <?php
        // variables
        $nombre = "Jonathan";
        $logueado = true;
        // Array indexado numerico
        $peliculas = [
            'images/batalla.webp', 
            'images/cuatro.webp',
            'images/superman.webp',
            'images/tiempos.webp'
        ];

        if( $logueado == true){
            echo("<h2> Bienvenido  $nombre </h2>");
            for( $i=0; $i < 4; $i++){
                $imgUrl = $peliculas[$i];
                echo("<img src='$imgUrl' class='pelicula' />" );
            }

        } else {
            echo("<h2 class='text-danger'> No Registrado </h2>");
        }
    ?>
</body>
</html>