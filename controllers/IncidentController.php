<?php

if (!defined('__ROOT__')) {
    define('__ROOT__', dirname(dirname(__FILE__)));
}

require_once(__ROOT__ . '/models/IncidentsModel.php');


class IncidentController
{

    //Add new Incident
    public function addIncident($Road, $FromPlace, $ToPlace, $FromCoordinatesLat, $FromCoordinatesLon, $ToCoordinatesLat, $ToCoordinatesLon, $Reason, $StartTime, $StopTime, $Delay, $IncidentType, $Distance, $UpdateTime, $Polyline): void
    {
        $IncidentModel = new IncidentsModel();

        //Set value to zero('s) if is empty
        if (($Delay == "")) {
            $Delay = "0";
        }
        if (($StartTime == "")) {
            $StartTime = "0000-00-0 00:00:00";
        }
        if (($StopTime == "")) {
            $StopTime = "0000-00-0 00:00:00";
        }
        if (($Distance == "")) {
            $Distance = "0";
        }

        //sanitize input
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
            htmlspecialchars($Distance),
            htmlspecialchars($UpdateTime),
            htmlspecialchars($Polyline));
    }

    // Get Incident by update time
    public function getIncidentByUpdateTime($UpdateTime): array
    {
        $IncidentModel = new IncidentsModel;

        if (!$UpdateTime == "") {

            return ($IncidentModel->getIncidentByUpdateTime($UpdateTime));
        }

        return $this->getLastIncidents();

    }

    // Get the latest Incidents
    public function getLastIncidents(): array
    {

        $IncidentModel = new IncidentsModel();
        return ($this->getIncidentByUpdateTime($IncidentModel->getLastUpdateTime()));


    }

    // GET the latest update time
    public function getUpdateTimeList(): array
    {
        $IncidentModel = new IncidentsModel();

        return ($IncidentModel->getUpdateTimeList());

    }


}