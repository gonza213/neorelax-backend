<?php

//MySQLi Procedural
$conn = mysqli_connect("localhost", "root", "", "api-neo-relax");
// $conn = mysqli_connect("localhost", "c2210955_neo", "riMA76lolu", "c2210955_neo");
if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}