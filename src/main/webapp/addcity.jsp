<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add City</title>
<link rel="stylesheet" type="text/css" href="style.css"/>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<style>
    /* Form background color */
    .form-container {
        background-color: skyblue; /* Set background color to skyblue */
        padding: 30px;
        border-radius: 10px; /* Optional: Add rounded corners to the form */
        width: 50%; /* Optional: Set the form width */
        margin: 0 auto; /* Center the form */
    }
</style>
</head>
<body>
<h3 align ="center">Add City</h3><br/>
<div class="form-container">
    <form method="post" action="insertcity" enctype="multipart/form-data">
        <label>City Name</label>
        <input type ="text" class="form-control" name="ciname" required/>
        <br/>
        <label>State Name</label>
        <input type ="text" name="cistate" class="form-control"  required/>
        <br/>
        <label>Country Name</label>
        <input type ="text" name="cicountry" class="form-control"  required/>
        <br/>
        <label>Public Services</label>
        <textarea name="cipublicServices" class="form-control" required></textarea>
        <br/>
        <label>Amenities</label>
        <textarea name="ciamenities" class="form-control"  required></textarea>
        <br/>
        <label>Infrastructure</label>
        <textarea name="ciinfrastructure" class="form-control"  required></textarea>
        <br/>
        <label>City Image</label>
        <input type ="file" name="ciimage" class="form-control"  required/>
        <br/>
        <input type="submit" value="Add City" class="btn btn-success"/>
        <input type="reset" value="Clear"  class="btn btn-success"/>
    </form>
</div>
</body>
</html>
