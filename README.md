# ANWB_incidents_collector

A solication assignment for Yoursurpice

## Build with

* PHP 8.2
* MariaDB
* PHP cURL
* Mapbox

## How to use

1. Install PHP (This project is only tested with version 8.2)
2. Make sure that your PHP has cURL enabled
3. Set up a mysql database (This project is only tested with MariaDB)
4. Edit the /config/setup.php file with your own information.
5. set up a way to run /workers/IncidentCollector.php every 5 minutes.
   On Linux you could add a Cron Job with adding the text below to your crontab File. Make sure to edit the file
   location.

```bash 
"*/5 * * * * /usr/bin/php /home/username/public_html/workers/IncidentCollector.php >/dev/null 2>&1"
```

If it is just for testing you could open /workers/IncidentCollector.php with your browser to load new incidents info
into the database

6. Load the table from /DB/incidents.sql into your database
7. You are ready to use the application by opening index.php in your browser. 
