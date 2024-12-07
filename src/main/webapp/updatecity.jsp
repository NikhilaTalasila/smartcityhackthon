<%@page import="com.klu.model.City"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
City ci =(City)session.getAttribute("city");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add City</title>
</head>
<body>
<h3 align ="center">Add City</h3><br/>
<form method="post" action="updatecity" enctype="multipart/form-data">
<label>City Name</label>
<input type ="text" class="form-control"  name="ciname" value="<%=ci.getName() %>" readonly required/>
<br/>
<label>State Name</label>
<input type ="text" name="cistate" class="form-control" value="<%=ci.getState() %>"  reaonly required/>
<br/>
<label>Country Name</label>
<input type ="text" name="cicountry" class="form-control" value="<%=ci.getCountry()%>" readonly required/>
<br/>
<label>PublicServices</label>
<textarea name="cipublicServices" class="form-control"  value="<%=ci.getPublicServices()%>" required></textarea>

<br/>
<label>Amenities</label>
<textarea name="ciamenities" class="form-control"  value="<%=ci.getAmenities()%>"required></textarea>
<br/>
<label>Infrastructure</label>
<textarea name="ciinfrastructure" class="form-control" value="<%=ci.getInfrastructure()%>" required></textarea>
<br/>
<label>City Image</label>
<input type ="file" name="ciimage" class="form-control" value="<%=ci.getImage()%>" required/>
<br/>

<input type="submit" value="AddCity" class="btn btn-success"/>
<input type="reset"value="Clear"  class="btn btn-success"/>
</form>

</body>
</html>