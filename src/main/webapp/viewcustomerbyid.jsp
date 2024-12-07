<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<%@taglib uri="jakarta.tags.core" prefix="c" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Home</title>
    <style>
    .container{
    text-align:center
    }
    </style>
</head>
<body>
    <%@ include file="adminnavbar.jsp" %>
    <h3 align="center"><u>View Customer By ID</u></h3><br/>
    <div class="container">
        <form method="post" action="displaycustomer">
            <label>Select Customer ID</label>
            <select class="form-select"   name="id" required>
            <option value="">--Select----</option>
            <c:forEach items="${customerlist}" var="customer">
            <option value="${customer.id}">${customer.id}- ${customer.name}</option>
            
            </c:forEach>
   
            </select>
            <br /><br/>
            <input type="submit" value="View" class="btn btn-success" />
        </form>
         
    </div>
</body>
</html>
