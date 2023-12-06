<?php

define('__ROOT__', dirname(dirname(__FILE__)));

require_once(__ROOT__ . '/controllers/IncidentController.php');


class IncidentCollector
{
    // Adds new incidents
    function update()
    {
        include(__ROOT__ . '/config/setup.php');

        $url = "https://api.anwb.nl/v2/incidents?apikey=" . $anwbApiKey . "&polylines=true&polylineBounds=true&totals=true";

        $cURL = curl_init();

        curl_setopt($cURL, CURLOPT_URL, $url);
        curl_setopt($cURL, CURLOPT_HTTPGET, true);
        curl_setopt($cURL, CURLOPT_RETURNTRANSFER, TRUE);
        curl_setopt($cURL, CURLOPT_HTTPHEADER, array(
            'Content-Type: application/json',
            'Accept: application/json'
        ));
        $incidents = json_decode((curl_exec($cURL)), true);


        $IncidentController = new IncidentController();

        // GET current time
        $updateTime = date('Y-m-d h-i-s', time());

        foreach ($incidents["roads"] as $road) {
            foreach ($road["segments"] as $segment) {
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
                            $this->convertTimeFormat($jam["start"]),
                            $this->convertTimeFormat($jam["stop"]),
                            $jam["delay"],
                            "jam",
                            $jam["distance"],
                            $updateTime,
                            $jam["polyline"]);
                    }
                }

                if (array_key_exists("roadworks", $segment)) {
                    foreach ($segment["roadworks"] as $roadwork) {
                        $IncidentController->addIncident(

                            $roadwork["road"],
                            $roadwork["from"],
                            $roadwork["to"],
                            $roadwork["fromLoc"]["lat"],
                            $roadwork["fromLoc"]["lon"],
                            $roadwork["toLoc"]["lat"],
                            $roadwork["toLoc"]["lon"],
                            $roadwork["reason"],
                            $this->convertTimeFormat($roadwork["start"]),
                            $this->convertTimeFormat($roadwork["stop"]),
                            $roadwork["delay"],
                            "roadworks",
                            $roadwork["distance"],
                            $updateTime,
                            $roadwork["polyline"]);
                    }
                }
            }
        }
    }

    //Converts the date and time to a format that fits in the database
    private function convertTimeFormat($time)
    {
        //checks if not empty
        if (!$time == "") {
            $inputDateTime = new DateTime($time);
            $formattedDateTime = $inputDateTime->format("Y-m-d H:i:s");

            return $formattedDateTime;


        } else {
            return NULL;
        }
    }

}



$IncidentCollector = new IncidentCollector();
$IncidentCollector->update();



