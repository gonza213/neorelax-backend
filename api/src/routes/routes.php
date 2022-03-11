<?php

use \Psr\Http\Message\ServerRequestInterface as Request;
use \Psr\Http\Message\ResponseInterface as Response;

$app = new \Slim\App;




if ($_SERVER['REQUEST_METHOD'] === 'OPTIONS') {
    header('Access-Control-Allow-Origin: *');
    header('Access-Control-Allow-Methods: POST, GET, DELETE, PUT, PATCH, OPTIONS');
    header('Access-Control-Allow-Headers: token, Content-Type');
    header('Access-Control-Max-Age: 1728000');
    header('Content-Length: 0');
    header('Content-Type: text/plain');
    header("Content-Type: multipart/form-data");
    die();
}

header('Access-Control-Allow-Origin: *');
header('Content-Type: application/json');
header("Content-Type: text/html;charset=utf-8");



$container = $app->getContainer();
$container['upload_directory'] = '../../images';

// $ret = [
//     'result' => 'OK',
// ];
// print json_encode($ret);

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


//Enviar contactos
$app->post('/api/contacto/nuevo', function (Request $request, Response $response) {
    $nombre = $request->getParam('nombre');
    $email = $request->getParam('email');
    $tel = $request->getParam('tel');
    $mensaje = $request->getParam('mensaje');

    $sql = "INSERT INTO contacto (nombre, email, tel, mensaje) VALUES (:nombre, :email, :tel, :mensaje)";

    try {
        $db = new Conexion();
        $db = $db->conectar();
        $resultado = $db->prepare($sql);

        $resultado->bindParam(':nombre', $nombre);
        $resultado->bindParam(':email', $email);
        $resultado->bindParam(':tel', $tel);
        $resultado->bindParam(':mensaje', $mensaje);

        $resultado->execute();
        echo json_encode('¡Has enviado el mensaje!');

        $resultado = null;
        $db = null;
    } catch (PDOException $e) {
        echo '{"error": {"text":' . $e->getMessage() . '}';
    }
});

//Obtener productos 
$app->get('/api/productos', function (Request $request, Response $response) {
    $sql = "SELECT * FROM productos";

    try {
        $db = new Conexion();
        $db = $db->conectar();
        $resultado = $db->query($sql);
        if ($resultado->rowCount() > 0) {
            $productos = $resultado->fetchAll(PDO::FETCH_OBJ);
            echo json_encode($productos);
        } else {
            echo json_encode('No existe productos en la BD');
        }

        $resultado = null;
        $db = null;
    } catch (PDOException $e) {
        echo '{"error": {"text":' . $e->getMessage() . '}';
    }
});



//Obtener productos colchones
$app->get('/api/productos/colchones', function (Request $request, Response $response) {
    $sql = "SELECT * FROM productos WHERE categoria = 'colchon'";

    try {
        $db = new Conexion();
        $db = $db->conectar();
        $resultado = $db->query($sql);
        if ($resultado->rowCount() > 0) {
            $productos = $resultado->fetchAll(PDO::FETCH_OBJ);
            echo json_encode($productos);
        } else {
            echo json_encode('No existe productos en la BD');
        }

        $resultado = null;
        $db = null;
    } catch (PDOException $e) {
        echo '{"error": {"text":' . $e->getMessage() . '}';
    }
});

//Obtener productos almohadas
$app->get('/api/productos/almohadas', function (Request $request, Response $response) {
    $sql = "SELECT * FROM productos WHERE categoria = 'almohada'";

    try {
        $db = new Conexion();
        $db = $db->conectar();
        $resultado = $db->query($sql);
        if ($resultado->rowCount() > 0) {
            $productos = $resultado->fetchAll(PDO::FETCH_OBJ);
            echo json_encode($productos);
        } else {
            echo json_encode('No existe productos en la BD');
        }

        $resultado = null;
        $db = null;
    } catch (PDOException $e) {
        echo '{"error": {"text":' . $e->getMessage() . '}';
    }
});

//Obtener productos sommiers
$app->get('/api/productos/sommiers', function (Request $request, Response $response) {
    $sql = "SELECT * FROM productos WHERE categoria = 'sommier'";

    try {
        $db = new Conexion();
        $db = $db->conectar();
        $resultado = $db->query($sql);
        if ($resultado->rowCount() > 0) {
            $productos = $resultado->fetchAll(PDO::FETCH_OBJ);
            echo json_encode($productos);
        } else {
            echo json_encode('No existe productos en la BD');
        }

        $resultado = null;
        $db = null;
    } catch (PDOException $e) {
        echo '{"error": {"text":' . $e->getMessage() . '}';
    }
});

