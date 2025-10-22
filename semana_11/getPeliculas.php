<?php
        $peliculas = [
            ['titulo' => 'La última batalla', 'foto' => 'images/batalla.webp', 'likes' => 100],
            ['titulo' => 'Lo cuatro fantasitcos', 'foto' => 'images/cuatro.webp', 'likes' => 50],
            ['titulo' => 'Superman', 'foto' => 'images/superman.webp', 'likes' => 200],
            ['titulo' => 'Tiempo de Asesinos', 'foto' => 'images/tiempos.webp', 'likes' => 10]
        ];
    echo( json_encode($peliculas));
?>