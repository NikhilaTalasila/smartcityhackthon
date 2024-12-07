<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Home</title>
    <style>
        /* Container for the image and form */
        .login-container {
            display: flex;
            justify-content: center; /* Center content horizontally */
            align-items: center; /* Center content vertically */
            height: 75vh; /* Full screen height */
            gap: 5px; /* Space between image and form */
        }

        /* Style for the image */
        .image-container {
            flex: 1;
            text-align: center;
            
        }

        .image-container img {
            width: 100%;
            max-width: 600px; /* Ensure equal size */
            height: 400px;
            border: 2px solid #ccc;
            border-radius: 8px;
        }

        /* Style for the form */
        .form-container {
            flex: 1;
            max-width: 600px; /* Ensure equal size */
            background-color: skyblue;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
            height: 400px; /* Set a specific height */
            display: flex;
            flex-direction: column;
            justify-content: space-between; /* Space out the form elements */
        }

        .form-container h3 {
            text-align: center;
            color: #333;
        }

        .form-container label {
            display: block;
            margin-bottom: 5px;
            font-weight: bold;
            color: #333;
        }

        .form-container input[type="text"],
        .form-container input[type="password"] {
            width: 100%;
            padding: 12px;
            margin: 10px 0;
            border: 1px solid #ccc;
            border-radius: 4px;
        }

        .form-container input[type="submit"],
        .form-container input[type="reset"] {
            width: 48%;
            padding: 12px;
            margin: 10px 1%;
            border: none;
            background-color: #28a745;
            color: white;
            border-radius: 5px;
            cursor: pointer;
        }

        .form-container input[type="submit"]:hover,
        .form-container input[type="reset"]:hover {
            background-color: #218838;
        }
    </style>
</head>
<body>
<%@ include file="navbar.jsp" %>
    <div class="login-container">
        <!-- Image Container -->
        <div class="image-container">
            <img src="images/image1.jpg" alt="Smart City Illustration">
        </div>

        <!-- Form Container -->
        <div class="form-container">
            <h3>Customer Login Form</h3>
            <form method="post" action="checkcustomerlogin">
            
                <label>Enter Email</label>
                <input type="text" name="cemail" required />
                <label>Enter Password</label>
                <input type="password" name="cpwd" required />
                <div>
                    <input type="submit" value="Login" />
                    <input type="reset" value="Clear" />
                </div>
            </form>
        </div>
    </div>
</body>
</html>
