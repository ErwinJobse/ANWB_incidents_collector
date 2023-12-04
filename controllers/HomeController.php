<?php

define('__ROOT__', dirname(dirname(__FILE__)));

require_once(__ROOT__ . '/models/IncidentsModel.php');

class HomeController
{
    public function index(): void
    {
        $IncidentsModel = new IncidentsModel();

        require_once 'views/home.php';
    }
}