<?php

if (!defined('__ROOT__')) {
    define('__ROOT__', dirname(dirname(__FILE__)));
}

require_once(__ROOT__ . '/controllers/IncidentController.php');


class IncidentCollector
{
    /**
     * Adds new incidents
     *
     * @return void
     */
    function update(): void
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
        date_default_timezone_set($timeZone);
        $updateTime = date('Y-m-d H-i-s', time());

        foreach ($incidents["roads"] as $road) {
            foreach ($road["segments"] as $segment) {
                if (array_key_exists("jams", $segment)) {
                    foreach ($segment["jams"] as $jam) {
                        $IncidentController->addIncident(
                            $jam["road"] ?? null,
                            $jam["from"] ?? null,
                            $jam["to"] ?? null,
                            $jam["fromLoc"]["lat"] ?? null,
                            $jam["fromLoc"]["lon"] ?? null,
                            $jam["toLoc"]["lat"] ?? null,
                            $jam["toLoc"]["lon"] ?? null,
                            $jam["reason"] ?? null,
                            $this->convertTimeFormat($jam["start"] ?? null),
                            $this->convertTimeFormat($jam["stop"] ?? null),
                            $jam["delay"] ?? null,
                            "jam",
                            $jam["distance"] ?? null,
                            $updateTime ?? null,
                            $jam["polyline"] ?? null
                        );
                    }
                }

                if (array_key_exists("roadworks", $segment)) {
                    foreach ($segment["roadworks"] as $roadwork) {
                        $IncidentController->addIncident(
                            $roadwork["road"] ?? null,
                            $roadwork["from"] ?? null,
                            $roadwork["to"] ?? null,
                            $roadwork["fromLoc"]["lat"] ?? null,
                            $roadwork["fromLoc"]["lon"] ?? null,
                            $roadwork["toLoc"]["lat"] ?? null,
                            $roadwork["toLoc"]["lon"] ?? null,
                            $roadwork["reason"] ?? null,
                            $this->convertTimeFormat($roadwork["start"] ?? null),
                            $this->convertTimeFormat($roadwork["stop"] ?? null),
                            $roadwork["delay"] ?? null,
                            "roadworks",
                            $roadwork["distance"] ?? null,
                            $updateTime ?? null,
                            $roadwork["polyline"] ?? null
                        );
                    }
                }
            }
        }
    }

    /**
     * Converts the date and time to a format that fits in the database
     *
     * @param string $time The date and time to convert.
     *
     * @return string|null Returns the formatted date and time or null if empty
     */
    private function convertTimeFormat($time): ?string
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



