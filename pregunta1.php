<?php
$conexion = mysqli_connect("localhost", "root", "", "phasmotrivia");
mysqli_set_charset($conexion, "utf8mb4");

$consulta1 = mysqli_query($conexion, "SELECT * FROM preguntas WHERE id = 1");
$pregunta = mysqli_fetch_assoc($consulta1);

$consulta2 = mysqli_query($conexion, "SELECT * FROM opciones WHERE pregunta_id = 1");
?>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>PhasmoTrivia - Pregunta 1</title>
    <link href="https://fonts.googleapis.com/css2?family=Sora:wght@400;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="style.css">
</head>
<body style="background-image: url('img/fondo1.png');">
    <header>
        <nav class="navbar">
            <a class="logo" href="index.html">PhasmoTrivia</a>
            <a href="pregunta1.php">Jugar</a>
        </nav>
    </header>

    <main>
        <div class="tarjeta">
            <p class="numero">Pregunta N°1:</p>
            <h2 class="enunciado"><?php echo $pregunta['texto']; ?></h2>

            <?php
            while ($opcion = mysqli_fetch_assoc($consulta2)) {
                $correcta = $opcion['es_correcta'];
                $texto = $opcion['texto_respuesta'];
                echo "<button type='button' class='opcion' data-correcta='$correcta' onclick='responder(this)'>$texto</button>";
            }
            ?>

            <p id="mensaje"></p>

            <div class="navegacion">
                <a class="boton-chico" href="index.html">Atras</a>
                <a class="boton-chico" href="pregunta2.php">Siguiente</a>
            </div>
        </div>
    </main>

    <footer>
        <p>PhasmoTrivia - Inspirado en Phasmophobia</p>
    </footer>

    <script src="script.js"></script>
</body>
</html>
