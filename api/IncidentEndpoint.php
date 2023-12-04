<?php


define('__ROOT__', dirname(dirname(__FILE__)));
require_once(__ROOT__ . '/controllers/IncidentController.php');

header('Content-Type: application/json');

if ($_SERVER['REQUEST_METHOD'] === 'GET') {
    if (isset($_GET['Incident'])) {
        $IncidentController = new IncidentController();
        $specificUpdateTime = $_GET['Incident'];
        $Incidents = $IncidentController->getIncidentByUpdateTime($specificUpdateTime);
        if (!$Incidents == NULL) {
            $result = $Incidents;
        } else {
            $IncidentController = new IncidentController();
            $result = $IncidentController->getLastIncidents();
        }
    } elseif (isset($_GET['UpdateTime'])) {
        $IncidentController = new IncidentController();
        $result = $IncidentController->getUpdateTimeList();


    } elseif (isset($_GET['latest'])) {
        $IncidentController = new IncidentController();
        $result = $IncidentController->getLastIncidents();

    } else {
        $result = null;
    }

}


echo(json_encode($result));


?>

