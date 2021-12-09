<?php

class ControllerContacto
{

    static public function ctrMostrarContacto()
    {

        $tabla = "contacto";

        $respuesta = ModeloContacto::mdlMostrarContacto($tabla);

        return $respuesta;
    }

    
    static public function ctrMostrarUltContacto()
    {

        $tabla = "contacto";

        $respuesta = ModeloContacto::mdlMostrarUltContacto($tabla);

        return $respuesta;
    }

    //Borrar suscripcion
    static public function ctrBorrarContacto()
    {

        if (isset($_GET["idContacto"])) {

            $tabla = "contacto";
            $datos = $_GET["idContacto"];

            $respuesta = ModeloContacto::mdlBorrarContacto($tabla, $datos);

            if ($respuesta == "ok") {

                echo "<script>
           
                 Swal.fire({
                   icon: 'success',
                   title: '¡El contacto ha sido borrado exitosamente!',
                   showConfirmButton: true,
                   confirmButtonText: 'Cerrar',
                   closeOnConfirm: false
               }).then((result)=>{
           
                   if(result.value){
           
                       window.location = 'contactos';
                   }
               })
                         
                 
                      </script>";
            }
        }
    }
}