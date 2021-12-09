<?php

use \Psr\Http\Message\ServerRequestInterface as Request;
use \Psr\Http\Message\ResponseInterface as Response;

$app = new \Slim\App;



//Enviar suscripciones
$app->post('/api/suscriptor/nuevo', function (Request $request, Response $response) {
    $email = $request->getParam('email');

    $sql = "INSERT INTO suscriptores (email) VALUES (:email)";

    try {
        $db = new Conexion();
        $db = $db->conectar();
        $resultado = $db->prepare($sql);

        $resultado->bindParam(':email', $email);

        $resultado->execute();
        echo json_encode('¡Te has suscripto!');

        $resultado = null;
        $db = null;
    } catch (PDOException $e) {
        echo '{"error": {"text":' . $e->getMessage() . '}';
    }
});