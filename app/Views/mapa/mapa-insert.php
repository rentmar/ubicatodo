<!-- Inicio Contenido -->
<div class="container-fluid">

    <!-- Encabezado -->
    <div class="d-sm-flex align-items-center justify-content-between mb-4">
        <h1 class="h3 mb-0 text-gray-800">Nuevo Servicio</h1>                        
    </div><!-- Fin Encabezado -->

    <!-- Contenido Row -->
    <div class="row">
    <?php //echo form_open('mapa/crear'); ?>
    <form action="<?php echo base_url('mapa/crear');?>" method="post" accept-charset="utf-8">
        <div class="form-group">
            <label for="nombre">Nombre:</label>
            <input type="text" class="form-control" id="nombre" placeholder="" name="nombre">
        </div>
        <div class="form-group">
            <label for="descripcion">Descripcion:</label>
            <input type="text" class="form-control" id="descripcion" placeholder="" name="descripcion">
        </div>
        <div class="form-group">
            <label for="tipo">Tipo:</label>
            <input type="text" class="form-control" id="tipo" placeholder="" name="tipo">
        </div>
        <div class="form-group">
            <label for="estado">Estado:</label>
            <input type="text" class="form-control" id="estado" placeholder="" name="estado">
        </div>
        <div class="form-group">
            <label for="direccion">Direccion:</label>
            <input type="text" class="form-control" id="direccion" placeholder="" name="direccion">
        </div>
        <div class="form-group">
            <label for="latitud">Latitud:</label>
            <input type="text" class="form-control" id="latitud" placeholder="" name="latitud">
        </div>
        <div class="form-group">
            <label for="longitud">Longitud:</label>
            <input type="text" class="form-control" id="longitud" placeholder="" name="longitud">
        </div>
        <div class="form-group">
            <label for="telefono">Telefono:</label>
            <input type="text" class="form-control" id="telefono" placeholder="" name="telefono">
        </div>
        <div class="form-group">
            <label for="distrito">Distrito:</label>
            <select id="distrito" name="distrito" class="custom-select mb-3">
                <?php foreach($distrito as $d): ?>
                <option value="<?php echo $d->id_distrito; ?>"><?php echo $d->nombre; ?></option>
                <?php endforeach; ?>
            </select>            
        </div>
        <div class="form-group">
            <label for="categoria">Categoria:</label>
                <select id="categoria" name="categoria" class="custom-select mb-3">
                    <?php foreach($categoria as $d): ?>
                    <option value="<?php echo $d->id_categoria; ?>"><?php echo $d->nombre; ?></option>
                    <?php endforeach; ?>
                </select>
            </div>
        <div class="form-group">
            <label for="maps">URL Google Maps:</label>
            <input type="text" class="form-control" id="maps" placeholder="" name="maps">
        </div>

        
        <button type="submit" class="btn btn-primary">Submit</button>
    <?php echo form_close(); ?>

    

    </div><!-- Fin Contenido Row -->

</div><!-- Fin inicio contenido -->