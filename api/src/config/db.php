<?php

class Conexion
{
    private $dbHost = 'localhost';
    private $dbUser = 'root';
    private $dbPass = '';
    private $dbName = 'api-neo-relax';

    // private $dbHost = 'localhost';
    // private $dbUser = 'c2210955_neo';
    // private $dbPass = 'riMA76lolu';
    // private $dbName = 'c2210955_neo';

    //conexion
    public function conectar()
    {
        $mysqlConnect = "mysql:host=$this->dbHost;dbname=$this->dbName";
        $dbConexion = new PDO($mysqlConnect, $this->dbUser, $this->dbPass);
        $dbConexion->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        $dbConexion->exec("set names utf8");
        return $dbConexion;
    }
}