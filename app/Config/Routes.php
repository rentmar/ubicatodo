<?php

use CodeIgniter\Router\RouteCollection;

/**
 * @var RouteCollection $routes
 */
//$routes->get('/', 'Home::index');
$routes->get('/', 'Inicio::index');
$routes->get('mapa', 'Mapa::index');
$routes->get('mapa/distrito/(:num)', 'Mapa::distrito/$1');
$routes->get('mapa/administrar', 'Mapa::administrar');
$routes->get('mapa/nuevoServicio', 'Mapa::nuevoServicio');


$routes->post('mapa/crear', 'Mapa::crear');
$routes->post('mapa/servicios', 'Mapa::servicio');