<?php

$productos = ControllerProducto::ctrMostrarProductos();
?>

<div class="content">
    <div class="row">
        <div class="col-md-12">
            <div class="card">
                <div class="card-header">
                    <div class="row">
                        <div class="col-md-6">
                            <h4 class="card-title"> Productos</h4>
                        </div>
                        <div class="col-md-6">
                            <button data-toggle="modal" data-target="#exampleModal3" class="btn btn-primary btn-sm pull-right">Nuevo Producto</button>
                        </div>
                    </div>
                </div>
                <div class="card-body">
                    <div class="col-md-12 p-3 ">
                        <nav class="nav">
                            <a class="nav-link text-secondary ancla" href="#" data-ancla="colchones">Colchones</a>
                            <a class="nav-link text-secondary ancla" href="#" data-ancla="conjuntos">Conjuntos</a>
                            <a class="nav-link text-secondary ancla" href="#" data-ancla="almohadas">Almohadas
                                Vicoelásticas</a>


                        </nav>
                    </div>
                    <div class="col-md-12">
                        <div id="colchones">
                            <div class="card border-info border-top">
                                <div class="card-header">
                                    <h3 class="p-1">Colchones</h3>
                                </div>
                                <div class="card-body">

                                    <table id="example" class="table table-striped  display responsive nowrap" style="width:100%">
                                        <thead class=" text-secondary">
                                            <th>
                                                #
                                            </th>
                                            <th>
                                                Titulo
                                            </th>
                                            <th>
                                                Precio
                                            </th>
                                            <th>
                                                Stock
                                            </th>
                                            <th>
                                                Intro
                                            </th>
                                            <th>
                                                Imagen
                                            </th>
                                            <th class="text-right">
                                                Acciones
                                            </th>
                                        </thead>
                                        <tbody>
                                            <?php foreach ($productos as $key => $value) : ?>
                                                <?php if ($value["categoria"] == "colchon") : ?>
                                                    <tr>
                                                        <td> <?php echo $key + 1 ?></td>
                                                        <td>
                                                            <?php echo $value["titulo"] ?>
                                                        </td>
                                                        <td>
                                                            $ <?php echo $value["precio"] ?>
                                                        </td>
                                                        <td>
                                                            <?php echo $value["stock"] ?>
                                                        </td>
                                                        <td>
                                                            <?php echo $value["intro"] ?>
                                                        </td>
                                                        <td>
                                                            <img src="../<?php echo $value["imagen"] ?>" alt="" class="img-thumbnail" style="width: 100px">
                                                        </td>
                                                        <td class="text-right">
                                                            <a href="index.php?pagina=ver-producto&id=<?php echo $value["id"] ?>" class="btn btn-secondary btn-sm"><i class="fa fa-eye"></i></a>
                                                            <button class="btn btn-danger btn-sm btnEliminarProducto" idProducto="<?php echo $value["id"] ?>" onclick="borrarProducto(<?php echo $value["id"] ?>)"><i class="fa fa-trash"></i></button>
                                                        </td>
                                                    </tr>
                                                <?php endif; ?>
                                            <?php endforeach; ?>

                                        </tbody>
                                    </table>

                                </div>
                            </div>

                        </div>
                        <div id="conjuntos">
                            <div class="card border-warning border-top">
                                <div class="card-header">
                                    <h3 class="p-1">Conjuntos</h3>
                                </div>
                                <div class="card-body">

                                    <table id="example2" class="table table-striped  display responsive nowrap" style="width:100%">
                                        <thead class=" text-secondary">
                                            <th>
                                                #
                                            </th>
                                            <th>
                                                Titulo
                                            </th>
                                            <th>
                                                Precio
                                            </th>
                                            <th>
                                                Stock
                                            </th>
                                            <th>
                                                Intro
                                            </th>
                                            <th>
                                                Imagen
                                            </th>
                                            <th class="text-right">
                                                Acciones
                                            </th>
                                        </thead>
                                        <tbody>
                                            <?php foreach ($productos as $key => $value) : ?>
                                                <?php if ($value["categoria"] == "sommier") : ?>
                                                    <tr>
                                                        <td> <?php echo $key + 1 ?></td>
                                                        <td>
                                                            <?php echo $value["titulo"] ?>
                                                        </td>
                                                        <td>
                                                            $ <?php echo $value["precio"] ?>
                                                        </td>
                                                        <td>
                                                            <?php echo $value["stock"] ?>
                                                        </td>
                                                        <td>
                                                            <?php echo $value["intro"] ?>
                                                        </td>
                                                        <td>
                                                            <img src="../<?php echo $value["imagen"] ?>" alt="" class="img-thumbnail" style="width: 100px">
                                                        </td>
                                                        <td class="text-right">
                                                            <a href="index.php?pagina=ver-producto&id=<?php echo $value["id"] ?>" class="btn btn-secondary btn-sm"><i class="fa fa-eye"></i></a>
                                                            <button class="btn btn-danger btn-sm btnEliminarProducto" idProducto="<?php echo $value["id"] ?>" onclick="borrarProducto(<?php echo $value["id"] ?>)"><i class="fa fa-trash"></i></button>
                                                        </td>
                                                    </tr>
                                                <?php endif; ?>
                                            <?php endforeach; ?>

                                        </tbody>
                                    </table>

                                </div>
                            </div>

                        </div>
                        <div id="almohadas">
                            <div class="card border-danger border-top">
                                <div class="card-header">
                                    <h3 class="p-1">Almohadas Vicoelásticas</h3>
                                </div>
                                <div class="card-body">

                                    <table id="example3" class="table table-striped  display responsive nowrap" style="width:100%">
                                        <thead class=" text-secondary">
                                            <th>
                                                #
                                            </th>
                                            <th>
                                                Titulo
                                            </th>
                                            <th>
                                                Precio
                                            </th>
                                            <th>
                                                Stock
                                            </th>
                                            <th>
                                                Intro
                                            </th>
                                            <th>
                                                Imagen
                                            </th>
                                            <th class="text-right">
                                                Acciones
                                            </th>
                                        </thead>
                                        <tbody>
                                            <?php foreach ($productos as $key => $value) : ?>
                                                <?php if ($value["categoria"] == "almohada") : ?>
                                                    <tr>
                                                        <td> <?php echo $key + 1 ?></td>
                                                        <td>
                                                            <?php echo $value["titulo"] ?>
                                                        </td>
                                                        <td>
                                                            $ <?php echo $value["precio"] ?>
                                                        </td>
                                                        <td>
                                                            <?php echo $value["stock"] ?>
                                                        </td>
                                                        <td>
                                                            <?php echo $value["intro"] ?>
                                                        </td>
                                                        <td>
                                                            <img src="../<?php echo $value["imagen"] ?>" alt="" class="img-thumbnail" style="width: 100px">
                                                        </td>
                                                        <td class="text-right">
                                                            <a href="index.php?pagina=ver-producto&id=<?php echo $value["id"] ?>" class="btn btn-secondary btn-sm"><i class="fa fa-eye"></i></a>
                                                            <button class="btn btn-danger btn-sm btnEliminarProducto" idProducto="<?php echo $value["id"] ?>" onclick="borrarProducto(<?php echo $value["id"] ?>)"><i class="fa fa-trash"></i></button>
                                                        </td>
                                                    </tr>
                                                <?php endif; ?>
                                            <?php endforeach; ?>

                                        </tbody>
                                    </table>

                                </div>
                            </div>

                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<?php
$borrarProducto = new ControllerProducto();
$borrarProducto->ctrBorrarProducto();
?>

<?php include "modules/modal.php"; ?>