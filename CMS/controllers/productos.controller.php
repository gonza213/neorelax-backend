<?php

class ControllerProducto
{



    static public function ctrMostrarProductos()
    {

        $tabla = 'productos';

        $respuesta = ModelProducto::mdlMostrarProductos($tabla);

        return $respuesta;
    }

    // crear producto
    static public function ctrCrearProducto()
    {

        if (isset($_POST["titulo"])) {

            if (preg_match('/^[a-zA-Z0-9]+$/', $_POST["categoria"])) {

                $ruta = "";

                if ($_FILES["imagen"]["tmp_name"] == "") {

                    $ruta = "views/assets/img/default-avatar.png";
                } else {

                    if (isset($_FILES["imagen"]["tmp_name"])) {


                        list($ancho, $alto) = getimagesize($_FILES["imagen"]["tmp_name"]);

                        // $nuevoancho = 400;
                        // $nuevoalto = 400;

                        $directorio = "../img/productos/" . $_POST["categoria"];

                        mkdir($directorio, 0755);

                        if ($_FILES["imagen"]["type"] == "image/jpeg") {

                            $aleatorio = mt_rand(100, 999);

                            $ruta = "../img/productos/" . $_POST["categoria"] . "/" . $aleatorio . ".jpg";
                            $imagen = "img/productos/" . $_POST["categoria"] . "/" . $aleatorio . ".jpg";

                            $origen = imagecreatefromjpeg($_FILES["imagen"]["tmp_name"]);

                            $destino = imagecreatetruecolor($ancho, $alto);

                            imagecopyresized($destino, $origen, 0, 0, 0, 0,  $ancho, $alto, $ancho, $alto);

                            imagejpeg($destino, $ruta);
                        } else if ($_FILES["imagen"]["type"] == "image/png") {

                            $aleatorio = mt_rand(100, 999);

                            $ruta = "img/productos/" . $_POST["categoria"] . "/" . $aleatorio . ".png";
                            $imagen = "img/productos/" . $_POST["categoria"] . "/" . $aleatorio . ".png";

                            $origen = imagecreatefrompng($_FILES["imagen"]["tmp_name"]);

                            $destino = imagecreatetruecolor($ancho, $alto);

                            imagecopyresized($destino, $origen, 0, 0, 0, 0,  $ancho, $alto, $ancho, $alto);

                            imagepng($destino, $ruta);
                        } else {

                            echo "<script>
                  
                                Swal.fire({
                                  icon: 'error',
                                  title: '¡La imagen debe ser formato JPG o PNG!',
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


                $tabla = "productos";

                $datos = array(
                    "titulo" => $_POST["titulo"],
                    "categoria" => $_POST["categoria"],
                    "precio" => $_POST["precio"],
                    "stock" => $_POST["stock"],
                    "intro" => $_POST["intro"],
                    "descripcion" => $_POST["descripcion"],
                    "imagen" => $imagen
                );

                $respuesta = ModelProducto::mdlCrearProducto($tabla, $datos);

                if ($respuesta == "ok") {

                    echo "<script>
              
                        Swal.fire({
                          icon: 'success',
                          title: '¡El producto se ha guardado correctamente!',
                          showConfirmButton: true,
                          confirmButtonText: 'Cerrar',
                          closeOnConfirm: false
                          }).then((result)=>{
                  
                          if(result.value){
                  
                              window.location = 'productos';
                          }
                      })
                                
                        
                             </script>";
                }
            } else {

                echo "<script>
              
                    Swal.fire({
                      icon: 'error',
                      title: '¡El producto no debe llevar caracteres especiales!',
                      showConfirmButton: true,
                      confirmButtonText: 'Cerrar',
                      closeOnConfirm: false
                      }).then((result)=>{
              
                      if(result.value){
              
                          window.location = 'productos';
                      }
                  })
                            
                    
                         </script>";
            }
        }
    }


    // EDITAR ADMIN
    static public function ctrEditarProducto()
    {

        if (isset($_POST["titulo"])) {

            if (preg_match('/^[a-zA-Z0-9]+$/', $_POST["categoria"])) {

                $ruta = "";

                if ($_FILES["imagen"]["tmp_name"] == "") {

                    $imagen = $_POST["imagenActual"];
                } else {

                    if (isset($_FILES["imagen"]["tmp_name"])) {


                        list($ancho, $alto) = getimagesize($_FILES["imagen"]["tmp_name"]);

                        // $nuevoancho = 400;
                        // $nuevoalto = 400;

                        $directorio = "../img/productos/" . $_POST["categoria"];

                        mkdir($directorio, 0755);


                        if ($_FILES["imagen"]["type"] == "image/jpeg") {

                            $aleatorio = mt_rand(100, 999);

                            $ruta = "../img/productos/" . $_POST["categoria"] . "/" . $aleatorio . ".jpg";
                            $imagen = "img/productos/" . $_POST["categoria"] . "/" . $aleatorio . ".jpg";

                            $origen = imagecreatefromjpeg($_FILES["imagen"]["tmp_name"]);

                            $destino = imagecreatetruecolor($ancho, $alto);

                            imagecopyresized($destino, $origen, 0, 0, 0, 0,  $ancho, $alto, $ancho, $alto);

                            imagejpeg($destino, $ruta);
                        } else if ($_FILES["imagen"]["type"] == "image/png") {

                            $aleatorio = mt_rand(100, 999);

                            $ruta = "../img/productos/" . $_POST["categoria"] . "/" . $aleatorio . ".png";
                            $imagen = "img/productos/" . $_POST["categoria"] . "/" . $aleatorio . ".png";

                            $origen = imagecreatefrompng($_FILES["imagen"]["tmp_name"]);

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
                          
                                      window.location = 'productos';
                                  }
                              })
                                        
                                
                                     </script>";
                        }
                    }
                }


                $tabla = "productos";



                $datos = array(
                    "id" => $_POST["id"],
                    "titulo" => $_POST["titulo"],
                    "categoria" => $_POST["categoria"],
                    "precio" => $_POST["precio"],
                    "stock" => $_POST["stock"],
                    "intro" => $_POST["intro"],
                    "descripcion" => $_POST["descripcion"],
                    "alto" => $_POST["alto"],
                    "ancho" => $_POST["ancho"],
                    "largo" => $_POST["largo"],
                    "peso" => $_POST["peso"],
                    "imagen" => $imagen
                );

                $respuesta = ModelProducto::mdlEditarProducto($tabla, $datos);

                if ($respuesta == "ok") {

                    echo "<script>
              
                        Swal.fire({
                          icon: 'success',
                          title: '¡El producto se ha editado correctamente!',
                          showConfirmButton: true,
                          confirmButtonText: 'Cerrar',
                          closeOnConfirm: false
                          }).then((result)=>{
                  
                          if(result.value){
                  
                            window.location = 'index.php?pagina=editar-producto&id=" . $_GET["id"] . "';
                          }
                      })
                                
                        
                             </script>";
                }
            } else {

                echo "<script>
              
                    Swal.fire({
                      icon: 'error',
                      title: '¡El producto no debe llevar caracteres especiales!',
                      showConfirmButton: true,
                      confirmButtonText: 'Cerrar',
                      closeOnConfirm: false
                      }).then((result)=>{
              
                      if(result.value){
              
                        window.location = 'index.php?pagina=editar-producto&id=" . $_GET["id"] . "';
                      }
                  })
                            
                    
                         </script>";
            }
        }
    }


    //Borrar Producto
    static public function ctrBorrarProducto()
    {

        if (isset($_GET["idProducto"])) {

            $tabla = "productos";
            $datos = $_GET["idProducto"];

            $respuesta = ModelProducto::mdlBorrarProducto($tabla, $datos);

            if ($respuesta == "ok") {

                echo "<script>
            
                  Swal.fire({
                    icon: 'success',
                    title: '¡El producto ha sido borrado exitosamente!',
                    showConfirmButton: true,
                    confirmButtonText: 'Cerrar',
                    closeOnConfirm: false
                }).then((result)=>{
            
                    if(result.value){
            
                        window.location = 'productos';
                    }
                })
                          
                  
                       </script>";
            }
        }
    }

    // MOSTRAR producto
    static public function ctrVerProducto($item, $valor)
    {

        $tabla = "productos";

        $resultado = ModelProducto::mdlVerProducto($tabla, $item, $valor);

        return $resultado;
    }


    // MOSTRAR imagenes de productos
    static public function ctrMostrarImagenes()
    {

        $tabla = "galeria";

        $resultado = ModelProducto::mdlMostrarImagenes($tabla);

        return $resultado;
    }


    //Borrar Producto
    static public function ctrBorrarImagen()
    {

        if (isset($_GET["idImagen"])) {

            $tabla = "galeria";
            $datos = $_GET["idImagen"];

            $respuesta = ModelProducto::mdlBorrarImagen($tabla, $datos);

            if ($respuesta == "ok") {

                echo "<script>
            
                  Swal.fire({
                    icon: 'success',
                    title: '¡La imagen ha sido borrado exitosamente!',
                    showConfirmButton: true,
                    confirmButtonText: 'Cerrar',
                    closeOnConfirm: false
                }).then((result)=>{
            
                    if(result.value){
            
                        window.location = 'productos';
                    }
                })
                          
                  
                       </script>";
            }
        }
    }
}