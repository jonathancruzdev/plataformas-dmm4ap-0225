<?php
    require_once("secciones/head.php");
    require_once("secciones/nav.php");
    require_once("conexion.php");
?>
    <main>
    <?php
        $sql = "SELECT id_pelicula, titulo, foto, likes 
                FROM peliculas";
        $result = mysqli_query($conexion, $sql);
        $peliculas = mysqli_fetch_all($result, MYSQLI_ASSOC);

        // Esto vendria de la base de datos
        $nombre = 'Jonathan';
        $usuario = [
            'nombre' => 'Carlos',
            'email' => 'carlos@gamil.com',
            'foto' => 'images/hombre.png'
        ];
        $logueado = true;
        // Array indexado numerico
        
    ?>

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
    </main>
<?php
    require_once("secciones/footer.php");
?>