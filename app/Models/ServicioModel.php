<?php

namespace App\Models;

use CodeIgniter\Model;

class ServicioModel extends Model
{
    protected $table            = 'servicio';
    protected $primaryKey       = 'id_servicio';
    protected $useAutoIncrement = true;
    protected $returnType       = 'object';
    protected $useSoftDeletes   = false;
    protected $protectFields    = true;
    protected $allowedFields    = ['nombre', 'descripcion', 'tipo','estado', 'direccion', 'Latitud', 'Longitud', 'telefono', 'id_distrito', 'url_google_maps', 'id_categoria'];

    protected bool $allowEmptyInserts = false;
    protected bool $updateOnlyChanged = true;

    protected array $casts = [];
    protected array $castHandlers = [];

    // Dates
    protected $useTimestamps = false;
    protected $dateFormat    = 'datetime';
    protected $createdField  = 'created_at';
    protected $updatedField  = 'updated_at';
    protected $deletedField  = 'deleted_at';

    // Validation
    protected $validationRules      = [];
    protected $validationMessages   = [];
    protected $skipValidation       = false;
    protected $cleanValidationRules = true;

    // Callbacks
    protected $allowCallbacks = true;
    protected $beforeInsert   = [];
    protected $afterInsert    = [];
    protected $beforeUpdate   = [];
    protected $afterUpdate    = [];
    protected $beforeFind     = [];
    protected $afterFind      = [];
    protected $beforeDelete   = [];
    protected $afterDelete    = [];


        
    public function servPorDistritoTipo($iddistrito, $idcategoria)
    {
        $sql = "SELECT * "
            ."FROM servicio  "
            ."WHERE servicio.id_distrito = ?  "
            ."AND servicio.id_categoria = ?  ";
        $qry = $this->db->query($sql, [$iddistrito, $idcategoria ]);
        return $qry->getResult();
    }

    public function serviosTodos(){
        $sql = "SELECT servicio.id_servicio, servicio.nombre, servicio.descripcion, categoria.nombre AS catnombre, distrito.nombre AS distnombre, servicio.Latitud, servicio.Longitud   "
            ."FROM servicio  "
            ."LEFT JOIN categoria ON servicio.id_categoria = categoria.id_categoria  "
            ."LEFT JOIN distrito ON servicio.id_distrito = distrito.id_distrito  ";
        $qry = $this->db->query($sql);
        return $qry->getResult();
    }
}
