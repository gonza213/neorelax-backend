<?php

session_start();


?>


<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>CMS | Neorelax</title>
    <!--     Fonts and icons     -->
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700,200" rel="stylesheet" />
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.datatables.net/1.11.3/css/jquery.dataTables.min.css">
    <link rel="stylesheet" href="https://cdn.datatables.net/responsive/2.2.9/css/responsive.dataTables.min.css">
    <!-- CSS Files -->
    <link href="views/assets/css/bootstrap.min.css" rel="stylesheet" />
    <link href="views/assets/css/paper-dashboard.css?v=2.0.1" rel="stylesheet" />
    <!-- CSS Just for demo purpose, don't include it in your project -->
    <link href="views/assets/demo/demo.css" rel="stylesheet" />
    <link rel="stylesheet" href="views/assets/css/style.css">

    <!-- SWEET ALERT2 -->
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script>
</head>

<body>
    <?php if (isset($_SESSION["iniciarSesion"]) && $_SESSION["iniciarSesion"] == "ok") : ?>
        <div class="wrapper ">
            <!-- Menu -->
            <?php include "views/pages/modules/menu.php" ?>

            <div class="main-panel">
                <?php include "views/pages/modules/cabecera.php" ?>
                <?php

                if (isset($_GET["pagina"])) {

                    if ($_GET["pagina"] == "inicio") {

                        include "pages/inicio.php";
                    } else if ($_GET["pagina"] == "administradores") {

                        include "pages/administradores.php";
                    } else if ($_GET["pagina"] == "productos") {

                        include "pages/productos.php";
                    } else if ($_GET["pagina"] == "ventas") {

                        include "pages/ventas.php";
                    } else if ($_GET["pagina"] == "clientes") {

                        include "pages/clientes.php";
                    } else if ($_GET["pagina"] == "suscriptores") {

                        include "pages/suscriptores.php";
                    } else if ($_GET["pagina"] == "contactos") {

                        include "pages/contactos.php";
                    } else if ($_GET["pagina"] == "ver-producto") {

                        include "pages/modules/ver-producto.php";
                    } else if ($_GET["pagina"] == "editar-producto") {

                        include "pages/modules/editarProducto.php";
                    } else if ($_GET["pagina"] == "salir") {

                        include "pages/salir.php";
                    } else {
                        include "pages/404.php";
                    }
                } else {

                    include "pages/inicio.php";
                }


                ?>
                <?php include "views/pages/modules/footer.php" ?>
            </div>


        </div>

    <?php else : ?>

        <?php include "pages/login.php"; ?>

    <?php endif; ?>


    <!--   Core JS Files   -->
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script src="views/assets/js/core/popper.min.js"></script>
    <script src="views/assets/js/core/bootstrap.min.js"></script>
    <script src="views/assets/js/plugins/perfect-scrollbar.jquery.min.js"></script>
    <!-- Chart JS -->
    <script src="views/assets/js/plugins/chartjs.min.js"></script>
    <!--  Notifications Plugin    -->
    <script src="views/assets/js/plugins/bootstrap-notify.js"></script>
    <!-- Paper Dashboard DEMO methods, don't include it in your project! -->
    <script src="views/assets/demo/demo.js"></script>
    <script src="views/assets/js/main.js"></script>
    <script src="https://cdn.tiny.cloud/1/x8n8bwlad8wn1oyewfjkq7h5xy2p8ctj2ibi2vpx4kz572d0/tinymce/5/tinymce.min.js">
    </script>
    <script src="https://cdn.datatables.net/1.11.3/js/jquery.dataTables.min.js"></script>
    <script src="https://cdn.datatables.net/responsive/2.2.9/js/dataTables.responsive.min.js"></script>
    <script src="views/assets/js/editor.js"></script>
    <script>
        $(document).ready(function() {
            $('#example').DataTable({
                "language": {
                    "url": "//cdn.datatables.net/plug-ins/1.10.16/i18n/Spanish.json"
                },
            });
        });
        $(document).ready(function() {
            $('#example2').DataTable({
                "language": {
                    "url": "//cdn.datatables.net/plug-ins/1.10.16/i18n/Spanish.json"
                },
            });
        });
        $(document).ready(function() {
            $('#example3').DataTable({
                "language": {
                    "url": "//cdn.datatables.net/plug-ins/1.10.16/i18n/Spanish.json"
                },
            });
        });
    </script>
    <script>
        //Cuando cargue la página completamente
        $(document).ready(function() {
            //Creamos un evento click para el enlace
            $(".ancla").click(function(evento) {
                //Anulamos la funcionalidad por defecto del evento
                evento.preventDefault();
                //Creamos el string del enlace ancla
                var codigo = "#" + $(this).data("ancla");
                //Funcionalidad de scroll lento para el enlace ancla en 3 segundos
                $("html,body").animate({
                    scrollTop: $(codigo).offset().top
                }, 3000);
            });
        });
    </script>

</body>

</html>