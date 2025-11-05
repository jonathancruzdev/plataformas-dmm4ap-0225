<?php
  require_once('secciones/header.php');

  $sqlGeneros = "SELECT id, nombre
                 FROM generos";
  $resGeneros = mysqli_query($conexion, $sqlGeneros);
  $generos = mysqli_fetch_all($resGeneros, MYSQLI_ASSOC);

  // Creamos la consulta SQL según el filtro
  if( isset( $_GET['id_genero']) ) {
    $id_genero = $_GET['id_genero'];

    $sql = "SELECT p.id, P.titulo, P.portada, P.estreno
            FROM peliculas P
            INNER JOIN peliculas_generos PG ON PG.id_pelicula = P.id
            INNER JOIN generos G ON G.id = PG.id_genero 
            WHERE G.id = $id_genero";
  } else {
     $sql = "SELECT P.id, P.titulo, P.portada, P.estreno
             FROM peliculas P";
  }

  $resultado = mysqli_query($conexion, $sql);
  $peliculas = mysqli_fetch_all($resultado, MYSQLI_ASSOC);
  
?>
  <main class="container">
        <form action="#" id="search-movie">
            <label for="buscar">Buscar películas</label>
            <input type="search" id="buscar" name="buscar" placeholder="Buscar..." >
        </form>
    <div class="page-title">
      <h1 class="h1">Explorar</h1>
    </div>
    <ul class="fillters">
      <li class=" pill pill-text filter">
        <a href="index.php">Todas</a>
      </li>
      <?php
        for ($i=0; $i < count($generos); $i++) { 
          $id_genero = $generos[$i]['id'];
          $nombre = $generos[$i]['nombre'];
          echo("<li class='pill pill-text filter'>
                  <a href='index.php?id_genero=$id_genero'>$nombre</a>
                </li>");
        }
      ?>
<!--       <li class=" pill pill-text filter">
        <a href="#">Ciencia Ficción</a>
      </li> -->
    
    </ul>
    <ul class="cards-container">
      <?php
        for ($i=0; $i < count($peliculas); $i++) { 
            $id_pelicula = $peliculas[$i]['id'];
            $titulo = $peliculas[$i]['titulo'];
            $portada = $peliculas[$i]['portada'];
            $estreno = $peliculas[$i]['estreno'];
            echo("<li class='card'>
                    <a href='detalle.php?id_pelicula=$id_pelicula'>
                      <img src='$portada' alt='$titulo'>
                      <h2 class='movie-title'>$titulo</h2>
                      <p>$estreno</p>
                    </a>
                  </li>");
        }
      ?>
   
     
    </ul>
  </main>
<?php
  require_once('secciones/footer.php');
?>
