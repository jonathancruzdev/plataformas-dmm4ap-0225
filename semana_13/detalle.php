<?php
  require_once('secciones/header.php');
  if( isset($_GET['id_pelicula'])){
    $id_pelicula = $_GET['id_pelicula'];
    $sql = "SELECT P.id, P.titulo, P.portada, P.estreno, P.descripcion, p.director, P.duracion, P.trailer
             FROM peliculas P
             WHERE P.id = $id_pelicula";
    $resultado = mysqli_query($conexion, $sql);
    $pelicula = mysqli_fetch_all($resultado, MYSQLI_ASSOC)[0];
    $id_pelicula = $pelicula['id'];
    $titulo = $pelicula['titulo'];
    $portada = $pelicula['portada'];
    $estreno = $pelicula['estreno'];
    $descripcion = $pelicula['descripcion'];
    $director = $pelicula['director'];
    $duracion = $pelicula['duracion'];
    $trailer = $pelicula['trailer'];



  } else {
    header('Location: index.php');
  }
?>

  <main class="container">
    <section class="detalles-pelicula">
      <div class="movie-poster">
        <img src="<?php echo($portada);?>" alt="<?php echo($titulo);?>">
      </div>
      <div class="movie-info">
        <div class="movie-info_title">
          <h3 class="h3"><?php echo($titulo); ?></h3>
          <ul class="movie-info_genres">
            <li class="pill pill-text">Acción</li>
            <li class="pill pill-text">Fantasía</li>
          </ul>
        </div>
        <p class="movie-info_sinopsis"><?php echo($descripcion); ?></p>
        <a href="<?php echo($trailer);?>" target="_blank" class="movie-info_trailer">🎥 Ver tráiler</a>
        <dl class="movie-info_facts">
          <div><dt>Año</dt><dd><?php echo($estreno);?></dd></div>
          <div><dt>Duración</dt><dd><?php echo($duracion);?> min</dd></div>
          <div><dt>Director</dt><dd><?php echo($director);?></dd></div>
        </dl>

      </div>
    </section>
  </main>

 <?php
  require_once('secciones/footer.php');
?>