<?php


class ControllerMercado{

    static public function ctrMostrarCompras(){

        $tabla = "mercado_pago";

        $respuesta = ModelMercado::mdlMostrarCompras($tabla);

        return $respuesta;
    }


    
    //Borrar suscripcion
    static public function ctrBorrarVentaMercado()
    {

        if (isset($_GET["idVentaMercado"])) {

            $tabla = "mercado_pago";
            $datos = $_GET["idVentaMercado"];

            $respuesta = ModelMercado::mdlBorrarVenta($tabla, $datos);

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