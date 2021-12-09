<?php

$transferencias = ControllerTransferencia::ctrMostrarTransferencias();
?>

<div class="content">
    <div class="row">
        <div class="col-md-12">
            <div class="card">
                <div class="card-header">
                    <h4 class="card-title"> Ventas </h4>
                </div>
                <div class="card-body">
                    <div class="row">
                        <div class="col-md-12 mb-3">
                            <ul class="nav nav-tabs">
                                <li class="nav-item">
                                    <a class="nav-link ancla" href="#" data-ancla="transferencia">Transferencia</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link ancla text-warning" href="#" data-ancla="mercado">Mercado Pago</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link ancla text-danger" href="#" data-ancla="ahora">Ahora 12-18</a>
                                </li>
                            </ul>
                        </div>
                        <div class="col-md-12" id="transferencia">
                            <div class="card border-info border-top">
                                <div class="card-header">
                                    <h3>Transferencias</h3>
                                </div>
                                <div class="card-body">

                                    <table id="example" class="table table-striped  display responsive nowrap" style="width:100%">
                                        <thead>
                                            <tr>
                                                <th>#</th>
                                                <th>N° Operación</th>
                                                <th>Cliente</th>
                                                <th>Produtos</th>
                                                <th>Comprobante</th>
                                                <th>Envio</th>
                                                <th>Total</th>
                                                <th>Fecha</th>
                                                <th>Acciones</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <?php foreach ($transferencias as $key => $value) : ?>
                                                <tr>
                                                    <td><?php echo $key + 1 ?></td>
                                                    <td>#<?php echo $value['operacion']; ?></td>
                                                    <td><?php
                                                        $cliente = json_decode($value['cliente']);

                                                        echo '
                                                       <span class="text-info"> Nombre completo: </span> ' . $cliente->nombre . ' ' . $cliente->apellido . '</br>
                                                       <span class="text-info"> DNI: </span>: ' . $cliente->dni . '</br>  
                                                       <span class="text-info"> Teléfono: </span> ' . $cliente->tel . '</br>     
                                                       <span class="text-info"> Email: </span> ' . $cliente->email . '</br>  
                                                       <span class="text-info"> País: </span> ' . $cliente->pais . '</br> 
                                                       <span class="text-info"> Provincia: </span> ' . $cliente->provincia . '</br>    
                                                       <span class="text-info"> Ciudad: </span> ' . $cliente->ciudad . '</br>   
                                                       <span class="text-info"> Domicilio: </span> ' . $cliente->domicilio . '</br>  
                                                       <span class="text-info"> Número: </span> ' . $cliente->numero . '.  <span class="text-info"> Piso: </span> :' . $cliente->piso . ' . <span class="text-info"> Dpto: </span>' . $cliente->dpto . '. </br>                                  
                                                       <span class="text-info"> CP: </span> ' . $cliente->codigo_postal . '</br>      
                                                            ';


                                                        ?></td>
                                                    <td><?php
                                                        $productos = json_decode($value['productos']);

                                                        $items = $productos->items;

                                                        $items2 = json_encode($items[0]);

                                                        $productosFinal = array(json_decode($items2));

                                                        $numero = count($productosFinal);


                                                        for ($i = 0; $i < $numero; $i++) {

                                                            echo '
                                                            <span class="text-info"> Nombre del producto: </span> ' . $productosFinal[$i]->titulo . '</br>
                                                            <span class="text-info"> Precio: </span> $' . $productosFinal[$i]->precio . '</br>
                                                            <span class="text-info"> Cantidad: </span>' . $productosFinal[$i]->cantidad . '</br>
                                                             ';
                                                        }

                                                        ?></td>
                                                    <td>
                                                        <a href="../img/comprobantes/<?php echo $value['archivo']; ?>" class="btn btn-info btn-sm ml-2" download><i class="fa fa-download"></i> Descargar</a>
                                                    </td>
                                                    <td><?php
                                                        $envio = json_decode($value['envio']);


                                                        if ($envio->transporte == 'Cruz del Sur') {
                                                            if ($envio->tipo_envio == 'E') {
                                                                echo '
                                                                <span class="ml-3">
                                                                <span class="text-info"> Empresa: </span> ' . $envio->transporte . ',   
                                                                <span class="text-info"> Tipo de entrega: </span> Domicilio,
                                                                <span class="text-info"> Costo: </span> $' . $envio->costo . '
                                                                </span>
                                                                     ';
                                                            }
                                                        }

                                                        ?></td>
                                                    <td>$<?php echo $value['total']; ?> (-20% de descuento)</td>
                                                    <td><?php echo $value['fecha']; ?></td>
                                                    <td>
                                                        <button type="button" class="btn btn-danger btn-sm" onclick="borrarVentaTransferencia(<?php echo $value['id']; ?>)"><i class="fa fa-trash"></i></button>
                                                    </td>
                                                </tr>
                                            <?php endforeach; ?>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>

                        <div class="col-md-12" id="mercado">
                            <div class="card border-warning border-top">
                                <div class="card-header">
                                    <h3>Mercado Pago</h3>
                                </div>
                                <div class="card-body">

                                    <!-- <table id="example2" class="table table-striped  display responsive nowrap" style="width:100%">
                                        <thead>
                                            <tr>
                                                <th>First name</th>
                                                <th>Last name</th>
                                                <th>Position</th>
                                                <th>Office</th>
                                                <th>Age</th>
                                                <th>Start date</th>
                                                <th>Salary</th>
                                                <th>Extn.</th>
                                                <th>E-mail</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>Tiger</td>
                                                <td>Nixon</td>
                                                <td>System Architect</td>
                                                <td>Edinburgh</td>
                                                <td>61</td>
                                                <td>2011/04/25</td>
                                                <td>$320,800</td>
                                                <td>5421</td>
                                                <td>t.nixon@datatables.net</td>
                                            </tr>
                                        </tbody>
                                    </table> -->
                                </div>
                            </div>
                        </div>
                        <div class="col-md-12" id="ahora">
                            <div class="card border-danger border-top">
                                <div class="card-header">
                                    <h3>Ahora 12 - 18</h3>
                                </div>
                                <div class="card-body">

                                    <!-- <table id="example3" class="table table-striped  display responsive nowrap" style="width:100%">
                                        <thead>
                                            <tr>
                                                <th>First name</th>
                                                <th>Last name</th>
                                                <th>Position</th>
                                                <th>Office</th>
                                                <th>Age</th>
                                                <th>Start date</th>
                                                <th>Salary</th>
                                                <th>Extn.</th>
                                                <th>E-mail</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>Tiger</td>
                                                <td>Nixon</td>
                                                <td>System Architect</td>
                                                <td>Edinburgh</td>
                                                <td>61</td>
                                                <td>2011/04/25</td>
                                                <td>$320,800</td>
                                                <td>5421</td>
                                                <td>t.nixon@datatables.net</td>
                                            </tr>
                                        </tbody>
                                    </table> -->
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

$borrarTra = new ControllerTransferencia();
$borrarTra->ctrBorrarVentaTransferencia();

?>