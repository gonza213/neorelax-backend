<?php

$ultcontactos = ControllerContacto::ctrMostrarUltContacto();
?>

<div class="content">
    <div class="row">
        <div class="col-lg-6 col-md-6 col-sm-6">
            <div class="card card-stats">
                <div class="card-body ">
                    <div class="row">
                        <div class="col-5 col-md-4">
                            <div class="icon-big text-center icon-warning">
                                <i class="nc-icon nc-money-coins text-success"></i>
                            </div>
                        </div>
                        <div class="col-7 col-md-8">
                            <div class="numbers">
                                <p class="card-category">Ganancias</p>
                                <p class="card-title">$ 1,345
                                <p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="card-footer ">
                    <hr>
                    <div class="stats">
                        <i class="fa fa-arrow-right"></i>
                        Ver más
                    </div>
                </div>
            </div>
        </div>
        <div class="col-lg-6 col-md-6 col-sm-6">
            <div class="card card-stats">
                <div class="card-body ">
                    <div class="row">
                        <div class="col-5 col-md-4">
                            <div class="icon-big text-center icon-warning">
                                <i class="nc-icon nc-cart-simple text-danger"></i>
                            </div>
                        </div>
                        <div class="col-7 col-md-8">
                            <div class="numbers">
                                <p class="card-category">Ventas</p>
                                <p class="card-title">13
                                <p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="card-footer ">
                    <hr>
                    <div class="stats">
                        <i class="fa fa-arrow-right"></i>
                        Ver más
                    </div>
                </div>
            </div>
        </div>
        <!-- <div class="col-lg-4 col-md-6 col-sm-6">
            <div class="card card-stats">
                <div class="card-body ">
                    <div class="row">
                        <div class="col-5 col-md-4">
                            <div class="icon-big text-center icon-warning">
                                <i class="nc-icon nc-favourite-28 text-primary"></i>
                            </div>
                        </div>
                        <div class="col-7 col-md-8">
                            <div class="numbers">
                                <p class="card-category">Clientes nuevos</p>
                                <p class="card-title">12
                                <p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="card-footer ">
                    <hr>
                    <div class="stats">
                        <i class="fa fa-arrow-right"></i>
                        Ver más
                    </div>
                </div>
            </div>
        </div> -->
    </div>
    <div class="row">
        <div class="col-md-8">
            <div class="card card-chart">
                <div class="card-header">
                    <h5 class="card-title">Bienvenido/a <span class="text-primary"><?php echo $_SESSION['nombre'] ?> </span></h5>
                    <p>Gestiona tus productos y ventas</p>
                </div>
                <div class="card-body">
                    <div class="row">
                    <div class="col-md-4">
                            <a href="productos">
                                <div class="card card-stats">
                                    <div class="card-body ">
                                        <div class="row">
                                            <div class="col-5 col-md-4">
                                                <div class="icon-big text-center icon-warning">
                                                    <i class="nc-icon nc-bullet-list-67 text-info"></i>
                                                </div>
                                            </div>
                                            <div class="col-7 col-md-8">
                                                <div class="numbers">
                                                    <p class="card-category">Productos</p>

                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="card-footer ">
                                        <hr>
                                        <div class="stats">
                                            <i class="fa fa-arrow-right"></i>
                                            Ver más
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </div>
                        <div class="col-md-4">
                            <a href="ventas">
                                <div class="card card-stats">
                                    <div class="card-body ">
                                        <div class="row">
                                            <div class="col-5 col-md-4">
                                                <div class="icon-big text-center icon-warning">
                                                    <i class="nc-icon nc-cart-simple text-danger"></i>
                                                </div>
                                            </div>
                                            <div class="col-7 col-md-8">
                                                <div class="numbers">
                                                    <p class="card-category">Ventas</p>

                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="card-footer ">
                                        <hr>
                                        <div class="stats">
                                            <i class="fa fa-arrow-right"></i>
                                            Ver más
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </div>
                        <div class="col-md-4">
                            <a href="contactos">
                                <div class="card card-stats">
                                    <div class="card-body ">
                                        <div class="row">
                                            <div class="col-5 col-md-4">
                                                <div class="icon-big text-center icon-warning">
                                                    <i class="nc-icon nc-email-85 text-warning"></i>
                                                </div>
                                            </div>
                                            <div class="col-7 col-md-8">
                                                <div class="numbers">
                                                    <p class="card-category">Contactos</p>

                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="card-footer ">
                                        <hr>
                                        <div class="stats">
                                            <i class="fa fa-arrow-right"></i>
                                            Ver más
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </div>
                    </div>

                </div>
            </div>
        </div>
        <div class="col-md-4">
            <div class="card ">
                <div class="card-header ">
                    <h5 class="card-title">Últimos contactos</h5>
                </div>
                <div class="card-body ">
                    <table class="table">
                        <thead class=" text-secondary">
                            <th>
                                #
                            </th>
                            <th>
                                Nombre
                            </th>
                            <th class="text-right">
                                Acciones
                            </th>
                        </thead>
                        <tbody>
                            <?php foreach ($ultcontactos as $key => $value) : ?>
                                <tr>
                                    <td> <?php echo $key + 1 ?></td>
                                    <td>
                                        <?php echo $value["nombre"] ?>
                                    </td>
                                    <td class="text-right">
                                        <a href="contactos" class="btn btn-info btn-sm"><i class="fa fa-eye"></i></a>
                                    </td>
                                </tr>
                            <?php endforeach; ?>

                        </tbody>
                    </table>
                </div>

            </div>
        </div>
    </div>
</div>