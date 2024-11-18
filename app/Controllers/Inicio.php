<?php

namespace App\Controllers;

use App\Controllers\BaseController;
use CodeIgniter\HTTP\ResponseInterface;

class Inicio extends BaseController
{
    public function index()
    {
        
        //Vistas
        return view('html/head')
                .view('html/nav')
                .view('inicio/inicio')
                .view('html/foot');
        //return view('html/index');
    }
}
