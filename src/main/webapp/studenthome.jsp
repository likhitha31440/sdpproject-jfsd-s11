<%@page import="com.klef.jfsd.springboot.model.Student"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<%
Student  std = (Student) session.getAttribute("student");
if (std == null) {
    response.sendRedirect("studentsessionexpired.jsp");
    return;
}
%>
<!DOCTYPE html>
<html>
<head>
    <title>Student Dashboard</title>
    <link rel="stylesheet" type="text/css" href="/style.css">
     <form method="get" action="projectdetails">
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #BDEFEF;
        }

        .side-nav {
            height: 100%;
            width: 200px;
            position: fixed;
            top: 0;
            left: 0;
            background-color: #3A8C8D;
            padding-top: 20px;
            padding-left: 10px;
            border-radius: 0 15px 15px 0; /* Rounded edges on the right */
            display: flex;
            flex-direction: column; /* Stack the content vertically */
            align-items: center; /* Center the content horizontally */
        }

        /* Increased width, height and border-radius for image5 */
        .side-nav img {
            width: 150px; /* Increased width of the image */
            height: 130px; /* Increased height of the image */
            border-radius: 30px; /* Apply border-radius for rounded corners */
            margin-bottom: 20px; /* Space below the image */
        }

        .side-nav a {
            display: block;
            color: white;
            padding: 10px 20px;
            text-decoration: none;
            margin-bottom: 10px;
            border-radius: 10px;
        }

        .side-nav a:hover {
            background-color: #ffffff;
            color: black;
        }

        .main-content {
            margin-left: 220px; /* Shift content to the right of the side nav */
            padding: 20px;
        }

        .welcome-box {
            background-color: #DD99DD;
            border-radius: 30px; /* Rounded corners */
            padding: 20px;
            box-shadow: 0 8px 15px rgba(0, 0, 0, 0.3); /* Thicker shadow */
            text-align: center; /* Center text content */
            margin-bottom: 40px; /* Space below the welcome box */
            display: flex; /* Flexbox for layout */
            justify-content: space-between; /* Space between text and image */
            align-items: center; /* Align items vertically */
            border: 4px solid white; /* Thicker white border */
        }

        .welcome-text {
            flex: 1; /* Allow text to take up remaining space */
            text-align: center; /* Center text horizontally */
            margin: 0; /* Remove any margins */
        }

        .welcome-image {
            flex: 0 0 200px; /* Fix image width */
            text-align: center;
            margin-left: -5px; /* Move the image slightly to the left */
        }

        .welcome-image img {
            width: 280px; /* Increase width */
            height: 200px; /* Increase height */
            border-radius: 60px; /* Rounded corners for the image */
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1); /* Shadow for depth */
            object-fit: cover; /* Ensures the image fits well inside the box */
        }

        .projects-section {
            margin-top: 20px;
            text-align: center;
        }

        .projects-section h2 {
            font-size: 24px;
            margin-bottom: 20px;
        }

        .project-box {
            background-color: white;
            border-radius: 40px; /* Rounded corners */
            box-shadow: 0 8px 15px rgba(0, 0, 0, 0.3); /* Thicker shadow */
            width: 350px;
            height: 300px;
            display: inline-block; /* Keep boxes side by side */
            margin: 10px;
            text-align: center;
            vertical-align: top; /* Aligns boxes at the top */
            font-size: 18px;
            font-weight: bold;
            color: #333;
            overflow: hidden; /* Hides any overflow content */
            border: 4px solid #DD99DD; /* Thicker border with color #DD99DD */
            padding: 10px;
        }

        .project-box img {
            width: 70%; /* Ensures the image fits within the box */
            height: auto;
            border-radius: 40px; /* Increased radius for a more rounded effect */
            transition: transform 0.3s ease;
            border: 4px solid #BDEFEF; /* Light border for the image */
        }

        .project-box img:hover {
            transform: scale(1.05); /* Optional: Slight zoom-in effect on hover */
        }

        .project-box:hover {
            background-color: #ddd;
            cursor: pointer;
        }

        .view-details-btn {
            background-color: #3A8C8D;
            color: white;
            padding: 10px 20px;
            font-size: 16px;
            border: none;
            border-radius: 25px;
            cursor: pointer;
            margin-top: 20px;
            transition: background-color 0.3s;
        }

        .view-details-btn:hover {
            background-color: #2A6F6D;
        }
    </style>
</head>
<body>
    <!-- Side Navigation Bar -->
    <div class="side-nav">
        <!-- Square Image on Top of Navbar -->
        <img src="images/image5.png">
  
        <a href="studenthome"> </a>
        <a href="studenthome">Dashboard 🏠</a>
        <a href="studenthome"> </a>
        <a href="studentprofile">My Profile 👤</a>
        <a href="studenthome"> </a>
        <a href="updatestudent">Update Profile ✏️</a>
        <a href="studenthome"> </a>
        <a href="uploadproject">Upload Project 📤</a>
        <a href="studenthome"> </a>
        <a href="portfoliostatus">Portfolio Status 📊</a>
        <a href="studenthome"> </a>
        <a href="studentlogin">Logout 🚪</a>
    </div>

    <!-- Main Content Area -->
    <div class="main-content">
        <!-- Welcome Box -->
        <div class="welcome-box">
            <div class="welcome-text">
                          <h1>Welcome Back, Likitha! 🌟</h1>
                          <p>Resume your work... 🚀</p>
            </div>
            <div class="welcome-image">
                <img src="images/image4.png" alt="Welcome Image">
            </div>
        </div>

        <!-- Existing Projects Section -->
        <div class="projects-section">
            <h2>Current Active Projects</h2>
            <div class="project-box">
                <p>Project 1</p>
                <img src="images/project1.jpg" alt="Project 1">
                <button class="view-details-btn">View Details</button>
            </div>
            <div class="project-box">
                <p>Project 2</p>
                <img src="images/project2.jpg" alt="Project 2">
                <button class="view-details-btn">View Details</button>
            </div>
            <div class="project-box">
                <p>Project 3</p>
                <img src="images/project3.jpg" alt="Project 3">
                <button class="view-details-btn">View Details</button>
            </div>
        </div>
    </div>
</body>
</html>
