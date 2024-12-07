<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" href="https://unpkg.com/leaflet@1.7.1/dist/leaflet.css" />
    <link rel="stylesheet" href="https://unpkg.com/leaflet-control-geocoder/dist/Control.Geocoder.css" />
    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
        }

        #map {
            width: 100%;
            height: 500px;
        }

        #controls {
            text-align: center;
            margin: 20px 0;
        }

        button {
            display: inline-block;
            margin: 0 10px;
            padding: 10px 20px;
            background-color: #4CAF50;
            color: #fff;
            font-size: 16px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        button:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
    <div id="map"></div>

    <div id="controls">
        <button id="showMapBtn">View Map</button>
        <button id="backBtn">Back</button>
    </div>

    <script src="https://unpkg.com/leaflet@1.7.1/dist/leaflet.js"></script>
    <script src="https://unpkg.com/leaflet-control-geocoder/dist/Control.Geocoder.js"></script>
    <script>
        let map;

        // Event listener for the "View Map" button
        document.getElementById('showMapBtn').addEventListener('click', function () {
            initMap();
        });

        // Event listener for the "Back" button
        document.getElementById('backBtn').addEventListener('click', function () {
            history.back(); // Navigate to the previous page
        });

        function initMap() {
            map = L.map('map').setView([17.3850, 78.4867], 12); // Hyderabad as the default center
            L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png').addTo(map);

            // Add a geocoder control (search bar) to the map
            L.Control.geocoder({
                defaultMarkGeocode: false
            })
                .on('markgeocode', function (e) {
                    const bbox = e.geocode.bbox;
                    const poly = L.polygon([
                        [bbox.getSouthEast().lat, bbox.getSouthEast().lng],
                        [bbox.getSouthWest().lat, bbox.getSouthWest().lng],
                        [bbox.getNorthWest().lat, bbox.getNorthWest().lng],
                        [bbox.getNorthEast().lat, bbox.getNorthEast().lng]
                    ]).addTo(map);
                    map.fitBounds(poly.getBounds());
                })
                .addTo(map);

            const temples = [
                { name: 'Birla Mandir', location: [17.4062, 78.4691], url: 'https://maps.app.goo.gl/ZcfDGyXJBKgY5ewd7' },
                { name: 'Chilkur Balaji Temple', location: [17.3237, 78.3517], url: 'https://maps.app.goo.gl/piQFSmuds9YVhSsU7' },
                { name: 'Jagannath Temple', location: [17.4085, 78.4667], url: 'https://maps.app.goo.gl/8A1n4R5aFQNr7vsZ9' }
            ];

            // Add markers to the map
            temples.forEach(temple => {
                const marker = L.marker(temple.location).addTo(map);
                marker.bindPopup(`<h3>${temple.name}</h3><a href="${temple.url}" target="_blank">View on Google Maps</a>`);
            });
        }
    </script>
</body>
</html>
