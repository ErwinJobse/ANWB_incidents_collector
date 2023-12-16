<?php

if (!defined('__ROOT__')) {
    define('__ROOT__', dirname(dirname(__FILE__)));
}

require_once(__ROOT__ . '/models/DatabaseModel.php');

class IncidentsModel
{
    /**
     * Add new incident.
     *
     * @param string $road
     * @param string $fromPlace
     * @param string $toPlace
     * @param float  $fromCoordinatesLat
     * @param float  $fromCoordinatesLon
     * @param float  $toCoordinatesLat
     * @param float  $toCoordinatesLon
     * @param string $reason
     * @param string $startTime
     * @param string $stopTime
     * @param int    $delay
     * @param string $incidentType
     * @param float  $distance
     * @param string $updateTime
     * @param string $polyLine
     *
     * @return void
     */
    public function addIncident(
        string $road,
        string $fromPlace,
        string $toPlace,
        float $fromCoordinatesLat,
        float $fromCoordinatesLon,
        float $toCoordinatesLat,
        float $toCoordinatesLon,
        string $reason,
        string $startTime,
        string $stopTime,
        int $delay,
        string $incidentType,
        float $distance,
        string $updateTime,
        string $polyLine
    ): void {
        $DB = new DB();
        $query = "INSERT INTO incidents (Road, FromPlace, ToPlace, FromCoordinatesLat, FromCoordinatesLon, ToCoordinatesLat, ToCoordinatesLon, Reason, StartTime, StopTime, Delay, IncidentType, Distance, UpdateTime, Polyline) 
              VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";

        $params = [
            htmlspecialchars($road),
            htmlspecialchars($fromPlace),
            htmlspecialchars($toPlace),
            htmlspecialchars($fromCoordinatesLat),
            htmlspecialchars($fromCoordinatesLon),
            htmlspecialchars($toCoordinatesLat),
            htmlspecialchars($toCoordinatesLon),
            htmlspecialchars($reason),
            htmlspecialchars($startTime),
            htmlspecialchars($stopTime),
            htmlspecialchars($delay),
            htmlspecialchars($incidentType),
            htmlspecialchars($distance),
            htmlspecialchars($updateTime),
            htmlspecialchars($polyLine)
        ];

        $DB->insertData($query, $params);
    }

    /**
     * Get incident by update time
     *
     * @param string $updateTime
     *
     * @return false|array
     */
    public function getIncidentByUpdateTime(string $updateTime): false|array
    {
        $DB = new DB();
        $query = "SELECT * FROM incidents WHERE UpdateTime = ?";
        $params = [htmlspecialchars($updateTime)];

        return $DB->receiveData($query, $params);
    }

    /**
     * Get array list with update times of the incident data
     *
     * @return false|array
     */
    public function getUpdateTimeList(): false|array
    {
        $DB = new DB();
        $query = "SELECT DISTINCT updatetime FROM incidents GROUP BY updatetime DESC";

        return $DB->receiveData($query);
    }

    /**
     * Get the latest update time
     *
     * @return string|null
     */
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