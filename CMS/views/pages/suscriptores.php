<?php
$suscriptores = ControllerSuscriptor::ctrMostrarSuscriptor();
?>
<div class="content">
    <div class="row">
        <div class="col-md-12">
            <div class="card">
                <div class="card-header">
                    <h4 class="card-title"> Suscripciones</h4>
                </div>
                <div class="card-body">

                    <table id="example" class="table table-striped  display responsive nowrap" style="width:100%">
                        <thead class="text-secondary">
                            <th>
                                #
                            </th>
                            <th>
                                Email
                            </th>

                            <th class="text-right">
                                Acciones
                            </th>
                        </thead>
                        <tbody>
                            <?php foreach ($suscriptores as $key => $value) : ?>
                                <tr>
                                    <td>
                                        <?php echo $key + 1 ?>
                                    </td>
                                    <td>
                                        <?php echo $value["email"] ?>
                                    </td>
                                    <td class="text-right">
                                        <button class="btn btn-danger btn-sm btnEliminarSusc" idSusc="<?php echo $value["id"] ?>" onclick="borrarSusc(<?php echo $value["id"] ?>)"><i class="fa fa-trash"></i></button>
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

<?php

$eliminarSusc = new ControllerSuscriptor();
$eliminarSusc->ctrBorrarSuscriptor();
?>