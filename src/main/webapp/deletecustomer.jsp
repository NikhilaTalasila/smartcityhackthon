<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home</title>
<style>
    /* Set table border color to sky blue */
    table {
        border: 2px solid skyblue;
        border-collapse: collapse;
    }

    th, td {
        padding: 10px;
        text-align: center;
        border: 1px solid skyblue; /* Set border color of table cells */
    }

    th {
        background-color: skyblue; /* Optional: Set header background color */
        color: white;
    }

    /* Optional: Change the background color of the rows when hovering */
    tr:hover {
        background-color: #f2f2f2;
    }
</style>
</head>
<body>
<%@include file="adminnavbar.jsp" %><br/>
<h3 align="center">Delete Customer</h3><br/>
<table align="center" class="table table-striped">
<tr>
<th>ID</th>
<th>NAME</th>
<th>GENDER</th>
<th>DATE OF BIRTH</th>
<th>EMAIL</th>
<th>LOCATION</th>
<th>CONTACT NO</th>
<th>ACTION</th>
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
<td>
<a href='<c:url value="delete?id=${customer.id}"> </c:url>'>Delete</a>
</td>
</tr>
</c:forEach>
</table>
</body>
</html>
