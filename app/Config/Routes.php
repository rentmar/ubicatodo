<?php

use CodeIgniter\Router\RouteCollection;

/**
 * @var RouteCollection $routes
 */
//$routes->get('/', 'Home::index');
$routes->get('/', 'Inicio::index');
$routes->get('mapa', 'Mapa::index');
$routes->get('mapa/distrito/(:num)', 'Mapa::distrito/$1');


$routes->post('mapa/servicios', 'Mapa::servicio');