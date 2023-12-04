<?php
define('__ROOT__', dirname(dirname(__FILE__)));

require_once(__ROOT__ . '/models/DatabaseModel.php');



class IncidentsModel
{
    //Add new incident
    public function addIncident($Road, $FromPlace, $ToPlace, $FromCoordinatesLat, $FromCoordinatesLon, $ToCoordinatesLat, $ToCoordinatesLon, $Reason, $StartTime, $StopTime, $Delay, $IncidentType, $Distance, $UpdateTime)
    {
        $DB = new DB();
        $DB->insertData("INSERT INTO incidents (Road, FromPlace, ToPlace, FromCoordinatesLat, FromCoordinatesLon,ToCoordinatesLat, ToCoordinatesLon, Reason, StartTime, StopTime, Delay, IncidentType, Distance, UpdateTime) 
        VALUES ('" . $Road . "','" . $FromPlace . "','" . $ToPlace . "','" . $FromCoordinatesLat . "','" . $FromCoordinatesLon . "','" . $ToCoordinatesLat . "','" . $ToCoordinatesLon . "','" . $Reason . "','" . $StartTime . "','" . $StopTime . "','" . $Delay . "','" . $IncidentType . "','" . $Distance . "','" . $UpdateTime . "')");
    }
    // Get incident by update time
    public function getIncidentByUpdateTime($UpdateTime): false|array
    {
        $DB = new DB();
        return $DB->receiveData("SELECT * FROM incidents WHERE UpdateTime = '" . $UpdateTime . "';");

    }

    // GET array list with update times of the incident data
    public function getUpdateTimeList(): false|array
    {
        $DB = new DB();
        return $DB->receiveData("SELECT DISTINCT updatetime FROM incidents GROUP BY updatetime;");

    }

    // GET the latest update time
    public function getLastUpdateTime(): string
    {
        $DB = new DB();
        return( $DB->receiveData("SELECT UpdateTime FROM incidents ORDER BY IncidentNumber DESC LIMIT 1 ")[0]["UpdateTime"]);
    }

}