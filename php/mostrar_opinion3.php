<?php
// Habilitar errores para depuración
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);

// Conexión a la base de datos
$conexion = new mysqli('localhost', 'root', 'root', 'transporte_db');
if ($conexion->connect_error) {
    die("Error de conexión: " . $conexion->connect_error);
}

// Consulta para obtener las últimas 4 opiniones
$sql = "SELECT nombre_apellido, comentario, puntuacion FROM puntuaciones ORDER BY id DESC LIMIT 4";
$resultado = $conexion->query($sql);

if ($resultado) {
    if ($resultado->num_rows > 0) {
        echo '<div class="opiniones-lista">';

        while ($fila = $resultado->fetch_assoc()) {
            // Escapar datos para evitar problemas de seguridad
            $nombre = htmlspecialchars($fila['nombre_apellido'], ENT_QUOTES, 'UTF-8');
            $comentario = htmlspecialchars($fila['comentario'], ENT_QUOTES, 'UTF-8');
            $puntuacion = (int)$fila['puntuacion'];

            // Generar el HTML para cada opinión
            echo '<div class="testimonial-client">';
            echo '<div class="client-name">' . $nombre . '</div>';
            echo '<div class="testimonial-text"><p>' . $comentario . '</p></div>';
            echo '<div class="testimonial-rating">';

            // Generar las estrellas según la puntuación
            for ($i = 1; $i <= 5; $i++) {
                if ($i <= $puntuacion) {
                    echo '<i class="fa fa-star checked"></i>'; // Estrella amarilla
                } else {
                    echo '<i class="fa fa-star"></i>'; // Estrella gris
                }
            }

            echo '</div></div>';
        }

        echo '</div>';
    } else {
        echo "<p>No hay opiniones disponibles en este momento. ¡Sé el primero en dejar una opinión!</p>";
    }
} else {
    echo "<p>Error al obtener las opiniones: " . $conexion->error . "</p>";
}

// Cerrar la conexión
$conexion->close();
?>