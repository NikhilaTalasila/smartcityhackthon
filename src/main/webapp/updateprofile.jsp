<%@page import="com.klu.model.Customer"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
Customer c =(Customer)session.getAttribute("customer");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Profile</title>
</head>
<body>
<%@include file="customernavbar.jsp" %>
<h3 align ="center">Customer Update Profile Form </h3><br/>
<div class="container">
<form method="post" action="update">
<label>ID</label>
<input type ="number" class="form-control" name="cid" value="<%=c.getId()%>" readonly required/>
<br/>
<label>Enter Name</label>
<input type ="text" class="form-control" name="cname" value="<%=c.getName() %>" required/>
<br/>
<label>Select Gender</label>
<input type ="radio" name="cgender" class="form-check-input" value="Male" required/>Male
<input type ="radio" name="cgender" class="form-check-input" value="Female" required/>Female
<input type ="radio" name="cgender" class="form-check-input" value="Others" required/>Others
<br/>
<label>Select Date of Birth</label>
<input type ="date" name="cdob" class="form-control" required/>
<br/>
<label>Enter Email ID</label>
<input type ="email" name="cemail" class="form-control" value="<%=c.getEmail() %>"  readonly  required/>
<br/>
<label>Enter Password</label>
<input type ="password" name="cpwd" class="form-control" value="<%=c.getPassword() %>"  required/>
<br/>
<label>Enter Location</label>
<input type ="text" name="clocation" class="form-control"  value="<%=c.getLocation()%>" required/>
<br/>
<label>Enter Contact</label>
<input type ="number" name="ccontact" class="form-control" value="<%=c.getContact() %>"  required/>
<br/>
<input type="submit" value="Update" class="btn btn-success"/>
<input type="reset"value="Clear"  class="btn btn-success"/>
</form>
</div>
</body>
</html>