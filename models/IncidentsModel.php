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
        $query = "SELECT * FROM incidents WHERE UpdateTime = ?";
        $params = [$UpdateTime];

        return $DB->receiveData($query, $params);
    }

    // GET array list with update times of the incident data
    public function getUpdateTimeList(): false|array
    {
        $DB = new DB();
        $query = "SELECT DISTINCT updatetime FROM incidents GROUP BY updatetime DESC";

        return $DB->receiveData($query);
    }

    // GET the latest update time
    public function getLastUpdateTime(): string|null
    {
        $DB = new DB();
        $query = "SELECT UpdateTime FROM incidents ORDER BY IncidentNumber DESC LIMIT 1";

        $result = $DB->receiveData($query);

        if (!empty($result)) {
            return $result[0]["UpdateTime"];
        } else {
            return null;
        }
    }

}