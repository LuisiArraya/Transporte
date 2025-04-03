<?php
header('Content-Type: application/json');

// Habilitar errores para depuración
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);

// Conexión a la base de datos
$conexion = new mysqli('localhost', 'root', 'root', 'transporte_db');
if ($conexion->connect_error) {
    die("Error de conexión: " . $conexion->connect_error);
}

if ($conexion->connect_error) {
    echo json_encode(['status' => 'error', 'message' => 'Error en la conexión a la base de datos.']);
    exit;
}

// Validar los datos enviados
if (isset($_POST['nombre_apellido'], $_POST['star'], $_POST['comentario'])) {
    $nombre = $conexion->real_escape_string($_POST['nombre_apellido']);
    $puntuacion = (int) $_POST['star'];
    $comentario = $conexion->real_escape_string($_POST['comentario']);

    // Insertar los datos en la base de datos
    $sql = "INSERT INTO puntuaciones (nombre_apellido, puntuacion, comentario) VALUES ('$nombre', $puntuacion, '$comentario')";

    if ($conexion->query($sql) === TRUE) {
        echo json_encode(['status' => 'success', 'message' => 'Puntuación guardada correctamente.']);
    } else {
        echo json_encode(['status' => 'error', 'message' => 'Error al guardar los datos.']);
    }
} else {
    echo json_encode(['status' => 'error', 'message' => 'Por favor, completa todos los campos.']);
}

$conexion->close();
?>