<?php

include('conexion.php');

foreach ($_FILES['upload']['name'] as $key => $name) {

    $newFilename = time() . "_" . $name;
    move_uploaded_file($_FILES['upload']['tmp_name'][$key], '../../img/galeria/' . $newFilename);
    $location = 'img/galeria/' . $newFilename;
    $id = $_POST["id"];

    mysqli_query($conn, "INSERT INTO galeria (id_producto, img) values ('$id','$location')");
}
header('location:  ../productos');