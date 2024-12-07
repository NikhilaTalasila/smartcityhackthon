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
        width: 80%; /* Optional: set table width */
        margin: 0 auto; /* Optional: center the table */
    }

    th, td {
        padding: 10px;
        text-align: center;
        border: 1px solid skyblue; /* Set border color of cells */
    }

    th {
        background-color: skyblue; /* Darker blue for header cells */
        color: white;
    }

    tr:hover {
        background-color: #f2f2f2; /* Change background color when hovering over a row */
    }

    a {
        color: blue; /* Link color */
        text-decoration: none;
    }

    a:hover {
        text-decoration: underline; /* Underline on hover */
    }
</style>
</head>
<body>
<%@include file="adminnavbar.jsp" %><br/>
<h3 align="center">Delete City</h3><br/>
<table align="center" class="table table-striped">
    <tr>
        <th>ID</th>
        <th>NAME</th>
        <th>STATE</th>
        <th>COUNTRY</th>
        <th>PUBLICSERVICES</th>
        <th>AMENITIES</th>
        <th>INFRASTRUCTURE</th>
        <th>IMAGE</th>
        <th>ACTION</th>
    </tr>
    <c:forEach items="${citieslist}" var="city">
        <tr>
            <td><c:out value="${city.id}"></c:out></td>
            <td><c:out value="${city.name}"></c:out></td>
            <td><c:out value="${city.state}"></c:out></td>
            <td><c:out value="${city.country}"></c:out></td>
            <td><c:out value="${city.publicServices}"></c:out></td>
            <td><c:out value="${city.amenities}"></c:out></td>
            <td><c:out value="${city.infrastructure}"></c:out></td>
            <td><c:out value="${city.image}"></c:out></td>
            <td>
                <a href="<c:url value='deletec?id=${city.id}'/>">Delete City</a>
            </td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
