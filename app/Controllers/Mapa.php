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

        $distrito = $dist->find($iddistrito);
        
        $datos['distrito'] = $distrito;
        $datos['categoria'] = $categoria->findAll();

        return view('html/head')
                .view('html/nav')
                .view('mapa/mapa-distrito', $datos)
                .view('html/foot');

    }


    //Funcion json
    //Datos json Tipos de plenaria nacional
	public function gettiposervicio()
	{
        $json = array();
        $servicios = new ServicioModel();

        $d = $this->request->getPost('d');       
        $c = $this->request->getPost('c');
        $json = $servicios->srvPorDistCat($d, $c);

        header('Content-Type: application/json');
		echo json_encode($json);
        
		//$json = array();
        //$servicios = new ServicioModel();

        //$d = $this->request->getPost('d');       
        //$c = $this->request->getPost('categoria');
        //$json = $servicios->srvPorDistCat($d, 2);  

        //$categoria = new CategoriaModel();
        //$json = $categoria->findAll();

		//$instancia = $this->input->post('instancia');
		//$json = $this->TPlenaria_model->leerTPlenariaPorISeguimiento($instancia);
		
        //header('Content-Type: application/json');
		//echo json_encode($json);
	}

    //Servicios segun su categoria
    public function getservicios()
    {
        $srvs = new ServicioModel();
        
        $s = $srvs->servPorDistritoTipo(1, 1);
        var_dump($s);

        
        
        
        /*$json = array();

        header('Content-Type: application/json');
		echo json_encode($json);*/
    }
}
