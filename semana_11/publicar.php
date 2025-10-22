<?php
    require_once('secciones/head.php');
    require_once('secciones/nav.php');

?>
<main>
    <h2>Publicar Pelicula</h2>
    <form action="" method="post">
        <label for="titulo">Título</label>
        <input name="titulo" type="text" id="titulo">

        <label for="foto">Foto</label>
        <input name="foto" type="file">

        <label for="fecha">Fecha</label>
        <input name="fecha" type="number">

        <label for="genero">Género</label>
        <select name="id_genero" id="genero">
            <option value="1">Acción</option>
            <option value="2">Aventura</option>
        </select>

        <label for="detalle">Detalle</label>
        <textarea name="detalle" id="detalle" rows="5"></textarea>

        <button type="submit">Publicar</button>
    </form>
</main>

<?php
    require_once('secciones/footer.php');
?>