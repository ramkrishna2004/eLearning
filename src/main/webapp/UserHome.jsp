<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title> Home</title> 
    <style>

        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }

        .header {
            background-color: #333;
            color: #fff;
            padding: 20px;
            text-align: right;
        }

        .content {
            max-width: 800px;
            margin: 0 auto;
            padding: 20px;
            background-color: gray;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
            border-radius: 5px;
        }

        .profile {
            text-align: right;
        }
    </style>
</head>
<body>

<%@include  file="HomeMenu.jsp" %>
    <div class="header">
        <div class="profile"> 
        
            Welcome, <%=session.getAttribute("name") %>
        </div>
    </div>
    <div class="content">
        <h1>Courses</h1>
        <!-- Loop through and display course details from your database -->
        <div class="course">
            <h2>Course 1</h2>
            <p>Description of Course 1</p>
        </div>
        <div class="course">
            <h2>Course 2</h2>
            <p>Description of Course 2</p>
        </div>
        <!-- Add more course entries as needed -->
    </div>
</body>
</html>
