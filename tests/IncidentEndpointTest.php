<?php

use PHPUnit\Framework\TestCase;

class IncidentEndpointTest extends TestCase
{
    // function to check if the value is a valid JSON string
    private function assertIsValidJson($value)
    {
        $decoded = json_decode($value);
        if ($decoded === null && json_last_error() !== JSON_ERROR_NONE) {
            $this->fail('Value is not a valid JSON string: ' . $value);
        }
        $this->assertTrue(true);
    }

    private function fetchExternalData($url)
    {
        $cURL = curl_init();

        curl_setopt($cURL, CURLOPT_URL, $url);
        curl_setopt($cURL, CURLOPT_HTTPGET, true);
        curl_setopt($cURL, CURLOPT_RETURNTRANSFER, TRUE);
        curl_setopt($cURL, CURLOPT_HTTPHEADER, array(
            'Content-Type: application/json',
            'Accept: application/json'
        ));

        $data = json_decode(curl_exec($cURL), true);

        if ($data === null && json_last_error() !== JSON_ERROR_NONE) {
            $this->fail('Error fetching data: ' . curl_error($cURL));
        }

        curl_close($cURL);
        return $data;
    }

    public function testFetchExternalData()
    {
        // Arrange
        $url = 'http://localhost:63342/ANWB_incidents_collector/api/IncidentEndpoint.php?Incident=latest';

        // Act
        $result = $this->fetchExternalData($url);

        // Assert
        $this->assertIsValidJson(json_encode($result));
        $this->assertNotEmpty($result);

        // Convert the provided JSON structure to a structure without specific values
        $expectedStructure = [
            'IncidentNumber',
            'Road',
            'FromPlace',
            'ToPlace',
            'FromCoordinatesLat',
            'FromCoordinatesLon',
            'ToCoordinatesLat',
            'ToCoordinatesLon',
            'Reason',
            'StartTime',
            'StopTime',
            'Delay',
            'IncidentType',
            'Distance',
            'UpdateTime',
            'Polyline',
        ];

        // Check that the result structure has the expected keys
        foreach ($result as $item) {
            foreach ($expectedStructure as $key) {
                $this->assertArrayHasKey($key, $item);
            }
        }
    }
}