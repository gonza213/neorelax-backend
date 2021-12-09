<?php
$id = $_GET["id"];

$productos = ControllerProducto::ctrMostrarProductos();
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
                            <h4 class="card-title">Editar <?php echo $value["titulo"] ?></h4>
                        </div>
                    </div>

                </div>
                <div class="card-body">
                    <form method="post" enctype="multipart/form-data">
                        <div class="row">
                            <div class="col-md-3 p-2">
                                <div class="card">
                                    <div class="card-body">
                                        <input type="hidden" name="id" value="<?php echo $value["id"] ?>">
                                        <span class="text-primary">Titulo:</span>
                                        <input type="text" class="form-control p-2"
                                            value="<?php echo $value["titulo"] ?>" name="titulo">
                                    </div>
                                </div>

                            </div>
                            <div class="col-md-3 p-2">
                                <div class="card">
                                    <div class="card-body">
                                        <span class="text-primary">Categoria:</span>
                                        <select name="categoria" class="form-control">
                                            <?php if ($value["categoria"] == 'colchon') : ?>
                                            <option value="<?php echo $value["categoria"] ?>">
                                                Colchón</option>
                                            <?php elseif ($value["categoria"] == 'almohada') : ?>
                                            <option value="<?php echo $value["categoria"] ?>">
                                                Almohada</option>
                                            <?php else : ?>
                                            <option value="<?php echo $value["categoria"] ?>">
                                                Conjunto</option>
                                            <?php endif; ?>
                                            <option value="colchon">Colchón</option>
                                            <option value="sommier">Conjunto</option>
                                            <option value="almohada">Almohada</option>
                                        </select>

                                    </div>
                                </div>


                            </div>

                            <div class="col-md-3 p-2">
                                <div class="card">
                                    <div class="card-body">
                                        <span class="text-primary">Precio:</span>
                                        <input type="text" class="form-control p-2"
                                            value="<?php echo $value["precio"] ?>" name="precio">
                                    </div>
                                </div>

                            </div>
                            <div class="col-md-3 p-2">
                                <div class="card">
                                    <div class="card-body">
                                        <span class="text-primary">Stock:</span>
                                        <input type="number" class="form-control p-2"
                                            value="<?php echo $value["stock"] ?>" name="stock">
                                    </div>
                                </div>

                            </div>
                            <div class="col-md-6 p-2">
                                <div class="card">
                                    <div class="card-body">
                                        <span class="text-primary">Intro:</span>
                                        <textarea name="intro"
                                            id="editorIntroP"><?php echo $value["intro"] ?></textarea>
                                    </div>
                                </div>

                            </div>
                            <div class="col-md-6 p-2">
                                <div class="card">
                                    <div class="card-body">
                                        <span class="text-primary">Descripción:</span>
                                        <textarea name="descripcion"
                                            id="editorDescripcionP"><?php echo $value["descripcion"] ?></textarea>
                                    </div>
                                </div>

                            </div>
                            <div class="col-md-6 p-3">
                                <span class="text-primary">Imagen principal:</span>
                                <div class="custom-file mt-2">
                                    <input type="file" class="custom-file-input imagen" id="customFileLang4" lang="es"
                                        name="imagen">
                                    <label class="custom-file-label" for="customFileLang4">Seleccionar Archivo</label>
                                </div>
                                <input type="hidden" name="imagenActual" value="<?php echo $value["imagen"] ?>">
                                <div class="form-group mt-2" id="visualizar2">
                                    <img src="../<?php echo $value["imagen"] ?>" alt=""
                                        class="img-thumbnail p-3 previsualizar" style="width: 100%; height: 350px;">
                                </div>
                            </div>

                            <div class="col-md-6">
                                <div class="card">
                                    <div class="card-header"><h4>Medidas y peso</h4></div>
                                    <div class="card-body">
                                        <div class="row">
                                            <p class="text-danger p-3">Las medidas deben estar en <span class="text-primary">cm</span>, sin decimales y el peso en <span class="text-primary">kg</span>, con 2 decimales (',').</p>
                                            <div class="col-md-6">
                                            <span class="text-primary">Alto:</span>
                                            <input type="number" class="form-control p-2"
                                                value="<?php echo $value["alto"] ?>" name="alto">
                                            </div>
                                            <div class="col-md-6">
                                            <span class="text-primary">Ancho:</span>
                                            <input type="number" class="form-control p-2"
                                                value="<?php echo $value["ancho"] ?>" name="ancho">
                                            </div>
                                            <div class="col-md-6">
                                            <span class="text-primary">Largo:</span>
                                            <input type="number" class="form-control p-2"
                                                value="<?php echo $value["largo"] ?>" name="largo">
                                            </div>
                                            <div class="col-md-6">
                                            <span class="text-primary">Peso:</span>
                                            <input type="text" class="form-control p-2"
                                                value="<?php echo $value["peso"] ?>" name="peso">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                           </div>
                           
                            <div class="col-md-12">
                                <a href="index.php?pagina=ver-producto&id=<?php echo $value["id"] ?>"
                                    class="btn btn-secondary btn-sm">Volver</a>
                                <button type="submit" class="btn btn-warning pull-right">Guardar</button>
                            </div>
                        </div>
                        <?php
                                $editarProducto = new ControllerProducto();
                                $editarProducto->ctrEditarProducto();
                                ?>
                    </form>
                </div>
                <?php endif; ?>
                <?php endforeach; ?>
            </div>
        </div>
    </div>
</div>