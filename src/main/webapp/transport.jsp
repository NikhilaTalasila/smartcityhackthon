<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Transport Services</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f7f7f7;
        }

        .container {
            max-width: 1200px;
            margin: 20px auto;
            padding: 10px;
            background-color: #87CEEB; /* Sky blue color */
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        h3 {
            text-align: center;
            color: #444;
            margin-bottom: 20px;
        }

        .service-list {
            display: flex;
            flex-wrap: wrap;
            justify-content: space-around;
        }

        .service-card {
            flex: 0 0 30%;
            margin: 15px;
            padding: 20px;
            background: #f9f9f9;
            border: 1px solid #ddd;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            text-align: center;
            transition: transform 0.2s, box-shadow 0.2s;
        }

        .service-card:hover {
            transform: translateY(-5px);
            box-shadow: 0 6px 12px rgba(0, 0, 0, 0.15);
        }

        .service-card h4 {
            margin: 10px 0;
            color: #333;
        }

        .service-card p {
            color: #666;
            font-size: 14px;
        }
    </style>
</head>
<body>

<%@ include file="customernavbar.jsp" %>

<div class="container">
    <h3>Transport Services in Guntur</h3>
    <div class="service-list">
        <div class="service-card">
            <h4>Guntur City Bus Service</h4>
            <p>Address: Gandhi Nagar, Guntur</p>
        </div>
        <div class="service-card">
            <h4>Guntur Railway Station</h4>
            <p>Address: Guntur, Andhra Pradesh</p>
        </div>
        <div class="service-card">
            <h4>APSRTC Bus Stand</h4>
            <p>Address: M.G. Road, Guntur</p>
        </div>
    </div>
</div>

</body>
</html>
