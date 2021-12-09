<?php

require_once "../../controllers/administrador.controller.php";
require_once "../../controllers/productos.controller.php";
require_once "../../models/administrador.model.php";
require_once "../../models/productos.model.php";


class Ajax
{

    //Editar Admin
    public $idEditAdmin;

    public function ajaxEditAdmin()
    {
        $item = "id";
        $valor = $this->idEditAdmin;
        $respuesta = ControllerAdmin::ctrVerAdmin($item, $valor);

        echo json_encode($respuesta);
    }


    //Editar Producto
    public $idProducto;

    public function ajaxProducto()
    {
        $item = "id";
        $valor = $this->idProducto;
        $respuesta = ControllerProducto::ctrVerProducto($item, $valor);

        echo json_encode($respuesta);
    }
}


if (isset($_POST["idEditAdmin"])) {
    $c = new Ajax();
    $c->idEditAdmin = $_POST["idEditAdmin"];
    $c->ajaxEditAdmin();
}

if (isset($_POST["idProducto"])) {
    $c = new Ajax();
    $c->idProducto = $_POST["idProducto"];
    $c->ajaxProducto();
}