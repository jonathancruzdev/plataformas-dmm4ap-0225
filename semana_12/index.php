<?php
  require_once('secciones/header.php');
  require_once('conexion.php');
  // Creamos la consulta SQL
  $sql = "SELECT titulo, portada, estreno
          FROM peliculas";
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
      <li class=" pill pill-text filter">Toda</li>
      <li class=" pill pill-text filter">Ciencia Ficción</li>
      <li class=" pill pill-text filter">Acción</li>
      <li class=" pill pill-text filter">Terror</li>
    </ul>
    <ul class="cards-container">
      <?php
        for ($i=0; $i < count($peliculas); $i++) { 
            $titulo = $peliculas[$i]['titulo'];
            $portada = $peliculas[$i]['portada'];
            $estreno = $peliculas[$i]['estreno'];
            echo("<li class='card'>
                    <a href='detalle.html'>
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
