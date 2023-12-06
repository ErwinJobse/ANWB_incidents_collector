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

    //Load map
    public function map($updateTime): void
    {
        //$updateTime is being used in views/map.php
        $IncidentsModel = new IncidentsModel();

        require_once 'views/map.php';
    }


}