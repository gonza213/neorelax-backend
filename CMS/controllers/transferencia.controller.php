<?php


class ControllerTransferencia{

    static public function ctrMostrarTransferencias(){

        $tabla = "transferencia";

        $respuesta = ModelTransferencia::mdlMostrarTransferencias($tabla);

        return $respuesta;
    }


    
    //Borrar suscripcion
    static public function ctrBorrarVentaTransferencia()
    {

        if (isset($_GET["idVenta"])) {

            $tabla = "transferencia";
            $datos = $_GET["idVenta"];

            $respuesta = ModelTransferencia::mdlBorrarVenta($tabla, $datos);

            if ($respuesta == "ok") {

                echo "<script>
          
                Swal.fire({
                  icon: 'success',
                  title: '¡La venta ha sido borrado exitosamente!',
                  showConfirmButton: true,
                  confirmButtonText: 'Cerrar',
                  closeOnConfirm: false
              }).then((result)=>{
          
                  if(result.value){
          
                      window.location = 'ventas';
                  }
              })
                        
                
                     </script>";
            }
        }
    }
}