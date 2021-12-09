<?php

class ControllerAdmin
{

    static public function ctrIngresarUsuario()
    {

        if (isset($_POST["usuario"])) {

            if (preg_match('/^[a-zA-Z0-9]+$/', $_POST["password"])) {

                $encriptar = crypt($_POST["password"], '$2y$05$2ihDv8vVf7QZ9BsaRrKyqs2tkn55Yq');

                $tabla = "admin";

                $item = "usuario";
                $valor = $_POST["usuario"];

                $respuesta = ModelAdministrador::mdlIngresarUsuario($tabla, $item, $valor);

                if ($respuesta["usuario"] == $_POST["usuario"] && $respuesta["password"] ==  $encriptar) {

                    $_SESSION["iniciarSesion"] = "ok";
                    $_SESSION["id"] = $respuesta["id"];
                    $_SESSION["nombre"] = $respuesta["nombre"];
                    $_SESSION["email"] = $respuesta["email"];
                    $_SESSION["foto"] = $respuesta["foto"];
                    $_SESSION["usuario"] = $respuesta["usuario"];

                    echo '<script> 
      
                           window.location = "inicio";
                
                          </script>';
                } else {

                    echo "<div class='alert alert-danger'>Error al ingresar, vuelve a intentar</div>";
                }
            }
        }
    }

    static public function ctrMostrarAdmin()
    {

        $tabla = 'admin';

        $respuesta = ModelAdministrador::mdlMostrarAdmin($tabla);

        return $respuesta;
    }

    // REGISTRAR ADMIN
    static public function ctrCrearAdmin()
    {

        if (isset($_POST["usuario"])) {

            if (preg_match('/^[a-zA-Z0-9]+$/', $_POST["rol"])) {

                $ruta = "";

                if ($_FILES["foto"]["tmp_name"] == "") {

                    $ruta = "views/assets/img/default-avatar.png";
                } else {

                    if (isset($_FILES["foto"]["tmp_name"])) {


                        list($ancho, $alto) = getimagesize($_FILES["foto"]["tmp_name"]);

                        // $nuevoancho = 400;
                        // $nuevoalto = 400;

                        $directorio = "views/img/administradores/" . $_POST["usuario"];

                        mkdir($directorio, 0755);

                        if ($_FILES["foto"]["type"] == "image/jpeg") {

                            $aleatorio = mt_rand(100, 999);

                            $ruta = "views/img/administradores/" . $_POST["usuario"] . "/" . $aleatorio . ".jpg";

                            $origen = imagecreatefromjpeg($_FILES["foto"]["tmp_name"]);

                            $destino = imagecreatetruecolor($ancho, $alto);

                            imagecopyresized($destino, $origen, 0, 0, 0, 0,  $ancho, $alto, $ancho, $alto);

                            imagejpeg($destino, $ruta);
                        } else if ($_FILES["foto"]["type"] == "image/png") {

                            $aleatorio = mt_rand(100, 999);

                            $ruta = "views/img/administradores/" . $_POST["usuario"] . "/" . $aleatorio . ".png";

                            $origen = imagecreatefrompng($_FILES["foto"]["tmp_name"]);

                            $destino = imagecreatetruecolor($ancho, $alto);

                            imagecopyresized($destino, $origen, 0, 0, 0, 0,  $ancho, $alto, $ancho, $alto);

                            imagepng($destino, $ruta);
                        } else {

                            echo "<script>
                  
                                Swal.fire({
                                  icon: 'error',
                                  title: '¡La foto debe ser formato JPG o PNG!',
                                  showConfirmButton: true,
                                  confirmButtonText: 'Cerrar',
                                  closeOnConfirm: false
                                  }).then((result)=>{
                          
                                  if(result.value){
                          
                                      window.location = 'administradores;
                                  }
                              })
                                        
                                
                                     </script>";
                        }
                    }
                }


                $tabla = "admin";

                $encriptar = crypt($_POST["password"], '$2y$05$2ihDv8vVf7QZ9BsaRrKyqs2tkn55Yq');

                $datos = array(
                    "usuario" => $_POST["usuario"],
                    "email" => $_POST["email"],
                    "password" => $encriptar,
                    "nombre" => $_POST["nombre"],
                    "rol" => $_POST["rol"],
                    "foto" => $ruta
                );

                $respuesta = ModelAdministrador::mdlCrearAdmin($tabla, $datos);

                if ($respuesta == "ok") {

                    echo "<script>
              
                        Swal.fire({
                          icon: 'success',
                          title: '¡El administrador se ha creado correctamente!',
                          showConfirmButton: true,
                          confirmButtonText: 'Cerrar',
                          closeOnConfirm: false
                          }).then((result)=>{
                  
                          if(result.value){
                  
                              window.location = 'administradores';
                          }
                      })
                                
                        
                             </script>";
                }
            } else {

                echo "<script>
              
                    Swal.fire({
                      icon: 'error',
                      title: '¡El administrador no debe llevar caracteres especiales!',
                      showConfirmButton: true,
                      confirmButtonText: 'Cerrar',
                      closeOnConfirm: false
                      }).then((result)=>{
              
                      if(result.value){
              
                          window.location = 'administradores';
                      }
                  })
                            
                    
                         </script>";
            }
        }
    }


