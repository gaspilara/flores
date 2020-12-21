<?php

//    require_once 'api/controller/api.product.controller.php';
    require_once 'api/controller/flower/flower.controller.php';
    require_once 'RouterClass.php';

    $r = new Router();

    $r->addRoute('flowers', 'GET', 'ApiProductController', 'getFlowers');
    // $r->addRoute('product/:ID', 'GET', 'ApiProductController', 'getProduct');
    // $r->addRoute('d-product/:ID', 'DELETE', 'ApiProductController', 'deleteProduct');
    // $r->addRoute('product', 'POST', 'ApiProductController', 'addProduct');
    // $r->addRoute('p-product/:ID', 'PUT', 'ApiProductController', 'updateProduct');

    $r->route($_GET['resource'], $_SERVER['REQUEST_METHOD']);

