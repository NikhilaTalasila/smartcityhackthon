<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Infrastructure</title>
<style>
    .infrastructure-container {
        display: flex;
        flex-wrap: wrap;
        justify-content: space-around;
        margin-top: 20px;
    }

    .infrastructure-card {
        text-align: center;
        width: 30%;
        margin: 10px;
        border-radius: 10px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        padding: 10px;
        background-color: #f5f5f5;
    }

    .infrastructure-card img {
        width: 100%;
        height: 150px;
        object-fit: cover;
        border-radius: 10px;
    }

    .infrastructure-card h4 {
        margin-top: 10px;
        color: #555;
    }
</style>
</head>
<body>
<h3 align="center">Infrastructure</h3>

<div class="infrastructure-container">
    <div class="infrastructure-card">
        <img src="images/roads.jpg" alt="Roads" />
        <h4>Roads</h4>
    </div>
    <div class="infrastructure-card">
        <img src="images/buildings.jpg" alt="Buildings" />
        <h4>Buildings</h4>
    </div>
    <div class="infrastructure-card">
        <img src="images/electricity.jpg" alt="Electricity" />
        <h4>Electricity</h4>
    </div>
    <div class="infrastructure-card">
        <img src="images/water.jpg" alt="Water Supply" />
        <h4>Water Supply</h4>
    </div>
    <div class="infrastructure-card">
        <img src="images/communication.jpg" alt="Communication" />
        <h4>Communication</h4>
    </div>
</div>

</body>
</html>
