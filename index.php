<?php
require_once 'controllers/HomeController.php';



//Load homepage
$controller = new HomeController();

if ($_SERVER['REQUEST_METHOD'] === 'GET') {
    if (isset($_GET['map'])) {

        $controller->map($_GET['map']);

    } else{
        $controller->index();
    }

    } else{
    $controller->index();

}
