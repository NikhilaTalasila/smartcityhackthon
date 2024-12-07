<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <style>
        /* Set the full background image */
        body {
            background-image: url('images/image2.jpg'); /* Background image */
            background-size: cover; /* Make the image cover the entire viewport */
            background-position: center; /* Center the image */
            background-attachment: fixed; /* Keep the image fixed in place when scrolling */
            background-repeat: no-repeat; /* Prevent the image from repeating */
            margin: 0;
            padding: 0;
            height: 100vh; /* Ensure the body takes full height of the viewport */
            overflow: hidden; /* Prevent any scrolling outside the screen */
        }

        /* Style for the navbar */
        nav {
            background-color: rgba(240, 240, 240, 0.8); /* Light semi-transparent background */
            padding: 10px;
            text-align: center;
            position: fixed; /* Make navbar stay on top */
            width: 100%;
            top: 0;
            z-index: 10; /* Ensure navbar stays on top of other content */
        }

        /* Add space to the content so the background image is not hidden behind the navbar */
        .content {
            padding-top: 70px; /* Add space to avoid content hiding behind navbar */
            text-align: center;
            color: white; /* Text color for readability on dark background */
        }

        /* Add a class for the image container */
        .image-container {
            margin-top: 150px; /* Adjust the margin to position the image below the navbar */
            text-align: center;
        }

        /* Style for the image */
        .image-container img {
            width: 80%; /* Adjust the width as needed */
            border-radius: 10px; /* Optional: Add rounded corners to the image */
        }
    </style>
    <meta charset="UTF-8">
    
</head>
<body>
    <%@include file="navbar.jsp" %>

    <!-- Content Section -->
    <div class="content">
        <h1>Welcome to Smart City</h1>
        <p>Your content goes here. This is a sample text that will appear below the heading.</p>
    </div>

</body>
</html>
