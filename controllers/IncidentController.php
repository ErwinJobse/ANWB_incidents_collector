<?php

if (!defined('__ROOT__')) {
    define('__ROOT__', dirname(dirname(__FILE__)));
}

require_once(__ROOT__ . '/models/IncidentsModel.php');


class IncidentController
{
    // Add new Incident
    public function addIncident(
        ?string $road,
        ?string $fromPlace,
        ?string $toPlace,
        ?float $fromCoordinatesLat,
        ?float $fromCoordinatesLon,
        ?float $toCoordinatesLat,
        ?float $toCoordinatesLon,
        ?string $reason,
        ?string $startTime,
        ?string $stopTime,
        ?int $delay,
        ?string $incidentType,
        ?float $distance,
        ?string $updateTime,
        ?string $polyline
    ): void {
        $incidentModel = new IncidentsModel();

        // Set default values if parameters are empty
        $delay = $delay ?? 0;
        $startTime = $startTime ?? "0000-00-0 00:00:00";
        $stopTime = $stopTime ?? "0000-00-0 00:00:00";
        $distance = $distance ?? 0;

        // Sanitize input
        $incidentModel->addIncident(
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
            htmlspecialchars($polyline)
        );
    }

    // Get Incident by update time
    public function getIncidentByUpdateTime(string $updateTime): array
    {
        $incidentModel = new IncidentsModel();

        if (!empty($updateTime)) {
            return $incidentModel->getIncidentByUpdateTime(htmlspecialchars($updateTime));
        }

        return $this->getLastIncidents();
    }

    // Get the latest Incidents
    public function getLastIncidents(): array
    {
        $incidentModel = new IncidentsModel();
        return $this->getIncidentByUpdateTime($incidentModel->getLastUpdateTime());
    }

    // Get the latest update time
    public function getUpdateTimeList(): array
    {
        $incidentModel = new IncidentsModel();
        return $incidentModel->getUpdateTimeList();
    }
}