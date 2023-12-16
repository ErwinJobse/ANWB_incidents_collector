<?php

if (!defined('__ROOT__')) {
    define('__ROOT__', dirname(dirname(__FILE__)));
}

require_once(__ROOT__ . '/models/IncidentsModel.php');

class HomeController
{
    /**
     * Displays the incident table.
     *
     * @return void
     */
    public function table(): void
    {
        $IncidentsModel = new IncidentsModel();

        require_once 'views/table.php';
    }

    /**
     * Loads the map with incidents based on the provided update time.
     *
     * @param string $updateTime The update time to filter incidents on the map.
     *
     * @return void
     */
    public function map(string $updateTime): void
    {
        //$updateTime is being used in views/map.php
        $IncidentsModel = new IncidentsModel();

        require_once 'views/map.php';
    }
}