<?php

define('__ROOT__', dirname(dirname(__FILE__)));

require_once(__ROOT__.'/models/IncidentsModel.php');


class IncidentController
{
    //Add Incident and sanitize input
    public function addIncident($Road, $FromPlace, $ToPlace, $FromCoordinatesLat, $FromCoordinatesLon, $ToCoordinatesLat, $ToCoordinatesLon, $Reason, $StartTime, $StopTime, $Delay, $IncidentType, $Distance){
        $IncidentModel = new IncidentsModel();
        $IncidentModel->
            addIncident(htmlspecialchars($Road),
            htmlspecialchars($FromPlace),
            htmlspecialchars($ToPlace),
            htmlspecialchars($FromCoordinatesLat),
            htmlspecialchars($FromCoordinatesLon),
            htmlspecialchars($ToCoordinatesLat),
            htmlspecialchars($ToCoordinatesLon),
            htmlspecialchars($Reason),
            htmlspecialchars($StartTime),
            htmlspecialchars($StopTime),
            htmlspecialchars($Delay),
            htmlspecialchars($IncidentType),
            htmlspecialchars($Distance));
    }


}