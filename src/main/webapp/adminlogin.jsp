<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Admin Login</title>
    <style>
        /* Set the background color of the page */
        body {
            background-color: #87CEEB; /* Skyblue background */
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
        }

        /* Styling for the form container */
        .container {
            max-width: 500px;
            margin: 50px auto;
            padding: 20px;
            background-color: #f0f8ff; /* Lighter skyblue for the form */
            border-radius: 8px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
        }

        h3 {
            color: #4682B4; /* Darker blue for the heading */
            text-align: center;
        }

        /* Form element styles */
        label {
            font-size: 16px;
            font-weight: bold;
            color: #333;
        }

        input[type="text"], input[type="password"] {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border: 2px solid #87CEEB;
            border-radius: 5px;
            box-sizing: border-box;
        }

        input[type="submit"], input[type="reset"] {
            background-color: #4682B4; /* Darker blue button */
            color: white;
            border: none;
            padding: 10px 20px;
            font-size: 16px;
            border-radius: 5px;
            cursor: pointer;
        }

        input[type="submit"]:hover, input[type="reset"]:hover {
            background-color: #5A9BD5; /* Hover effect for buttons */
        }
    </style>
</head>
<body>
    <%@ include file="navbar.jsp" %>
    <h3 align="center">Admin Login Form</h3><br/>
    <div class="container">
        <form method="post" action="checkadminlogin">
            <label>Enter Username</label>
            <input type="text" class="form-control" name="auname" required />
            <br />
            <label>Enter Password</label>
            <input type="password" name="apwd" class="form-control" required />
            <br />
            <input type="submit" value="Login" class="btn btn-success" />
            <input type="reset" value="Clear" class="btn btn-success" />
        </form>
    </div>
</body>
</html>
