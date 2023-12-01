<?php

define('__ROOT__', dirname(dirname(__FILE__)));

require_once(__ROOT__.'/config/setup.php');
require_once(__ROOT__.'/controllers/IncidentController.php');

$url = "https://api.anwb.nl/v2/incidents?apikey=" . $anwbApiKey . "&polylines=true&polylineBounds=true&totals=true";

$cURL = curl_init();

curl_setopt($cURL, CURLOPT_URL, $url);
curl_setopt($cURL, CURLOPT_HTTPGET, true);
curl_setopt($cURL, CURLOPT_RETURNTRANSFER, TRUE);
curl_setopt($cURL, CURLOPT_HTTPHEADER, array(
    'Content-Type: application/json',
    'Accept: application/json'
));
$incidents =  json_decode((curl_exec($cURL)), true);

$IncidentController = new IncidentController();

foreach ($incidents["roads"] as $road)
{
    foreach ($road["segments"] as $segment)
    {
        if (array_key_exists("jams", $segment)) {
            foreach ($segment["jams"] as $jam) {
                $IncidentController->addIncident(
                    $jam["road"],
                    $jam["from"],
                    $jam["to"],
                    $jam["fromLoc"]["lat"],
                    $jam["fromLoc"]["lon"],
                    $jam["toLoc"]["lat"],
                    $jam["toLoc"]["lon"],
                    $jam["reason"],
                    $jam["start"],
                    $jam["stop"],
                    $jam["delay"],
                    "jam",
                    $jam["distance"]);
            }
        }

        if (array_key_exists("roadworks", $segment))
        {
            foreach ($segment["roadworks"] as $roadworks)
            {
                $IncidentController->addIncident(
                    $roadworks["road"],
                    $roadworks["from"],
                    $roadworks["to"],
                    $roadworks["fromLoc"]["lat"],
                    $roadworks["fromLoc"]["lon"],
                    $roadworks["toLoc"]["lat"],
                    $roadworks["toLoc"]["lon"],
                    $roadworks["reason"],
                    $roadworks["start"],
                    $roadworks["stop"],
                    $roadworks["delay"],
                    "roadworks",
                    $jam["distance"]);
            }
        }
    }
 }
