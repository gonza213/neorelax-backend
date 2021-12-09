<div class="row p-5">
    <div class="col-md-6 mx-auto p-5">
        <div class="card card-user" style="box-shadow: 3px 0px 5px 4px #888">
            <div class="card-header">
                <h5 class="card-title text-secondary text-uppercase">Panel de control de <b>Neorelax</b></h5>
            </div>
            <div class="card-body">
                <form method="POST">
                    <div class="row p-2">
                        <div class="col-md-12 p-2">
                            <div class="form-group">
                                <label class="text-dark">Usuario</label>
                                <input type="text" class="form-control border border-secondary" name="usuario"
                                    placeholder="Usuario">
                            </div>
                        </div>
                        <div class="col-md-12 p-2">
                            <div class="form-group">
                                <label class="text-dark">Contraseña</label>
                                <input type="password" class="form-control border border-secondary" name="password"
                                    placeholder="Contraseña">
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="update ml-auto mr-auto">
                            <button type="submit" class="btn btn-info btn-round">Ingresar</button>
                        </div>
                    </div>
                    <?php

                    $ingresar = new ControllerAdmin();
                    $ingresar->ctrIngresarUsuario();
                    ?>
                </form>

            </div>
            <div class="card-footer">
                <div class="row">
                    <div class="col-md-12">
                        <a href="#" class="btn btn-warning btn-sm">Volver al sitio</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>