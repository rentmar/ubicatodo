<?php

namespace App\Controllers;

use App\Controllers\BaseController;
use CodeIgniter\HTTP\ResponseInterface;
use App\Models\DistritoModel;
use App\Models\CategoriaModel;
use App\Models\ServicioModel;


class Mapa extends BaseController
{
    public function index()
    {
        $distritos = new DistritoModel(); 

        $datos['distritos'] = $distritos->where('estado', 1)->findAll();           
        //Vista
        return view('html/head')
                .view('html/nav')
                .view('mapa/index-mapa', $datos)
                .view('html/foot');
    }

    //Mapa por distritos
    public function distrito($idd)
    {
        $iddistrito = $idd;

        $dist = new DistritoModel();
        $categoria = new CategoriaModel();
        $srv = new servicioModel();

        $distrito = $dist->find($iddistrito);
        $servicios = $srv->where('id_distrito', $idd)->findAll();
        $servicios_json = json_encode($servicios);

        //var_dump($distrito);
        

        $datos['distrito'] = $distrito;
        $datos['categoria'] = $categoria->findAll();
        $datos['servicios'] = $servicios_json;

        return view('html/head')
                .view('html/nav')
                .view('mapa/mapa-distrito', $datos)
                .view('html/foot', $datos);

    }

    public function servicio(){
        $request = service('request');
        $postData = $request->getPost();
        $serviciosAll = new ServicioModel();
        $servicio = $serviciosAll->servPorDistritoTipo($postData['distrito'], $postData['categoria']);
        $data['servicio'] = $servicio;
        return $this->response->setJSON($data);       
    }

    public function administrar(){
        return view('html/head')
                .view('html/nav')
                .view('mapa/administrar', $datos)
                .view('html/foot', $datos);

    }


}
