<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Accident Routes Map</title>

    <!--  Mapbox GL  -->
    <link href='https://api.mapbox.com/mapbox-gl-js/v2.15.0/mapbox-gl.css' rel='stylesheet'/>

    <link href='../CSS/map.css' rel='stylesheet'/>

</head>
<body>

<h1>Accident Routes Map</h1>
<p>Map Update Time: <?php echo $updateTime ?></p>

<div id="map"></div>

<script>
    //$updatetime is used from controllers/Homecontroller.php
    var updateTime = <?= json_encode($updateTime, JSON_UNESCAPED_UNICODE); ?>;

</script>

<script src="../JS/map.js" defer></script>

<P>
    Yellow = Jam, less than 300 second <br>
    orange = Jam, Between 300 and 600 seconds<br>
    Red = Jam, Langer dan 600 seconds <br>
    Blue = Current roadworks <br>
    light grey = Roadworks in the past or future <br>
    Dark grey = Something else
</P>

</body>
</html>


