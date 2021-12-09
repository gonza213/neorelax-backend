<?php

class ControllerSuscriptor
{
    //  Mostrar Suscriptor
    static public function ctrMostrarSuscriptor()
    {


        $tabla = "suscriptores";

        $respuesta = ModeloSuscriptor::mdlMostrarSuscriptor($tabla);

        return $respuesta;
    }

    //Borrar suscripcion
    static public function ctrBorrarSuscriptor()
    {

        if (isset($_GET["idSusc"])) {

            $tabla = "suscriptores";
            $datos = $_GET["idSusc"];

            $respuesta = ModeloSuscriptor::mdlBorrarSuscriptor($tabla, $datos);

            if ($respuesta == "ok") {

                echo "<script>
          
                Swal.fire({
                  icon: 'success',
                  title: '¡La suscripción ha sido borrado exitosamente!',
                  showConfirmButton: true,
                  confirmButtonText: 'Cerrar',
                  closeOnConfirm: false
              }).then((result)=>{
          
                  if(result.value){
          
                      window.location = 'suscriptores';
                  }
              })
                        
                
                     </script>";
            }
        }
    }
}