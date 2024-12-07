<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>View All Cities</title>

<style>
    /* Container for cities */
    .city-container {
        display: flex;
        flex-wrap: wrap; /* Allows wrapping to next line */
        justify-content: space-around;
        margin-top: 20px;
    }

    /* Each city card */
    .city-card {
        text-align: center;
        margin: 10px;
        cursor: pointer;
        flex: 0 0 30%; /* Adjust width to fit three per row (approx 30% each) */
        box-sizing: border-box; /* Ensures padding and borders are included in width */
    }

    /* Increased image size with fixed width and height */
    .city-card img {
        width: 100%; /* Makes image fill the card width */
        height: 200px; /* Fixed height for uniform size */
        object-fit: cover; /* Ensures the image covers the area without distortion */
        border-radius: 10px;
        box-shadow: 0 4px 8px rgba(0,0,0,0.1);
    }

    /* City name styling */
    .city-card h4 {
        color: #333;
        font-size: 18px;
        margin-top: 10px;
    }

    /* Styling for the search form */
    .search-form {
        text-align: center;
        margin: 20px 0;
    }

    .search-form input[type="text"] {
        padding: 10px;
        width: 300px;
        font-size: 16px;
        border-radius: 5px;
        border: 1px solid #ccc;
    }

    .search-form input[type="submit"] {
        padding: 10px 20px;
        font-size: 16px;
        border-radius: 5px;
        background-color: #28a745;
        color: white;
        border: none;
        cursor: pointer;
        margin-left: 10px;
    }

    .search-form input[type="submit"]:hover {
        background-color: #218838;
    }

    /* Responsive design for smaller screens */
    @media screen and (max-width: 768px) {
        .city-card {
            flex: 0 0 90%; /* Single card per row on smaller screens */
        }
    }
</style>
</head>
<body>

<%@ include file="customernavbar.jsp" %>

<h3 align="center">Search and View Cities</h3>

<!-- Search Form -->
<div class="search-form">
    <form method="get" action="viewallcities">
        <input type="text" name="cityName" placeholder="Search by City Name" required />
        <input type="submit" value="Search" />
    </form>
</div>

<!-- Display Cities -->
<div class="city-container">
    <c:forEach items="${cities}" var="city">
        <div class="city-card">
            <a href="viewcitydetails?id=${city.id}">
                <img src="displaycityimage?id=${city.id}" alt="${city.name}" />
                <h4>${city.name}</h4>
            </a>
        </div>
    </c:forEach>
</div>

</body>
</html>
