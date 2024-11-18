<?php

use CodeIgniter\Router\RouteCollection;

/**
 * @var RouteCollection $routes
 */
//$routes->get('/', 'Home::index');
$routes->get('/', 'Inicio::index');
$routes->get('/mapa', 'Mapa::index');
$routes->get('/contacto', 'Contacto::index');