//Obtener productos cuellos
$app->get('/api/productos/cuellos', function (Request $request, Response $response) {
    $sql = "SELECT * FROM productos WHERE categoria = 'cuello'";

    try {
        $db = new Conexion();
        $db = $db->conectar();
        $resultado = $db->query($sql);
        if ($resultado->rowCount() > 0) {
            $productos = $resultado->fetchAll(PDO::FETCH_OBJ);
            echo json_encode($productos);
        } else {
            echo json_encode('No existe productos en la BD');
        }

        $resultado = null;
        $db = null;
    } catch (PDOException $e) {
        echo '{"error": {"text":' . $e->getMessage() . '}';
    }
});


//Obtener producto
$app->get('/api/producto/{id}', function (Request $request, Response $response) {
    $id = $request->getAttribute('id');
    $sql = "SELECT * FROM productos WHERE id = $id";

    try {
        $db = new Conexion();
        $db = $db->conectar();
        $resultado = $db->query($sql);
        if ($resultado->rowCount() > 0) {
            $productos = $resultado->fetchAll(PDO::FETCH_OBJ);
            echo json_encode($productos);
        } else {
            echo json_encode('No existe productos en la BD');
        }

        $resultado = null;
        $db = null;
    } catch (PDOException $e) {
        echo '{"error": {"text":' . $e->getMessage() . '}';
    }
});


//Obtener imagenes
$app->get('/api/imagenes/{id}', function (Request $request, Response $response) {
    $id = $request->getAttribute('id');
    $sql = "SELECT productos.*, galeria.*  FROM productos INNER JOIN galeria ON productos.id = galeria.id_producto WHERE id = $id";

    try {
        $db = new Conexion();
        $db = $db->conectar();
        $resultado = $db->query($sql);
        if ($resultado->rowCount() > 0) {
            $productos = $resultado->fetchAll(PDO::FETCH_OBJ);
            echo json_encode($productos);
        } else {
            echo json_encode('No existe productos en la BD');
        }

        $resultado = null;
        $db = null;
    } catch (PDOException $e) {
        echo '{"error": {"text":' . $e->getMessage() . '}';
    }
});


//Obtener imagenes
$app->get('/api/imagenes', function (Request $request, Response $response) {

    $sql = "SELECT * FROM galeria";

    try {
        $db = new Conexion();
        $db = $db->conectar();
        $resultado = $db->query($sql);
        if ($resultado->rowCount() > 0) {
            $productos = $resultado->fetchAll(PDO::FETCH_OBJ);
            echo json_encode($productos);
        } else {
            echo json_encode('No existe productos en la BD');
        }

        $resultado = null;
        $db = null;
    } catch (PDOException $e) {
        echo '{"error": {"text":' . $e->getMessage() . '}';
    }
});


//Registrar
$app->post('/api/usuario/nuevo', function (Request $request, Response $response) {
    $nombre = $request->getParam('nombre');
    $email = $request->getParam('email');
    $password = $request->getParam('password');
    $encriptar = crypt($password, '$2y$05$2ihDv8vVf7QZ9BsaRrKyqs2tkn55Yq');
    $sql = "INSERT INTO usuarios (nombre, email, password) VALUES (:nombre, :email, :password)";

    try {
        $db = new Conexion();
        $db = $db->conectar();
        $resultado = $db->prepare($sql);

        $resultado->bindParam(':nombre', $nombre);
        $resultado->bindParam(':email', $email);
        $resultado->bindParam(':password', $encriptar);


        $resultado->execute();
        echo json_encode('¡Te has registrado!');

        $resultado = null;
        $db = null;
    } catch (PDOException $e) {
        echo '{"error": {"text":' . $e->getMessage() . '}';
    }
});




