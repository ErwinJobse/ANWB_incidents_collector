<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Incidents collector overview</title>

    <link rel="stylesheet" href="../CSS/table.css">
    <script src="../JS/table.js"></script>
</head>
<body>
<h1>ANWB incidents collector</h1>
<p>Overview</p>


<a id="mapLink" href="index.php?map=latest">View on map</a>

<h1>Incidents Table</h1>


<label for="updateTimeSlider">Change update time</label>
<input type="range" id="updateTimeSlider" min="0" max="100" step="1" value="">

<table id="incidentsTable">
    <thead>
    <tr>
        <th>Incident Number</th>
        <th>Road</th>
        <th>From Place</th>
        <th>To Place</th>
        <th>From Coordinates latitude</th>
        <th>From Coordinates longitude</th>
        <th>To Coordinates latitude</th>
        <th>To Coordinates longitude</th>
        <th>Reason</th>
        <th>Start Time</th>
        <th>Stop Time</th>
        <th>Delay in seconds</th>
        <th>Incident Type</th>
        <th>Distance</th>
        <th>Update Time</th>
        <th>Polyline</th>
    </tr>
    </thead>
    <tbody></tbody>
</table>
<script>

</script>


</body>
</html>