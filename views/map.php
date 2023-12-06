<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Accident Routes Map</title>
    <style>
        #map {
            height: 1500px;
        }
    </style>

    <!-- Include Mapbox GL JS stylesheet -->
    <link href='https://api.mapbox.com/mapbox-gl-js/v2.15.0/mapbox-gl.css' rel='stylesheet' />
    <script src='https://api.mapbox.com/mapbox-gl-js/v2.15.0/mapbox-gl.js'></script>


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


</body>
</html>


