<?php
require_once 'controllers/HomeController.php';


//Load homepage
$controller = new HomeController();

if ($_SERVER['REQUEST_METHOD'] === 'GET') {

    //load page with map of incidents
    if (isset($_GET['map'])) {

        $controller->map($_GET['map']);

    } else {
        //Load page with table of incidents
        $controller->table();
    }

}