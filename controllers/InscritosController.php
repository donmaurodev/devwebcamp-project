<?php

namespace Controllers;

use MVC\Router;

class InscritosController {

    public static function index(Router $router) {
        $router->render('admin/inscritos/index', [
            'titulo' => 'Usuarios Inscritos'
        ]);
    }
}