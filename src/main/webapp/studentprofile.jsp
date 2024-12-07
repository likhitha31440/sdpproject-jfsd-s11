<%@ page import="com.klef.jfsd.springboot.model.Student"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<%
Student emp = (Student) session.getAttribute("student");
if (emp == null) {
    response.sendRedirect("studentsessionexp");
    return;
}
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Student Home</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #BDEFEF; /* Light blue background color */
            margin: 0;
            padding: 0;
        }

        /* Navbar styling */
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

        .side-nav img {
            width: 150px;
            height: 130px;
            border-radius: 30px;
            margin-bottom: 20px;
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

        /* Centering the main container */
        .main-container {
            display: flex; /* Flexbox container */
            justify-content: center; /* Centers horizontally */
            align-items: center; /* Centers vertically */
            height: 100vh; /* Full viewport height */
            margin-left: 220px; /* Space for side navigation bar */
            padding: 20px;
        }

        /* Profile Box styling */
        .profile-box {
            width: 350px;
            height: auto;
            padding: 20px;
            border: 2px solid #333;
            border-radius: 15px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            background-color: #fff; /* White background for the profile box */
            text-align: left;
        }

        /* Profile information inside the box */
        .profile-box p {
            font-size: 14px;
            margin: 10px 0;
        }

        .profile-box b {
            font-size: 16px;
        }

        /* Heading styling */
        h3 {
            text-align: center;
            text-decoration: underline;
            margin-bottom: 20px;
        }
    </style>
</head>
<body>
    <!-- Side Navigation Bar -->
    <div class="side-nav">
        <img src="images/image5.png" alt="Profile Picture">
        <a href="studenthome">Dashboard 🏠</a>
        <a href="studentprofile">My Profile 👤</a>
        <a href="updatestudent">Update Profile ✏️</a>
        <a href="uploadproject">Upload Project 📤</a>
        <a href="portfoliostatus">Portfolio Status 📊</a>
        <a href="studentlogin">Logout 🚪</a>
    </div>

    <!-- Main Container for Profile Box -->
    <div class="main-container">
        <div>
            <h3>My Profile</h3>
            <!-- Profile Information in a Square Box -->
            <div class="profile-box">
                <p><b>ID:</b> <%= emp.getId() %></p>
                <p><b>NAME:</b> <%= emp.getName() %></p>
                <p><b>GENDER:</b> <%= emp.getGender() %></p>
                <p><b>DATE OF BIRTH:</b> <%= emp.getDateofbirth() %></p>
                <p><b>DEPARTMENT:</b> <%= emp.getDepartment() %></p>
                <p><b>GPA:</b> <%= emp.getGpa() %></p>
                <p><b>LOCATION:</b> <%= emp.getLocation() %></p>
                <p><b>EMAIL:</b> <%= emp.getEmail() %></p>
                <p><b>CONTACT:</b> <%= emp.getContact() %></p>
                <p><b>STATUS:</b> <%= emp.getStatus() %></p>
            </div>
        </div>
    </div>
</body>
</html>
