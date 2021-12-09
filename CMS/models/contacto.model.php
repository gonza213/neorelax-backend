<?php

require_once "conexion.php";


class ModeloContacto
{

    static public function mdlMostrarContacto($tabla)
    {
        $stmt = Conexion::conectar()->prepare("SELECT * FROM $tabla");

        $stmt->execute();

        return $stmt->fetchAll();

        $stmt->close();

        $stmt = null;
    }

    static public function mdlMostrarUltContacto($tabla)
    {
        $stmt = Conexion::conectar()->prepare("SELECT * FROM $tabla ORDER BY id desc LIMIT 5");

        $stmt->execute();

        return $stmt->fetchAll();

        $stmt->close();

        $stmt = null;
    }

    //Borrar
    static public function mdlBorrarContacto($tabla, $datos)
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