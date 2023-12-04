document.addEventListener("DOMContentLoaded", function () {
    const updateTimeSelect = document.getElementById('updateTimeSelect');
    const incidentsTable = document.getElementById('incidentsTable');

    // Fetch data for the selector
    fetch('http://localhost:63342/ANWB_incidents_collector/api/IncidentEndpoint.php?UpdateTime')
        .then(response => response.json())
        .then(data => {
            // Check if data is defined and has the expected properties
            if (data && Array.isArray(data) && data) {
                // Populate select menu
                data.forEach(entry => {
                    const option = document.createElement('option');
                    option.value = entry.updatetime;
                    option.textContent = entry.updatetime;
                    updateTimeSelect.appendChild(option);
                });

                // Populate table with all incidents
                populateTable(data);

                // Fetch latest Incidents by default
                const defaultTime = 'latest';
                updateTimeSelect.value = defaultTime;
                fetch(`../api/IncidentEndpoint.php?Incident=${defaultTime}`)
                    .then(response => response.json())
                    .then(data => {
                        if (data && Array.isArray(data)) {
                            populateTable(data);
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
        })
        .catch(error => {
            console.error('Error fetching data:', error);
        });

    //Change table by change of select option
    updateTimeSelect.addEventListener('change', function () {
        const selectedTime = updateTimeSelect.value;
        fetch(`../api/IncidentEndpoint.php?Incident=${selectedTime}`)
            .then(response => response.json())
            .then(data => {
                // Check if data is defined and has the expected properties
                if (data && Array.isArray(data)) {
                    populateTable(data);
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
