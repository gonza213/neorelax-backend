<?php

require_once "controllers/plantilla.controller.php";
require_once "controllers/administrador.controller.php";
require_once "controllers/contacto.controller.php";
require_once "controllers/suscriptores.controller.php";
require_once "controllers/productos.controller.php";
require_once "controllers/transferencia.controller.php";
require_once "controllers/mercado_pago.controllers.php";



require_once "models/administrador.model.php";
require_once "models/contacto.model.php";
require_once "models/suscriptores.model.php";
require_once "models/productos.model.php";
require_once "models/transferencia.model.php";
require_once "models/mercado_pago.models.php";


$plantilla =  new Plantilla();
$plantilla->ctrMostrarPlantilla();