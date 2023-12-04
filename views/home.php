
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Incidents collector overview</title>

    <link rel="stylesheet" href="../CSS/style.css">
    <script src="../JS/script.js"></script>
</head>
<body>
<h1>ANWB incidents collector</h1>
<p>Overview</p>


<h1>Incidents Table</h1>

<label for="updateTimeSelect">Select UpdateTime:</label>
<select id="updateTimeSelect">
    <option value="latest">Latest</option>
</select>

<table id="incidentsTable">
    <thead>
    <tr>
        <th>IncidentNumber</th>
        <th>Road</th>
        <th>FromPlace</th>
        <th>ToPlace</th>
        <th>FromCoordinatesLat</th>
        <th>FromCoordinatesLon</th>
        <th>ToCoordinatesLat</th>
        <th>ToCoordinatesLon</th>
        <th>Reason</th>
        <th>StartTime</th>
        <th>StopTime</th>
        <th>Delay in seconds</th>
        <th>IncidentType</th>
        <th>Distance</th>
        <th>UpdateTime</th>
    </tr>
    </thead>
    <tbody></tbody>
</table>
<script>

</script>


</body>
</html>