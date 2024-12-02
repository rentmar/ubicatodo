<!-- Begin Page Content -->
<div class="container-fluid">


<!-- Page Heading -->
<h1 class="h3 mb-2 text-gray-800">Servicios Registrados</h1>

<div>
    <a href="<?php echo base_url('mapa/nuevoServicio'); ?>" class="btn btn-info" role="button">Nuevo Servicio</a>
</div>
<br>

<!-- DataTales Example -->
<div class="card shadow mb-4">
    <div class="card-header py-3">
        <h6 class="m-0 font-weight-bold text-primary">Servicios</h6>
    </div>
    <div class="card-body">
        <div class="table-responsive">
            <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                <thead>
                    <tr>
                        <th>id</th>
                        <th>Nombre</th>
                        <th>Descripcion</th>
                        <th>Distrito</th>
                        <th>Categoria</th>
                        <th>latitud</th>
                        <th>longitud</th>
                    </tr>
                </thead>
                
                <tbody>
                    <?php foreach($servs as $s): ?>
                    <tr>
                        <td><?php echo $s->id_servicio; ?></td>
                        <td><?php echo $s->nombre; ?></td>
                        <td><?php echo $s->descripcion; ?></td>
                        <td><?php echo $s->distnombre; ?></td>
                        <td><?php echo $s->catnombre; ?></td>
                        <td><?php echo $s->Latitud; ?></td>
                        <td><?php echo $s->Longitud; ?></td>
                    </tr>
                    <?php endforeach; ?>
                                    
                </tbody>
            </table>
        </div>
    </div>
</div>

</div>
<!-- /.container-fluid -->