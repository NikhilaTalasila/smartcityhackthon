<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Public Services</title>
    <style>
        /* Container for public services */
        .public-services-container {
            display: flex;
            flex-wrap: wrap;
            justify-content: space-around;
            margin-top: 20px;
        }

        /* Each public service card */
        .public-service-card {
            text-align: center;
            margin: 10px;
            cursor: pointer;
            flex: 0 0 22%; /* Adjust width to fit four per row (approx 22% each) */
            box-sizing: border-box;
        }

        /* Increased image size with fixed width and height */
        .public-service-card img {
            width: 100%; /* Makes image fill the card width */
            height: 200px; /* Fixed height for uniform size */
            object-fit: cover; /* Ensures the image covers the area without distortion */
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0,0,0,0.1);
        }

        /* Public service name styling */
        .public-service-card h4 {
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

<h3>Public Services in ${city.name}</h3>

<!-- Display Public Services -->
<div class="public-services-container">
    <div class="public-service-card" onclick="location.href='education.jsp?cityId=${city.id}'">
        <img src="images/education.jpg?id=${city.id}" alt="Education" />
        <h4>Education</h4>
    </div>
    <div class="public-service-card" onclick="location.href='transport.jsp?cityId=${city.id}'">
        <img src="images/transport.jpg?id=${city.id}" alt="Transport" />
        <h4>Transport</h4>
    </div>
    <div class="public-service-card" onclick="location.href='healthcare.jsp?cityId=${city.id}'">
        <img src="images/healthcare.jpg?id=${city.id}" alt="Healthcare" />
        <h4>Healthcare</h4>
    </div>
    <div class="public-service-card" onclick="location.href='watersupply.jsp?cityId=${city.id}'">
        <img src="images/watersupply.jpg?id=${city.id}" alt="Water Supply" />
        <h4>Water Supply</h4>
    </div>
    <div class="public-service-card" onclick="location.href='emergencyservices.jsp?cityId=${city.id}'">
        <img src="images/emergencyservices.jpg?id=${city.id}" alt="Emergency Services" />
        <h4>Emergency Services</h4>
    </div>
    <div class="public-service-card" onclick="location.href='governmentoffices.jsp?cityId=${city.id}'">
        <img src="images/governmentoffices.jpg?id=${city.id}" alt="Government Offices" />
        <h4>Government Offices</h4>
    </div>
    <div class="public-service-card" onclick="location.href='garbagecollection.jsp?cityId=${city.id}'">
        <img src="images/garbagecollection.jpg?id=${city.id}" alt="Garbage Collection" />
        <h4>Garbage Collection</h4>
    </div>
    <div class="public-service-card" onclick="location.href='firedepartment.jsp?cityId=${city.id}'">
        <img src="images/firedepartment.jpg?id=${city.id}" alt="Fire Department" />
        <h4>Fire Department</h4>
    </div>
</div>

</body>
</html>
