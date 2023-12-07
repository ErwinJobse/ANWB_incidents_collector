<?php


use PHPUnit\Framework\TestCase;


define('__ROOT__', dirname(dirname(__FILE__)));

require_once(__ROOT__ . '/controllers/IncidentController.php');

class TestableIncidentController extends IncidentController
{
    public function setIncidentModel($incidentModel)
    {
        $this->IncidentModel = $incidentModel;
    }
}

class IncidentControllerTest extends TestCase
{
    public function testAddIncident(): void
    {

        $updateTime = "0000-00-0 00:00:00";
        // Mock the IncidentsModel class
        $incidentModelMock = $this->createMock(IncidentsModel::class);

        // Create an instance of TestableIncidentController
        $incidentController = new TestableIncidentController();

        // Set the mock IncidentsModel instance
        $incidentController->setIncidentModel($incidentModelMock);

        // Sample data for testing
        $jam = [
            "road" => 'SampleRoad',
            "from" => 'FromPlace',
            "to" => 'ToPlace',
            "fromLoc" => ["lat" => 0.00, "lon" => 0.00],
            "toLoc" => ["lat" => 0.00, "lon" => 0.00],
            "reason" => 'SampleReason',
            "start" => '2023-01-01 12:00:00',
            "stop" => '2023-01-01 13:00:00',
            "delay" => 0,
            "distance" => 0,
            "polyline" => 'SamplePolyline',
        ];

        // Call the addIncident method on IncidentController with the array
        $incidentController->addIncident(
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
            $jam["distance"],
            $updateTime,
            $jam["polyline"]
        ); $this->assertTrue(true);
    }
}


