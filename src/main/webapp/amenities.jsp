<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Amenities in ${city.name}</title>
<style>
    /* Container for amenities */
    .amenities-container {
        display: flex;
        flex-wrap: wrap;
        justify-content: space-around;
        margin-top: 20px;
    }

    /* Each amenity card */
    .amenity-card {
        text-align: center;
        margin: 10px;
        cursor: pointer;
        flex: 0 0 22%; /* Adjust width to fit four per row (approx 22% each) */
        box-sizing: border-box;
    }

    /* Increased image size with fixed width and height */
    .amenity-card img {
        width: 100%; /* Makes image fill the card width */
        height: 200px; /* Fixed height for uniform size */
        object-fit: cover; /* Ensures the image covers the area without distortion */
        border-radius: 10px;
        box-shadow: 0 4px 8px rgba(0,0,0,0.1);
    }

    /* Amenity name styling */
    .amenity-card h4 {
        color: #333;
        font-size: 18px;
        margin-top: 10px;
    }

    /* Styling for the page header */
    h3 {
        text-align: center;
        margin-top: 30px;
    }
</style>
</head>
<body>

<%@ include file="customernavbar.jsp" %>

<h3>Amenities in ${city.name}</h3>

<!-- Display Amenities -->
<div class="amenities-container">
    <div class="amenity-card">
        <img src="images/park.jpg?id=${city.id}" alt="Park" />
        <h4>Park</h4>
    </div>
    <div class="amenity-card">
        <img src="images/shopingmall.jpg?id=${city.id}" alt="Shopping Mall" />
        <h4>Shopping Mall</h4>
    </div>
    <div class="amenity-card">
        <img src="images/gym.jpg?id=${city.id}" alt="Gym" />
        <h4>Gym</h4>
    </div>
    <div class="amenity-card">
        <img src="images/communitycenter.jpg?id=${city.id}" alt="Community Center" />
        <h4>Community Center</h4>
    </div>
    <div class="amenity-card">
        <img src="images/recreationalfacilities.jpg?id=${city.id}" alt="Recreational Facilities" />
        <h4>Recreational Facilities</h4>
    </div>
    <div class="amenity-card">
        <img src="images/foodcourt.jpg?id=${city.id}" alt="Food Courts" />
        <h4>Food Courts</h4>
    </div>
    <div class="amenity-card">
        <img src="images/swimmingpool.jpg?id=${city.id}" alt="Swimming Pool" />
        <h4>Swimming Pool</h4>
    </div>
    <div class="amenity-card">
        <img src="images/bankservices.jpg?id=${city.id}" alt="Banking Services" />
        <h4>Banking Services</h4>
    </div>
</div>

</body>
</html>
