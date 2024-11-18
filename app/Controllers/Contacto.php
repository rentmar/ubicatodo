<?php

namespace App\Controllers;

use App\Controllers\BaseController;
use CodeIgniter\HTTP\ResponseInterface;

class Contacto extends BaseController
{
    public function index()
    {
        
        //Vistas
        return view('html/head')
                .view('html/nav')
                .view('contacto/index-contacto')
                .view('html/foot');
    }
}
