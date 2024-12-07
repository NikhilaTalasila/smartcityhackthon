<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Education Services</title>
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

        .school-list {
            display: flex;
            flex-wrap: wrap;
            justify-content: space-around;
        }

        .school-card {
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

        .school-card:hover {
            transform: translateY(-5px);
            box-shadow: 0 6px 12px rgba(0, 0, 0, 0.15);
        }

        .school-card h4 {
            margin: 10px 0;
            color: #333;
        }

        .school-card p {
            color: #666;
            font-size: 14px;
        }
    </style>
</head>
<body>

<%@ include file="customernavbar.jsp" %>

<div class="container">
    <h3>Schools and Colleges in Guntur</h3>
    <div class="school-list">
        <div class="school-card">
            <h4>St. Joseph's Public School</h4>
            <p>Address: Brodipet, Guntur</p>
        </div>
        <div class="school-card">
            <h4>Bhashyam Educational Institutions</h4>
            <p>Address: Arundelpet, Guntur</p>
        </div>
        <div class="school-card">
            <h4>Nagarjuna Junior College</h4>
            <p>Address: Lakshmipuram, Guntur</p>
        </div>
        <div class="school-card">
            <h4>Kendriya Vidyalaya</h4>
            <p>Address: Nehru Nagar, Guntur</p>
        </div>
        <div class="school-card">
            <h4>RVR & JC College of Engineering</h4>
            <p>Address: Chowdavaram, Guntur</p>
        </div>
        <div class="school-card">
            <h4>Hindu College</h4>
            <p>Address: Kothapet, Guntur</p>
        </div>
    </div>
</div>

</body>
</html>
