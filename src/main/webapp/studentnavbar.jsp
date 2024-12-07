<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <title>Spring Boot</title>
    <!-- Assuming style.css is in src/main/resources/static -->
    <link rel="stylesheet" type="text/css" href="/style.css">
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
        }
        .side-nav {
            height: 100%;
            width: 200px;
            position: fixed;
            top: 0;
            left: 0;
            background-color: #333;
            padding-top: 20px;
            padding-left: 10px;
        }
        .side-nav a {
            display: block;
            color: white;
            padding: 10px 20px;
            text-decoration: none;
            margin-bottom: 10px;
        }
        .side-nav a:hover {
            background-color: #ddd;
            color: black;
        }
        .main-content {
            margin-left: 220px; /* Shift content to the right of the side nav */
            padding: 20px;
        }
    </style>
</head>
<body>


    <!-- Side Navigation Bar -->
    <div class="side-nav">
       
        <a href="studenthome">Home</a>
        <a href="studentprofile">My Profile</a>
        <a href="updatestudent">Update Profile</a>
         <a href="uploadproject">Upload Project</a>
         <a href="portfoliostatus">portfoliostatus</a>
        <a href="studentlogin">Logout</a>
    </div>

  
</body>
</html>
