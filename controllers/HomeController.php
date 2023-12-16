<?php

if (!defined('__ROOT__')) {
    define('__ROOT__', dirname(dirname(__FILE__)));
}

require_once(__ROOT__ . '/models/IncidentsModel.php');

class HomeController
{
    public function table(): void
    {
        $IncidentsModel = new IncidentsModel();

        require_once 'views/table.php';
    }

    //Load map
    public function map(string $updateTime): void
    {
        //$updateTime is being used in views/map.php
        $IncidentsModel = new IncidentsModel();

        require_once 'views/map.php';
    }


}