//Enviar formulario
$app->post('/api/formulario/nuevo', function (Request $request, Response $response) {
    $nombre = $request->getParam('nombre');
    $apellido = $request->getParam('apellido');
    $dni = $request->getParam('dni');
    $tel = $request->getParam('tel');
    $email = $request->getParam('email');
    $domicilio = $request->getParam('domicilio');
    $numero = $request->getParam('numero');
    $pais = $request->getParam('pais');
    $provincia = $request->getParam('provincia');
    $localidad = $request->getParam('localidad');
    $codigo = $request->getParam('codigo');
    $envios = $request->getParam('envios');
    $productos = $request->getParam('productos');
    $total = $request->getParam('total');
    $metodo = $request->getParam('metodo');
    $datos = json_encode($productos);
    $datos2 = json_encode($envios);

    $sql = "INSERT INTO ventas (nombre, apellido, dni, tel, email, domicilio, numero, pais, provincia, localidad, codigo, envios, productos, total, metodo_pago) VALUES (:nombre, :apellido, :dni, :tel, :email, :domicilio, :numero, :pais, :localidad, :provincia, :codigo, :envios, :productos, :total, :metodo_pago)";

    try {
        $db = new Conexion();
        $db = $db->conectar();
        $resultado = $db->prepare($sql);

        $resultado->bindParam(':nombre', $nombre);
        $resultado->bindParam(':apellido', $apellido);
        $resultado->bindParam(':dni', $dni);
        $resultado->bindParam(':tel', $tel);
        $resultado->bindParam(':email', $email);
        $resultado->bindParam(':domicilio', $domicilio);
        $resultado->bindParam(':numero', $numero);
        $resultado->bindParam(':pais', $pais);
        $resultado->bindParam(':localidad', $localidad);
        $resultado->bindParam(':provincia', $provincia);
        $resultado->bindParam(':codigo', $codigo);
        $resultado->bindParam(':envios', $datos2);
        $resultado->bindParam(':productos', $datos);
        $resultado->bindParam(':total', $total);
        $resultado->bindParam(':metodo_pago', $metodo);


        $resultado->execute();
        echo json_encode('¡Has enviado el mensaje!');

        $resultado = null;
        $db = null;
    } catch (PDOException $e) {
        echo '{"error": {"text":' . $e->getMessage() . '}';
    }
});


//Enviar formulario
$app->post('/api/transferencia', function (Request $request, Response $response) {

    $c = $request->getParam('cliente');
    $cliente = json_encode($c);
    $e = $request->getParam('envio');
    $envio = json_encode($e);
    $p = $request->getParam('productos');
    $productos = json_encode($p);
    $total = $request->getParam('total');
    $operacion = $request->getParam('operacion');
    $metodo = $request->getParam('metodo');
    $archivo = $request->getParam('archivo');

    $sql = "INSERT INTO transferencia (cliente, envio, productos, total, operacion, metodo, archivo) VALUES (:cliente, :envio, :productos, :total, :operacion, :metodo, :archivo)";

    try {
        $db = new Conexion();
        $db = $db->conectar();
        $resultado = $db->prepare($sql);

        $resultado->bindParam(':cliente', $cliente);
        $resultado->bindParam(':envio', $envio);
        $resultado->bindParam(':productos', $productos);
        $resultado->bindParam(':total', $total);
        $resultado->bindParam(':operacion', $operacion);
        $resultado->bindParam(':metodo', $metodo);
        $resultado->bindParam(':archivo', $archivo);

        $resultado->execute();
        echo json_encode('¡Se envio la transferencia!');

        $resultado = null;
        $db = null;
    } catch (PDOException $e) {
        echo '{"error": {"text":' . $e->getMessage() . '}';
    }
});


//Enviar mercado pago
$app->post('/api/mercado', function (Request $request, Response $response) {

    $c = $request->getParam('cliente');
    $cliente = json_encode($c);
    $e = $request->getParam('envio');
    $envio = json_encode($e);
    $p = $request->getParam('items');
    $productos = json_encode($p);
    $total = $request->getParam('total');
    $operacion = $request->getParam('operacion');
    $metodo = $request->getParam('metodo');
    $num_transaccion = $request->getParam('num_transaccion');

    $sql = "INSERT INTO mercado_pago (cliente, envio, items, total, operacion, metodo, num_transaccion) VALUES (:cliente, :envio, :items, :total, :operacion, :metodo, :num_transaccion)";

    try {
        $db = new Conexion();
        $db = $db->conectar();
        $resultado = $db->prepare($sql);

        $resultado->bindParam(':cliente', $cliente);
        $resultado->bindParam(':envio', $envio);
        $resultado->bindParam(':items', $productos);
        $resultado->bindParam(':total', $total);
        $resultado->bindParam(':operacion', $operacion);
        $resultado->bindParam(':metodo', $metodo);
        $resultado->bindParam(':num_transaccion', $num_transaccion);

        $resultado->execute();
        echo json_encode('¡Se envio la compra!');

        $resultado = null;
        $db = null;
    } catch (PDOException $e) {
        echo '{"error": {"text":' . $e->getMessage() . '}';
    }
});
