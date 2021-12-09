<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Crear administrador</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form method="POST" enctype="multipart/form-data">
                    <div class="form-group">
                        <input type="text" class="form-control" id="nombreU" placeholder="Nombre" name="nombre" required>
                    </div>
                    <div class="form-group">
                        <input type="text" class="form-control" id="usuarioU"  placeholder="Usuario" name="usuario" required>
                    </div>
                    <div class="form-group">
                        <input type="email" class="form-control" id="emailU"  placeholder="Email" name="email" required>
                    </div>
                    <div class="form-group">
                        <input type="password" class="form-control" id="passwordU"  placeholder="Contraseña" name="password" required>
                    </div>
                    <div class="form-group">
                        <select name="rol" class="form-control" id="rolU" >
                            <option disabled>Seleccionar rol</option>
                            <option value="administrador">Administrador</option>
                            <option value="editor">Editor</option>
                        </select>
                    </div>
                    <span><b>Imagen:</b></span>
                    <div class="custom-file">
                        <input type="file" class="custom-file-input imagen" id="customFileLang" lang="es" name="foto">
                        <label class="custom-file-label" for="customFileLang">Seleccionar Archivo</label>
                    </div>
                    <div class="form-group mt-2">
                        <img src="views/assets/img/default-avatar.png" alt="" class="img-fluid p-3 previsualizar"
                            style="width: 100px">
                    </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
                <button type="submit" class="btn btn-primary" onclick="guardarUsuario()">Crear</button>
            </div>
            <?php
            $crearAdmin = new ControllerAdmin();
            $crearAdmin->ctrCrearAdmin();
            ?>
            </form>
        </div>
    </div>
</div>


<!-- Modal -->
<div class="modal fade" id="exampleModal2" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Editar administrador</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form method="POST" enctype="multipart/form-data">
                    <div class="form-group">
                        <input type="hidden" name="id" id="id">
                        <input type="text" class="form-control" placeholder="Nombre" name="nombreAdmin" id="nombre">
                    </div>
                    <div class="form-group">
                        <input type="text" class="form-control" placeholder="Usuario" name="usuarioAdmin" id="usuario"
                            readonly>
                    </div>
                    <div class="form-group">
                        <input type="email" class="form-control" placeholder="Email" name="emailAdmin" id="email">
                    </div>
                    <div class="form-group">
                        <input type="password" class="form-control" placeholder="Nueva contraseña" name="passwordAdmin">
                        <input type="hidden" name="passwordActual" id="password">
                    </div>
                    <div class="form-group">
                        <select name="rolAdmin" class="form-control" id="rol">
                            <option value="" selected="selected"></option>
                            <option value="administrador">Administrador</option>
                            <option value="editor">Editor</option>
                        </select>
                    </div>
                    <span><b>Imagen:</b></span>
                    <div class="custom-file">
                        <input type="file" class="custom-file-input imagen" id="customFileLang2" lang="es"
                            name="fotoAdmin">
                        <input type="hidden" name="fotoActual" id="foto">
                        <label class="custom-file-label" for="customFileLang2">Seleccionar Archivo</label>
                    </div>
                    <div class="form-group mt-2" id="visualizar">
                        <img src="" alt="" class="img-fluid p-3 previsualizar" style="width: 100px">
                    </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
                <button type="submit" class="btn btn-warning">Editar</button>
            </div>
            <?php
            $editAdmin = new ControllerAdmin();
            $editAdmin->ctrEditarAdmin();
            ?>
            </form>
        </div>
    </div>
</div>


<!-- Modal -->
<div class="modal fade" id="exampleModal3" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Crear Producto</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form method="POST" enctype="multipart/form-data">
                    <div class="form-group">
                        <input type="text" class="form-control" id="titulo" placeholder="Titulo" name="titulo" required>
                    </div>
                    <div class="form-group">
                        <select name="categoria" class="form-control" id="categoria" required>
                            <option disabled>Seleccionar categoria</option>
                            <option value="colchon">Colchón</option>
                            <option value="sommier">Conjunto</option>
                            <option value="almohada">Almohada</option>

                        </select>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <div class="col-md-6">
                                <input type="text" class="form-control" placeholder="Precio" id="precio" name="precio" required>
                            </div>
                            <div class="col-md-6">
                                <input type="number" class="form-control" placeholder="Stock" id="stock" name="stock" required>
                            </div>
                        </div>
                    </div>

                    <div class="form-group">
                        <textarea name="intro" id="editorIntro" placeholder="Introducción..."></textarea>
                    </div>
                    <div class="form-group">
                        <textarea name="descripcion" id="editorDescripcion" placeholder="Descripción..."></textarea>
                    </div>
                    <span><b>Imagen principal:</b></span>
                    <div class="custom-file">
                        <input type="file" class="custom-file-input imagen" id="customFileLang3" lang="es" name="imagen"
                            required>
                        <label class="custom-file-label" for="customFileLang3">Seleccionar Archivo</label>
                    </div>
                    <div class="form-group mt-2">
                        <img src="views/assets/img/default.png" alt="" class="img-thumbnail p-3 previsualizar"
                            style="width: 100%; height: 250px;;">
                    </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
                <button type="submit" class="btn btn-primary" onclick="guardarProducto()">Guardar producto</button>
            </div>
            <?php
            $crearProducto = new ControllerProducto();
            $crearProducto->ctrCrearProducto();
            ?>
            </form>
        </div>
    </div>
</div>

<!-- Modal -->
<!-- <div class="modal fade" id="exampleModal4" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Editar Producto</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form method="POST" enctype="multipart/form-data">
                    <div class="form-group">
                        <input type="hidden" name="id" id="idP">
                        <input type="text" class="form-control" id="titulo" placeholder="Titulo" name="tituloP"
                            required>
                    </div>
                    <div class="form-group">
                        <select name="categoriaP" class="form-control" id="categoria">
                            <option value="" selected="selected"></option>
                            <option value="colchon">Colchón</option>
                            <option value="sommier">Sommier</option>
                            <option value="almohada">Almohada</option>
                            <option value="cuello">Cuello Musical</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <div class="col-md-6">
                                <input type="text" id="precio" class="form-control" placeholder="Precio" name="precioP"
                                    required>
                            </div>
                            <div class="col-md-6">
                                <input type="number" id="stock" class="form-control" placeholder="Stock" name="stockP"
                                    required>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <textarea name="introP" id="editorIntroP"><p id="verIntro"></p></textarea>
                    </div>
                    <div class="form-group">
                        <textarea name="descripcionP" id="editorDescripcionP"></textarea>
                    </div>
                    <span><b>Imagen principal:</b></span>
                    <div class="custom-file">
                        <input type="file" class="custom-file-input imagen" id="customFileLang4" lang="es"
                            name="imagenP">
                        <input type="hidden" name="imagenActual" id="imagen">
                        <label class="custom-file-label" for="customFileLang4">Seleccionar Archivo</label>
                    </div>
                    <div class="form-group mt-2" id="visualizar2">
                        <img src="" alt="" class="img-fluid p-3 previsualizar" style="width: 100px">
                    </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
                <button type="submit" class="btn btn-primary">Guardar producto</button>
            </div>
         
            </form>
        </div>
    </div>
</div> -->