<!-- Inicio Contenido -->
<div class="container-fluid">

    <!-- Encabezado -->
    <div class="d-sm-flex align-items-center justify-content-between mb-4">
        <h1 class="h3 mb-0 text-gray-800">
            Distrito: <?php echo ' '.$distrito->nombre; ?>
        </h1>                        
    </div><!-- Fin Encabezado -->

    <!-- Contenido Row -->
    <div class="row">
        <div class="col-12">

            <!-- Default Card Example -->
            <div class="card mb-4">
                <div class="card-body">
                    <?php helper('form'); ?>
                    <?php echo form_open(); ?>
                        <div>
                            <label for="latidud" class="form-label">Latitud</label>
                            <input type="text" class="form-control" 
                            id="lat" name="lat" value="<?php echo $distrito->lat; ?>" readonly >
                        </div>
                        <div>
                            <label for="latidud" class="form-label">Longitud</label>
                            <input type="text" class="form-control" 
                            id="lon" name="lon" value="<?php echo $distrito->lon; ?>" readonly>
                        </div>
                        <div>
                            <input type="hidden" id="iddistrito" name="iddistrito" 
                            value="<?php echo $distrito->id_distrito; ?>"  readonly>
                        </div>
                    <?php echo form_close(); ?>
                </div>
            </div>


            <!-- Default Card Example -->
            <!--
            <div class="card mb-4">
                <div class="card-body">
                    <?php //helper('form'); ?>
                    <?php //echo form_open(); ?>
                        <div>
                            <label for="sel1" class="form-label">Categoria:</label>
                            <select class="form-select" id="categoria" name="categoria">
                                <option>Selecciona una categoria</option>
                                <?php //foreach($categoria as $c): ?>
                                    <option value="<?php //echo $c->id_categoria; ?>" ><?php // echo $c->nombre;?></option>
                                <?php //endforeach; ?>
                            </select>
                        </div>    
                    <?php //echo form_close(); ?>
                </div>
            </div> -->

            <!-- Basic Card Example -->
            <div class="card shadow mb-4">
                <div class="card-header py-3">
                    <h6 class="m-0 font-weight-bold text-primary">Mapa</h6>
                </div>
                <div class="card-body">
                    <div id="map"></div>
                </div>
            </div>
        </div>
    </div><!-- Fin Contenido Row -->

</div><!-- Fin inicio contenido -->