<?php
$id = $_GET["id"];

$productos = ControllerProducto::ctrMostrarProductos();
$imagenes = ControllerProducto::ctrMostrarImagenes();
?>

<div class="content">
    <div class="row">
        <div class="col-md-12">
            <div class="card">
                <?php foreach ($productos as $key => $value) : ?>
                <?php if ($value["id"] == $id) : ?>
                <div class="card-header">
                    <div class="row">
                        <div class="col-md-6">
                            <h4 class="card-title"><?php echo $value["titulo"] ?></h4>
                        </div>
                        <div class="col-md-6">
                            <!-- <button data-toggle="modal" data-target="#exampleModal4"
                                idProducto="<?php echo $value["id"] ?>"
                                class="btn btn-warning btn-sm pull-right btnEditarProducto">Editar</button> -->
                            <a href="index.php?pagina=editar-producto&id=<?php echo $value["id"] ?>"
                                class="btn btn-warning btn-sm pull-right">Editar</a>
                        </div>
                    </div>

                </div>
                <div class="card-body">
                    <div class="row">
                        <div class="col-md-4 p-2">
                            <div class="card">
                                <div class="card-body">
                                    <span class="text-primary">Categoria:</span>
                                    <?php if ($value["categoria"] == 'colchon') : ?>
                                    <p class="p-2">Colchón</p>
                                    <?php elseif ($value["categoria"] == 'almohada') : ?>
                                    <p class="p-2">Almohada</p>
                                    <?php else : ?>
                                    <p class="p-2">Conjunto</p>
                                    <?php endif; ?>
                                </div>
                            </div>

                        </div>
                        <div class="col-md-4 p-2">
                            <div class="card">
                                <div class="card-body">
                                    <span class="text-primary">Precio:</span>
                                    <p class="p-2"><?php echo $value["precio"] ?></p>
                                </div>
                            </div>

                        </div>
                        <div class="col-md-4 p-2">
                            <div class="card">
                                <div class="card-body">
                                    <span class="text-primary">Stock:</span>
                                    <p class="p-2"><?php echo $value["stock"] ?></p>
                                </div>
                            </div>

                        </div>
                        <div class="col-md-6 p-2">
                            <div class="card">
                                <div class="card-body">
                                    <span class="text-primary">Intro:</span>
                                    <div class="p-2"><?php echo $value["intro"] ?></div>
                                </div>
                            </div>

                        </div>
                        <div class="col-md-6 p-2">
                            <div class="card">
                                <div class="card-body">
                                    <span class="text-primary">Descripción:</span>
                                    <div class="p-2"><?php echo $value["descripcion"] ?></div>
                                </div>
                            </div>

                        </div>
                        <div class="col-md-6 p-2">
                            <span class="text-primary">Imagen:</span>
                            <img src="../<?php echo $value["imagen"] ?>" class="img-thumbnail"
                                style="width: 100%; height: 350px">
                        </div>
                        <div class="col-md-6">
                            <div class="card">
                                <div class="card-header"><h4>Medidas y peso</h4></div>
                                <div class="card-body">
                                    <div class="row">
                                        <div class="col-md-6">
                                        <span class="text-primary">Alto:</span>
                                          <p class="p-2"><?php echo $value["alto"] ?> cm</p>
                                        </div>
                                        <div class="col-md-6">
                                         <span class="text-primary">Ancho:</span>
                                          <p class="p-2"><?php echo $value["ancho"] ?> cm</p>
                                        </div>
                                        <div class="col-md-6">
                                        <span class="text-primary">Largo:</span>
                                          <p class="p-2"><?php echo $value["largo"] ?> cm</p>
                                        </div>
                                        <div class="col-md-6">
                                        <span class="text-primary">Peso:</span>
                                          <p class="p-2"><?php echo $value["peso"] ?> kg</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-md-12">
                            <a href="productos" class="btn btn-secondary btn-sm">Volver</a>
                        </div>
                    </div>
                </div>
                <?php endif; ?>
                <?php endforeach; ?>
            </div>
        </div>
        <div class="col md-12">
            <div class="card">
                <div class="card-body">
                    <div class="row">
                        <div class="col-md-5 p-2">
                            <div class="card">
                                <div class="card-header">
                                    <h4>Subir imagenes</h4>
                                </div>
                                <div class="card-body">
                                    <form action="db/upload.php" method="post" enctype="multipart/form-data">
                                        <input type="hidden" name="id" value="<?php echo $_GET["id"] ?>">
                                        <input type="file" id="upload" class="form-control" name="upload[]" multiple required>

                                        <div class="form-group">
                                            <button type="submit" class="btn btn-secondary btn-block"
                                                onclick="guardarImagen()">Guardar
                                                imagenes</button>
                                        </div>
                                    </form>
                                </div>
                            </div>
                            <div class="card">
                                <div class="card-body">
                                    <div class="table-responsive">
                                        <table class="table">
                                            <thead class=" text-secondary">
                                                <th>
                                                    #
                                                </th>
                                                <th>
                                                    Imagen
                                                </th>
                                                <th class="text-right">
                                                    Acciones
                                                </th>
                                            </thead>
                                            <tbody>
                                                <?php foreach ($imagenes as $key => $value) : ?>
                                                <?php if ($value["id_producto"] == $id) : ?>
                                                <tr>
                                                    <td>
                                                        <?php echo $key + 1 ?>
                                                    </td>
                                                    <td>
                                                        <img src="../<?php echo $value["img"] ?>" alt=""
                                                            class="img-fluid" style="width: 100%; height: 80px">
                                                    </td>
                                                    <td class="text-right">
                                                        <button class="btn btn-danger btn-sm  btnEliminarImagen"
                                                            idImagen="<?php echo $value["id_img"] ?>"><i
                                                                class="fa fa-trash"></i></button>

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
                        <div class="col-md-7 p-2">
                            <div class="card">
                                <div class="card-header">
                                    <h4>Galeria</h4>
                                </div>
                                <div class="card-body">
                                    <div class="row">
                                        <?php foreach ($imagenes as $key => $value) : ?>
                                        <?php if ($value["id_producto"] == $id) : ?>
                                        <div class="col-md-6 p-0">
                                            <img src="../<?php echo $value["img"] ?>" class="img-fluid" alt=""
                                                style="width: 100%; height: 250px;">
                                        </div>
                                        <?php endif; ?>
                                        <?php endforeach; ?>
                                    </div>
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

$borrarImagen = new ControllerProducto();
$borrarImagen->ctrBorrarImagen();

?>