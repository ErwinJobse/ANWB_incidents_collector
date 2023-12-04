<?php
define('__ROOT__', dirname(dirname(__FILE__)));

require_once(__ROOT__ . '/models/DatabaseModel.php');



class IncidentsModel
{

    public function addIncident($Road, $FromPlace, $ToPlace, $FromCoordinatesLat, $FromCoordinatesLon, $ToCoordinatesLat, $ToCoordinatesLon, $Reason, $StartTime, $StopTime, $Delay, $IncidentType, $Distance, $UpdateTime)
    {
        $_DB = new DB();
        $_DB->insertData("INSERT INTO incidents (Road, FromPlace, ToPlace, FromCoordinatesLat, FromCoordinatesLon,ToCoordinatesLat, ToCoordinatesLon, Reason, StartTime, StopTime, Delay, IncidentType, Distance, UpdateTime) 
        VALUES ('" . $Road . "','" . $FromPlace . "','" . $ToPlace . "','" . $FromCoordinatesLat . "','" . $FromCoordinatesLon . "','" . $ToCoordinatesLat . "','" . $ToCoordinatesLon . "','" . $Reason . "','" . $StartTime . "','" . $StopTime . "','" . $Delay . "','" . $IncidentType . "','" . $Distance . "','" . $UpdateTime . "')");
    }

    public function getIncidentByUpdateTime($UpdateTime): false|array
    {
        $_DB = new DB();
        return $_DB->receiveData("SELECT * FROM incidents WHERE UpdateTime = '" . $UpdateTime . "';");

    }

    public function getUpdateTimeList(): false|array
    {
        $_DB = new DB();
        return $_DB->receiveData("SELECT DISTINCT updatetime FROM incidents GROUP BY updatetime;");

    }

    public function getLastUpdateTime(): string
    {
        $_DB = new DB();
        return( $_DB->receiveData("SELECT UpdateTime FROM incidents ORDER BY IncidentNumber DESC LIMIT 1 ")[0]["UpdateTime"]);
    }

}