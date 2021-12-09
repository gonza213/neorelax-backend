<?php

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


   if(isset($_FILES['archivo'])){
      $errors= array();
      $file_name = $_FILES['archivo']['name'];
      $file_size = $_FILES['archivo']['size'];
      $file_tmp = $_FILES['archivo']['tmp_name'];
      $file_type = $_FILES['archivo']['type'];
      $file_ext=strtolower(end(explode('.',$_FILES['archivo']['name'])));
     
      $expensions= array("jpeg","jpg","png","pdf");
     
      if(in_array($file_ext,$expensions)=== false){
         $errors[]="extension not allowed, please choose a JPEG or PNG file.";
      }
     
      if($file_size > 2097152) {
         $errors[]='File size must be excately 2 MB';
      }
     
      if(empty($errors)==true) {
         move_uploaded_file($file_tmp,"img/comprobantes/".$file_name);
         echo "Success";
      }else{
         print_r($errors);
      }
   }
