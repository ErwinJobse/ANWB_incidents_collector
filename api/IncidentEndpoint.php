<?php


define('__ROOT__', dirname(dirname(__FILE__)));
require_once(__ROOT__ . '/controllers/IncidentController.php');

header('Content-Type: application/json');

if ($_SERVER['REQUEST_METHOD'] === 'GET') {
    $IncidentController = new IncidentController();

    // Get incident by updateTime
    if (isset($_GET['Incident'])) {
        $specificUpdateTime = $_GET['Incident'];
        $result = $IncidentController->getIncidentByUpdateTime($specificUpdateTime);

        // If no specific incident found, get the latest incidents
        if ($result === null) {
            $result = $IncidentController->getLastIncidents();
        }
    }
    // Get list of update times
    elseif (isset($_GET['UpdateTime'])) {
        $result = $IncidentController->getUpdateTimeList();
    }
    // Get latest incidents
    elseif (isset($_GET['latest'])) {
        $result = $IncidentController->getLastIncidents();
    }
    // No valid query parameter provided
    else {
        $result = null;
    }
}

// Return results
echo(json_encode($result));

?>
