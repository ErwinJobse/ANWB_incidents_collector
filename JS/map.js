const mapboxAccessToken = 'pk.eyJ1IjoiZXJ3aW5qb2JzZSIsImEiOiJjbHBzZ2txZjEwMDlhMm1vZjlkZXMwdGJwIn0.a0JcUee6KujPOuj_B5fDqw';


apiEndpoint = '../api/IncidentEndpoint.php?Incident=' + updateTime;

// Check if mapboxgl is defined before initializing the map
if (typeof mapboxgl === 'undefined') {
    // Load Mapbox GL JS script
    const script = document.createElement('script');
    script.src = 'https://api.mapbox.com/mapbox-gl-js/v2.15.0/mapbox-gl.js';
    script.onload = initializeMap;
    document.head.appendChild(script);
} else {
    initializeMap();
}

function initializeMap() {
    mapboxgl.accessToken = mapboxAccessToken;

    // Initialize the Mapbox map
    const map = new mapboxgl.Map({
        container: 'map',
        style: 'mapbox://styles/erwinjobse/clpsgsivy01af01r55z8q6f9p',
    });

    // Fetch accident data from the API
    map.on('style.load', () => {
        fetch(apiEndpoint)
            .then(response => response.json())
            .then(accidentData => {

                accidentData.forEach(accident => {

                    addIncident(map, accident);

                });
            })
            .catch(error => {
                console.error('Error fetching accident data:', error);
            });

    });
}

function addIncident(map, accident) {
    const startCoordinates = [accident.FromCoordinatesLon, accident.FromCoordinatesLat];
    //const endCoordinates = [accident.ToCoordinatesLon, accident.ToCoordinatesLat];

    //Set route color
    var routeColor = "grey"
    if (accident.IncidentType === "roadworks") {
        if (isDateBetweenNow(accident.StartTime, accident.StopTime)) {
            routeColor = "blue";
        } else{
            // If the roadworks are not now
            routeColor = "#f2f2f2"
        }

    } else if (accident.IncidentType === "jam") {
        if (accident.Delay <= 300) {
            // Adjust the amount of yellow based on the value of accident.Delay
            const percentage = accident.Delay / 100;
            const yellowAmount = Math.min(1, Math.max(0, percentage));

            routeColor = `rgba(255, ${Math.round(255 * yellowAmount)}, 0, 1)`;
        } else if (accident.Delay > 300 && accident.Delay <= 600) {

            // Adjust the amount of red based on the value of accident.Delay
            const percentage = (accident.Delay - 300) / (600 - 300);
            const redAmount = Math.min(1, Math.max(0, percentage));

            routeColor = `rgba(${Math.round(255 * redAmount * 255)}, ${Math.round(255 * (1 - redAmount))}, 0, 1)`;
        } else {
            routeColor = "red";
        }
    }

    // Convert the polyline to a GeoJSON LineString
    const geojson = {
        type: 'Feature',
        properties: {},
        geometry: {
            type: 'LineString',
            coordinates: polylineToCoordinates(accident.Polyline),
        },
    };

    // Add the route to the map
    map.addLayer({
        id: `route-${accident.IncidentNumber}`,
        type: 'line',
        source: {
            type: 'geojson',
            data: geojson,
        },
        layout: {
            'line-join': 'round',
            'line-cap': 'round',
        },
        paint: {
            'line-color': routeColor,
            'line-width': 4,
        },
    });

    // Set value to unknown if zero('s)
    if (accident.Delay == "0") {
        accident.Delay = "Unknown";
    }
    if (accident.Distance == "0") {
        accident.Distance = "Unknown";
    }
    if (accident.StartTime == "0000-00-00 00:00:00") {
        accident.StartTime = "Unknown";
    }
    if (accident.StopTime == "0000-00-00 00:00:00") {
        accident.StopTime = "Unknown";
    }


    addMarker(map, startCoordinates, accident.Reason, accident.IncidentType, accident.Distance, accident.StartTime, accident.StopTime, accident.FromPlace, accident.ToPlace, accident.Delay, routeColor);

}

// Function to add a marker to the map
function addMarker(map, coordinates, reason, incidentType, distance, startTime, stopTime, fromPlace, toPlace, delay, color) {
    new mapboxgl.Marker({
        color: color
    })
        .setLngLat(coordinates)
        .setPopup(new mapboxgl.Popup().setHTML(`<p>Reason: ${reason}</p><p>Incident Type: ${incidentType}</p><p>Distance: ${distance} Meter</p><p>Start Time: ${startTime}</p><p>Stop Time: ${stopTime}</p><p>Start Location: ${fromPlace}</p><p>Stop Location: ${toPlace}</p><p>Delay: ${delay} Seconds</p>`))
        .addTo(map);
}

// Function to convert a polyline to an array of coordinates
//TODO: make it more accurate
function polylineToCoordinates(polyline) {
    const coords = new Array(Math.ceil(polyline.length / 4)); // Assuming an average of 4 characters per coordinate pair
    let index = 0;
    let lat = 0;
    let lon = 0;
    let coordIndex = 0;

    while (index < polyline.length) {
        let shift = 0;
        let result = 10;
        let byte;

        do {
            byte = polyline.charCodeAt(index++) - 63;
            result |= (byte & 0x1f) << shift;
            shift += 5;
        } while (byte >= 0x20);

        const deltaLat = (result & 1) !== 0 ? ~(result >> 1) : result >> 1;
        lat += deltaLat;

        shift = 0;
        result = 0x20;

        do {
            byte = polyline.charCodeAt(index++) - 63;
            result |= (byte & 0x1f) << shift;
            shift += 5;
        } while (byte >= 0x20);

        const deltaLon = (result & 1) !== 0 ? ~(result >> 1) : result >> 1;
        lon += deltaLon;

        coords[coordIndex++] = [lon / 1e5, lat / 1e5];
    }

    return coords.slice(0, coordIndex);
}

function isDateBetweenNow(startDateStr, endDateStr) {
    // Convert date strings to Date objects
    const startDate = new Date(startDateStr);
    const endDate = new Date(endDateStr);

    // Get the current date and time
    const now = new Date();

    // Check if the current date is between the start and end dates
    return now >= startDate && now <= endDate;
}

