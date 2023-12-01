<?php

define('__ROOT__', dirname(dirname(__FILE__)));

require_once(__ROOT__.'/models/IncidentsModel.php');

class HomeController {
    public function index() {
       $IncidentsModel = new IncidentsModel();
       $test = $IncidentsModel->test();

        require_once 'views/home.php';
    }
}