<?php

namespace App\Controllers;

use App\Controllers\BaseController;
use CodeIgniter\HTTP\ResponseInterface;
use App\Models\DistritoModel;

class Mapa extends BaseController
{
    public function index()
    {


        //Vista
        return view('html/head')
                .view('html/nav')
                .view('mapa/index-mapa')
                .view('html/foot');
    }
}
