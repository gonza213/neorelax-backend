<?php

require_once "conexion.php";


class ModelTransferencia
{


    static public function mdlMostrarTransferencias($tabla)
    {
        $stmt = Conexion::conectar()->prepare("SELECT * FROM $tabla ORDER BY id DESC");

        $stmt->execute();

        return $stmt->fetchAll();

        $stmt->close();

        $stmt = null;
    }


    //Borrar
    static public function mdlBorrarVenta($tabla, $datos)
    {

        $stmt = Conexion::conectar()->prepare("DELETE FROM $tabla WHERE id = :id");

        $stmt->bindParam(":id", $datos, PDO::PARAM_INT);

        if ($stmt->execute()) {

            return "ok";
        } else {

            return "error";
        }

        $stmt->close();

        $stmt = null;
    }
}
