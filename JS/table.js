document.addEventListener("DOMContentLoaded", function () {

    let data;

    const updateTimeSlider = document.getElementById('updateTimeSlider');
    const incidentsTable = document.getElementById('incidentsTable');

    var mapLink = document.getElementById("mapLink");

    // Fetch data for the slider
    fetch('../api/IncidentEndpoint.php?UpdateTime')
        .then(response => response.json())
        .then(apiData => {
            // Check if data is defined and has the expected properties
            if (apiData && Array.isArray(apiData)) {
                // Set max value for the slider based on the number of distinct times
                updateTimeSlider.max = apiData.length - 1;

                // Load latest time
                const defaultTimeIndex = 0;
                const defaultTime = 'latest';
                updateTimeSlider.value = defaultTimeIndex;
                fetch(`../api/IncidentEndpoint.php?Incident=${defaultTime}`)
                    .then(response => response.json())
                    .then(incidentsData => {
                        if (incidentsData && Array.isArray(incidentsData)) {
                            populateTable(incidentsData);
                        } else {
                            console.error('Invalid data format for incidents');
                        }
                    })
                    .catch(error => {
                        console.error('Error fetching data:', error);
                    });
            } else {
                console.error('Invalid data format');
            }
            // Assign apiData to the global data variable
            data = apiData;
        })
        .catch(error => {
            console.error('Error fetching data:', error);
        });


    updateTimeSlider.addEventListener('input', function () {
        const selectedTimeIndex = updateTimeSlider.value;
        const selectedTime = data[selectedTimeIndex]["updatetime"];

        fetch(`../api/IncidentEndpoint.php?Incident=${selectedTime}`)
            .then(response => response.json())
            .then(incidentsData => {
                // Check if data is defined and has the expected properties
                if (incidentsData && Array.isArray(incidentsData)) {

                    //change link to map to current table
                    mapLink.href = "index.php?map=" + selectedTime;
                    populateTable(incidentsData);

                } else {
                    console.error('Invalid data format for incidents');
                }
            })
            .catch(error => {
                console.error('Error fetching data:', error);
            });
    });

    // Fill table with incidents
    function populateTable(incidents) {
        const tableBody = incidentsTable.querySelector('tbody');
        tableBody.innerHTML = ''; // Clear existing rows

        incidents.forEach(incident => {
            const row = document.createElement('tr');
            Object.entries(incident).forEach(([key, value]) => {
                const cell = document.createElement('td');

                // Skip displaying the cell if the value is 0 or "0000-00-00 00:00:00"
                cell.textContent = (value === 0 || value === "0000-00-00 00:00:00") ? '' : value;

                row.appendChild(cell);
            });
            tableBody.appendChild(row);
        });
    }


});
