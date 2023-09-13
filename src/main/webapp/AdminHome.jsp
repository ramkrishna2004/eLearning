<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Panel - Add Course</title>
    <style>
        /* Reset default margin and padding */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
        }

        h1 {
            text-align: center;
            margin-top: 20px;
        }

        .container {
            max-width: 500px;
            margin: 0 auto;
            padding: 20px;
            background-color: #fff;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
            border-radius: 5px;
        }

        label {
            display: block;
            font-weight: bold;
            margin-top: 10px;
        }

        input[type="text"],
        select,
        input[type="file"] {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 3px;
            margin-top: 5px;
        }

        select {
            appearance: none; /* Remove default select style */
            padding-right: 30px;
            background-image: url("dropdown-arrow.png");
            background-repeat: no-repeat;
            background-position: right center;
        }

        input[type="submit"] {
            background-color: #007BFF;
            color: #fff;
            border: none;
            border-radius: 3px;
            padding: 10px 20px;
            cursor: pointer;
            margin-top: 20px;
        }

        .msg {
            color: #007BFF;
            text-align: center;
            margin-top: 10px;
        }
    </style>
</head>
<body>
    <h1>Admin Panel - Add Course</h1>
    <div class="container">
        <form action="AddCourseServlet" method="post" enctype="multipart/form-data">
            <label for="courseName">Course Name:</label>
            <input type="text" id="courseName" name="courseName" required>
            
            <label for="courseTitle">Course Title:</label>
            <input type="text" id="courseTitle" name="courseTitle" required>
            
            <label for="videoType">Video Type:</label>
            <select id="videoType" name="videoType">
                <option value="youtube">YouTube Video ID</option>
                <option value="file">Video File (Upload)</option>
            </select>
            
            <label for="videoIdentifier">Video Identifier:</label>
            <input type="text" id="videoIdentifier" name="videoIdentifier" required>
            
            <label for="courseDescription">Course Description (PDF):</label>
            <input type="file" id="courseDescription" name="courseDescription" accept=".pdf" required>
            
            <input type="submit" value="Add Course">
        </form>
        <div class="msg">
            <%-- Display success or error messages here --%>
        </div>
    </div>
</body>
</html>
