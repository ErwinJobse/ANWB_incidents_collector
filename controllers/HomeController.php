<?php

require_once 'models/IncidentsModel.php';

class HomeController {
    public function index() {
       $IncidentsModel = new IncidentsModel();
       $test = $IncidentsModel->test();

        require_once 'views/home.php';
    }
}