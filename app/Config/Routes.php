<?php

use CodeIgniter\Router\RouteCollection;

/**
 * @var RouteCollection $routes
 */
//$routes->get('/', 'Home::index');
$routes->get('/', 'Inicio::index');
$routes->get('/mapa', 'Mapa::index');
$routes->get('/mapa/distrito/(:num)', 'Mapa::distrito/$1');
$routes->get('/mapa/gettiposervicio', 'Mapa::gettiposervicio');
$routes->get('/mapa/getservicios', 'Mapa::getservicios');
$routes->get('/contacto', 'Contacto::index');
