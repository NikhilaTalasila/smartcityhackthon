<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="style.css"/>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<style>
    /* Navbar styling */
    div {
        background-color: skyblue; /* Set background color to skyblue */
        padding: 10px 0; /* Optional: Add padding */
        text-align: center; /* Center-align links */
    }

    div a {
        color: white; /* Set link text color to white */
        text-decoration: none; /* Remove underline */
        margin: 0 15px; /* Add space between links */
        font-size: 18px; /* Adjust font size */
    }

    div a:hover {
        color: #333; /* Optional: Change color on hover */
    }
</style>
<title>Admin Home</title>
</head>
<body>
<h2 align ="center">Admin Home</h2><br/>
<div>
    <a href="adminhome">Home</a>&nbsp;&nbsp;
    <a href="viewallcustomers">View All Customers</a>&nbsp;&nbsp;
    <a href="deletecustomer">Delete Customer</a>&nbsp;&nbsp;
    <a href="viewcustomerbyid">View Customer By ID</a>&nbsp;&nbsp;
    <a href="addcity">Add City</a>&nbsp;&nbsp;
    <a href="deletecity">Delete City</a>&nbsp;&nbsp;
    <a href="updatecity">Update City</a>&nbsp;&nbsp;
    <a href="viewqueries">View Queries</a>&nbsp;&nbsp;
    <a href="adminlogin">Logout</a>&nbsp;&nbsp;
</div>
</body>
</html>
