<?php
define('__ROOT__', dirname(dirname(__FILE__)));

require_once(__ROOT__ . '/models/DatabaseModel.php');



class IncidentsModel
{
    //Add new incident
    public function addIncident($Road, $FromPlace, $ToPlace, $FromCoordinatesLat, $FromCoordinatesLon, $ToCoordinatesLat, $ToCoordinatesLon, $Reason, $StartTime, $StopTime, $Delay, $IncidentType, $Distance, $UpdateTime, $PolyLine)
    {
        $DB = new DB();
        $query = "INSERT INTO incidents (Road, FromPlace, ToPlace, FromCoordinatesLat, FromCoordinatesLon, ToCoordinatesLat, ToCoordinatesLon, Reason, StartTime, StopTime, Delay, IncidentType, Distance, UpdateTime, Polyline) 
              VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";

        $params = [
            $Road, $FromPlace, $ToPlace, $FromCoordinatesLat, $FromCoordinatesLon, $ToCoordinatesLat, $ToCoordinatesLon, $Reason, $StartTime, $StopTime, $Delay, $IncidentType, $Distance, $UpdateTime, $PolyLine
        ];

        $DB->insertData($query, $params);

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
        return $DB->receiveData("SELECT DISTINCT updatetime FROM incidents GROUP BY updatetime DESC;");

    }

    // GET the latest update time
    public function getLastUpdateTime(): string
    {
        $DB = new DB();
        return( $DB->receiveData("SELECT UpdateTime FROM incidents ORDER BY IncidentNumber DESC LIMIT 1 ")[0]["UpdateTime"]);
    }

}