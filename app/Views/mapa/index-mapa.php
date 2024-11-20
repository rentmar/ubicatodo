<!-- Inicio Contenido -->
<div class="container-fluid">

    <!-- Encabezado -->
    <div class="d-sm-flex align-items-center justify-content-between mb-4">
        <h1 class="h3 mb-0 text-gray-800">Mapas</h1>                        
    </div><!-- Fin Encabezado -->

    <!-- Contenido Row -->
    <div class="row">
        <?php foreach($distritos as $ds):  ?>
        <div class="col-xl-4 col-lg-5">
            <div class="card shadow mb-4">
                <!-- Card Header - Dropdown -->
                <div class="card-header py-3">
                    <h6 class="m-0 font-weight-bold text-primary">
                        DISTRITO:
                        <?php echo ' '.$ds->nombre; ?> 
                    </h6>
                </div>
                <!-- Card Body -->
                <div class="card-body">
                    <div class="text-center">
                    <img class="img-fluid px-3 px-sm-4 mt-3 mb-4" style="width: 25rem;" 
                    src="<?php echo base_url($ds->url);?>" alt="...">                        
                    </div>
                    <hr>
                    <p>
                        <a href="<?php echo base_url('mapa/distrito/'.$ds->id_distrito); ?>" class="btn btn-primary btn-icon-split">
                            <span class="icon text-white-50">
                                <i class="fas fa-flag"></i>
                            </span>
                            <span class="text">Mapa</span>
                        </a>
                    </p>
                </div>
            </div>
        </div>
        <?php endforeach;  ?>

    </div><!-- Fin Contenido Row -->

</div><!-- Fin inicio contenido -->
