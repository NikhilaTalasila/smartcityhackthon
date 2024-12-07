<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home</title>
<style>
    /* Set table background color to skyblue */
    table {
        border: 2px solid skyblue; /* Set border color */
        border-collapse: collapse; /* Collapse borders */
        background-color: #87CEEB; /* Skyblue background color for the table */
        width: 100%; /* Set width to 100% of the page */
        height: 80vh; /* Set the table height to 80% of the viewport height */
        margin: 20px auto; /* Center the table */
        font-size: 18px; /* Increased font size */
        overflow-x: auto; /* Allow horizontal scrolling if necessary */
    }

    th, td {
        padding: 15px; /* Increased padding */
        text-align: left;
        border: 1px solid skyblue; /* Set border color of cells */
    }

    th {
        background-color: #4682B4; /* Darker blue for header cells */
        color: white;
    }

    tr:hover {
        background-color: #f2f2f2; /* Change background color when hovering over a row */
    }

    /* Ensure the page content is fully contained in the page */
    body {
        margin: 0;
        padding: 0;
        font-family: Arial, sans-serif;
    }

    .container {
        max-width: 100%;
        overflow-x: auto; /* Ensure no horizontal overflow */
    }

    h3 {
        margin: 20px 0;
        font-size: 24px;
    }

</style>
</head>
<body>
<%@include file="adminnavbar.jsp" %><br/>
<h3 align="center">View All Customers</h3><br/>
Total Customers: <c:out value="${count}"></c:out><br/><br/>

<div class="container">
    <table align="center">
        <tr>
            <th>ID</th>
            <th>NAME</th>
            <th>GENDER</th>
            <th>DATE OF BIRTH</th>
            <th>EMAIL</th>
            <th>LOCATION</th>
            <th>CONTACT NO</th>
        </tr>

        <c:forEach items="${customerlist}" var="customer">
        <tr>
            <td><c:out value="${customer.id}"></c:out></td>
            <td><c:out value="${customer.name}"></c:out></td>
            <td><c:out value="${customer.gender}"></c:out></td>
            <td><c:out value="${customer.dateOfBirth}"></c:out></td>
            <td><c:out value="${customer.email}"></c:out></td>
            <td><c:out value="${customer.location}"></c:out></td>
            <td><c:out value="${customer.contact}"></c:out></td>
        </tr>
        </c:forEach>
    </table>
</div>
</body>
</html>
