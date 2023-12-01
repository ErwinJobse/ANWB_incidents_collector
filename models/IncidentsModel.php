<?php
define('__ROOT__', dirname(dirname(__FILE__)));

require_once(__ROOT__.'/models/databaseModel.php');

$_DB = new DB();

class IncidentsModel {
    public function test() {
        return "it works";
    }

    public function addIncident($Road, $FromPlace, $ToPlace, $FromCoordinatesLat, $FromCoordinatesLon, $ToCoordinatesLat, $ToCoordinatesLon, $Reason, $StartTime, $StopTime, $Delay, $IncidentType, $Distance){
        global $_DB;
        $_DB->insertData("INSERT INTO incident (Road, FromPlace, ToPlace, FromCoordinatesLat, FromCoordinatesLon,ToCoordinatesLat, ToCoordinatesLon, Reason, StartTime, StopTime, Delay, IncidentType, Distance) 
        VALUES ('" . $Road . "','"  . $FromPlace . "','" . $ToPlace . "','" . $FromCoordinatesLat . "','" . $FromCoordinatesLon . "','" . $ToCoordinatesLat . "','" . $ToCoordinatesLon . "','" . $Reason . "','".  $StartTime . "','" . $StopTime . "','" . $Delay . "','" . $IncidentType . "','" . $Distance . "')");
    }
}