    // EDITAR ADMIN
    static public function ctrEditarAdmin()
    {

        if (isset($_POST["usuarioAdmin"])) {

            if (preg_match('/^[a-zA-Z0-9]+$/', $_POST["id"])) {

                $ruta = "";

                if ($_FILES["fotoAdmin"]["tmp_name"] == "") {

                    $ruta = $_POST["fotoActual"];
                } else {

                    if (isset($_FILES["fotoAdmin"]["tmp_name"])) {


                        list($ancho, $alto) = getimagesize($_FILES["fotoAdmin"]["tmp_name"]);

                        // $nuevoancho = 400;
                        // $nuevoalto = 400;

                        $directorio = "views/img/administradores/" . $_POST["usuarioAdmin"];

                        mkdir($directorio, 0755);


                        if ($_FILES["fotoAdmin"]["type"] == "image/jpeg") {

                            $aleatorio = mt_rand(100, 999);

                            $ruta = "views/img/administradores/" . $_POST["usuarioAdmin"] . "/" . $aleatorio . ".jpg";

                            $origen = imagecreatefromjpeg($_FILES["fotoAdmin"]["tmp_name"]);

                            $destino = imagecreatetruecolor($ancho, $alto);

                            imagecopyresized($destino, $origen, 0, 0, 0, 0,  $ancho, $alto, $ancho, $alto);

                            imagejpeg($destino, $ruta);
                        } else if ($_FILES["fotoAdmin"]["type"] == "image/png") {

                            $aleatorio = mt_rand(100, 999);

                            $ruta = "views/img/administradores/" . $_POST["usuarioAdmin"] . "/" . $aleatorio . ".png";

                            $origen = imagecreatefrompng($_FILES["fotoAdmin"]["tmp_name"]);

                            $destino = imagecreatetruecolor($ancho, $alto);

                            imagecopyresized($destino, $origen, 0, 0, 0, 0,  $ancho, $alto, $ancho, $alto);

                            imagepng($destino, $ruta);
                        } else {

                            echo "<script>
                  
                                Swal.fire({
                                  icon: 'error',
                                  title: '¡La foto debe ser formato JPG o PNG!',
                                  showConfirmButton: true,
                                  confirmButtonText: 'Cerrar',
                                  closeOnConfirm: false
                                  }).then((result)=>{
                          
                                  if(result.value){
                          
                                      window.location = 'administradores';
                                  }
                              })
                                        
                                
                                     </script>";
                        }
                    }
                }


                $tabla = "admin";

                if ($_POST["passwordAdmin"] == "") {

                    $encriptar = $_POST["passwordActual"];
                } else {

                    $encriptar = crypt($_POST["passwordAdmin"], '$2y$05$2ihDv8vVf7QZ9BsaRrKyqs2tkn55Yq');
                }



                $datos = array(
                    "id" => $_POST["id"],
                    "usuario" => $_POST["usuarioAdmin"],
                    "email" => $_POST["emailAdmin"],
                    "password" => $encriptar,
                    "nombre" => $_POST["nombreAdmin"],
                    "rol" => $_POST["rolAdmin"],
                    "foto" => $ruta
                );

                $respuesta = ModelAdministrador::mdlEditarAdmin($tabla, $datos);

                if ($respuesta == "ok") {

                    echo "<script>
              
                        Swal.fire({
                          icon: 'success',
                          title: '¡El usuario se ha editado correctamente!',
                          showConfirmButton: true,
                          confirmButtonText: 'Cerrar',
                          closeOnConfirm: false
                          }).then((result)=>{
                  
                          if(result.value){
                  
                            window.location = 'administradores';
                          }
                      })
                                
                        
                             </script>";
                }
            } else {

                echo "<script>
              
                    Swal.fire({
                      icon: 'error',
                      title: '¡El usuario no debe llevar caracteres especiales!',
                      showConfirmButton: true,
                      confirmButtonText: 'Cerrar',
                      closeOnConfirm: false
                      }).then((result)=>{
              
                      if(result.value){
              
                        window.location = 'administradores';
                      }
                  })
                            
                    
                         </script>";
            }
        }
    }


    //Borrar admin
    static public function ctrBorrarAdmin()
    {

        if (isset($_GET["idAdmin"])) {

            $tabla = "admin";
            $datos = $_GET["idAdmin"];

            $respuesta = ModelAdministrador::mdlBorrarAdmin($tabla, $datos);

            if ($respuesta == "ok") {

                echo "<script>
            
                  Swal.fire({
                    icon: 'success',
                    title: '¡El Admin ha sido borrado exitosamente!',
                    showConfirmButton: true,
                    confirmButtonText: 'Cerrar',
                    closeOnConfirm: false
                }).then((result)=>{
            
                    if(result.value){
            
                        window.location = 'administradores';
                    }
                })
                          
                  
                       </script>";
            }
        }
    }

    // MOSTRAR SUBCATEGORIA
    static public function ctrVerAdmin($item, $valor)
    {

        $tabla = "admin";

        $resultado = ModelAdministrador::mdlVerAdmin($tabla, $item, $valor);

        return $resultado;
    }
}