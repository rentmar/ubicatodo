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
    protected $allowedFields    = ['nombre', 'descripcion', 'direccion', 'Latitud', 'Longitud',];

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


    public function srvPorDistCat($distrito, $categoria){
        $data = [
            "foo" => $distrito,
            "bar" => $categoria,
        ];
        return $data;

    }
    
    public function servPorDistritoTipo($iddistrito, $idcategoria)
    {
        $sql = "SELECT * "
            ."FROM servicio  "
            ."WHERE servicio.id_distrito = ?  "
            ."AND servicio.id_categoria = ?  ";
        $qry = $this->db->query($sql, [$iddistrito, $idcategoria ]);
        return $qry->getResult();
    }
}
