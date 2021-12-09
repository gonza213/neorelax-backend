<?php

$administradores = ControllerAdmin::ctrMostrarAdmin();
?>

<div class="content">
    <div class="row">
        <div class="col-md-12">
            <div class="card">
                <div class="card-header">
                    <div class="row">
                        <div class="col-md-6">
                            <h4 class="card-title"> Administradores</h4>
                        </div>
                        <div class="col-md-6">
                            <button data-toggle="modal" data-target="#exampleModal"
                                class="btn btn-primary btn-sm pull-right">Nuevo administrador</button>
                        </div>
                    </div>

                </div>
                <div class="card-body">
                   
                        <table id="example" class="table table-striped  display responsive nowrap" style="width:100%">
                            <thead class=" text-secondary">
                                <th>
                                    #
                                </th>
                                <th>
                                    Nombre
                                </th>
                                <th>
                                    Usuario
                                </th>
                                <th>
                                    Email
                                </th>
                                <th>
                                    Rol
                                </th>
                                <th>
                                    Foto
                                </th>
                                <th class="text-right">
                                    Acciones
                                </th>
                            </thead>
                            <tbody>
                                <?php foreach ($administradores as $key => $value) : ?>
                                <tr>
                                    <td>
                                        <?php echo $key + 1 ?>
                                    </td>
                                    <td>
                                        <?php echo $value["nombre"] ?>
                                    </td>
                                    <td>
                                        <?php echo $value["usuario"] ?>
                                    </td>
                                    <td>
                                        <?php echo $value["email"] ?>
                                    </td>
                                    <td>
                                        <?php echo $value["rol"] ?>
                                    </td>
                                    <td>
                                        <img src="<?php echo $value["foto"] ?>" alt="" class="img-fluid"
                                            style="width: 40px">
                                    </td>
                                    <td class="text-right">
                                        <?php if ($value["usuario"] == "admin") : ?>
                                        <button class="btn btn-warning btn-sm btnEditarAdmin" data-toggle="modal"
                                            data-target="#exampleModal2" idEditAdmin="<?php echo $value["id"] ?>"><i
                                                class="fa fa-pencil"></i></button>
                                        <?php else : ?>
                                        <button class="btn btn-warning btn-sm btnEditarAdmin" data-toggle="modal"
                                            data-target="#exampleModal2" idEditAdmin="<?php echo $value["id"] ?>"><i
                                                class="fa fa-pencil"></i></button>
                                        <button class="btn btn-danger btn-sm  btnEliminarAdmin"
                                            idAdmin="<?php echo $value["id"] ?>" onclick="borrarAdmin(<?php echo $value["id"] ?>)"><i class="fa fa-trash" ></i></button>
                                        <?php endif; ?>
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

<?php include "modules/modal.php" ?>

<?php

$borrarAdmin = new ControllerAdmin();
$borrarAdmin->ctrBorrarAdmin();

?>