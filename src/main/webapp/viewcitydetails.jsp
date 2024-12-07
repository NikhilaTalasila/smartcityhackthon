<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>City Details</title>
<style>
    /* Light Sky Blue Themed Background with Layered Effect */
    body {
        margin: 0;
        padding: 0;
        font-family: Arial, sans-serif;
        position: relative;
        background: #e3f2fd; /* Fallback light sky blue */
    }

    body::before,
    body::after {
        content: '';
        position: absolute;
        top: -50%; /* Extend beyond visible area for scrolling */
        left: -50%;
        width: 200%; /* Large enough to cover the scrolling area */
        height: 200%; /* Large enough to cover the scrolling area */
        z-index: -1; /* Place behind the content */
    }

    body::before {
        background: radial-gradient(circle, #e3f2fd 0%, #bbdefb 50%, #90caf9 100%);
        transform: scale(1.3) rotate(15deg);
        opacity: 0.9;
        box-shadow: 0 10px 20px rgba(0, 0, 0, 0.1);
    }

    body::after {
        background: radial-gradient(circle, #e3f2fd 0%, #bbdefb 50%, #64b5f6 100%);
        transform: scale(1.1) rotate(-15deg);
        opacity: 0.8;
        box-shadow: 0 10px 20px rgba(0, 0, 0, 0.1);
    }

    /* City Details Styling */
    .city-details {
        margin: 50px auto;
        text-align: center;
        width: 50%;
        padding: 20px;
        background-color: #ffffff;
        border-radius: 10px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        position: relative;
        z-index: 1;
    }

    .city-details img {
        max-width: 100%;
        height: auto;
        border-radius: 10px;
    }

    .city-details h2,
    .city-details p {
        color: #333;
        margin-bottom: 10px;
    }

    /* Category Container for Additional Images */
    .category-container {
        display: flex;
        justify-content: space-between;
        margin-top: 30px;
    }

    .category-card {
        text-align: center;
        width: 30%;
    }

    .category-card img {
        width: 100%;
        height: 150px;
        object-fit: cover;
        border-radius: 10px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    }

    .category-card h4 {
        margin-top: 10px;
        color: #555;
    }
</style>
</head>
<body>
    <div class="city-details">
        <!-- Existing City Details -->
        <img src="displaycityimage?id=${city.id}" alt="${city.name}" />
        <h2>${city.name}</h2>
        <p>State: ${city.state}</p>
        <p>Country: ${city.country}</p>
        <p>Public Services: ${city.publicServices}</p>
        <p>Amenities: ${city.amenities}</p>
        <p>Infrastructure: ${city.infrastructure}</p>

        <!-- Additional Section for Category Images -->
        <div class="category-container">
            <div class="category-card">
            <a href="publicservices.jsp?id=${city.id}">
                <img src="images/public.jpg?id=${city.id}" alt="Public Services" />
                <h4>Public Services</h4>
             </a>
            </div>
            <div class="category-card">
            <a href="amenities.jsp?id=${city.id}">
                <img src="images/ameinites.jpg?id=${city.id}" alt="Amenities" />
                <h4>Amenities</h4>
                </a>
            </div>
            <div class="category-card">
            <a href="/infrastructure.jsp?id=${city.id}">
                <img src="images/infrastructure.jpg?id=${city.id}" alt="Infrastructure" />
                <h4>Infrastructure</h4>
                </a>
            </div>
        </div>
    </div>
</body>
</html>
