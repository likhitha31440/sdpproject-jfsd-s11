<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <form method="post" action="uploadsuccess.jsp">
    <title>Upload Project</title>
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
            border-radius: 0 15px 15px 0;
            display: flex;
            flex-direction: column;
            align-items: center;
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

        .main-container {
            margin-left: 220px;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
        }

        .outer-square {
            width: 500px;
            height: 500px;
            background-color: #DD99DD;
            display: flex;
            justify-content: center;
            align-items: center;
            border-radius: 30px;
            box-shadow: 0 8px 15px rgba(0, 0, 0, 0.3);
            border: 4px solid white;
        }

        .middle-square {
            width: 420px;
            height: 420px;
            background-color: #fff;
            display: flex;
            justify-content: center;
            align-items: center;
            border-radius: 30px;
            box-shadow: 0 8px 15px rgba(0, 0, 0, 0.3);
        }

        .upload-box {
            width: 360px;
            background-color: #f9f9f9;
            padding: 20px;
            border-radius: 30px;
            box-shadow: 0 8px 15px rgba(0, 0, 0, 0.3);
            text-align: center;
        }

        .upload-header {
            font-size: 24px;
            font-weight: bold;
            color: #333;
            margin-bottom: 20px;
        }

        .form-group {
            margin-bottom: 15px;
        }

        .form-group label {
            display: block;
            font-size: 14px;
            margin-bottom: 5px;
            color: #555;
        }

        .form-group input {
            width: 100%;
            padding: 8px;
            font-size: 14px;
            border: 1px solid #ddd;
            border-radius: 4px;
            box-sizing: border-box;
        }

        .upload-btn {
            background-color: #3A8C8D;
            color: white;
            padding: 10px;
            border: none;
            border-radius: 25px;
            font-size: 16px;
            cursor: pointer;
            width: 100%;
            transition: background-color 0.3s ease;
        }

        .upload-btn:hover {
            background-color: #2A6F6D;
        }
    </style>
</head>
<body>

    <!-- Side Navigation Bar -->
    <div class="side-nav">
        <img src="images/image5.png" alt="Logo">
        <a href="studenthome">Dashboard 🏠</a>
        <a href="studentprofile">My Profile 👤</a>
        <a href="updatestudent">Update Profile ✏️</a>
        <a href="uploadproject">Upload Project 📤</a>
        <a href="portfoliostatus">Portfolio Status 📊</a>
        <a href="studentlogin">Logout 🚪</a>
    </div>

    <!-- Main Container -->
    <div class="main-container">
        <div class="outer-square">
            <div class="middle-square">
                <div class="upload-box">
                    <div class="upload-header">UPLOAD PROJECT</div>

                    <form action="uploadProject" method="post" enctype="multipart/form-data">
                        <div class="form-group">
                            <label for="projectFolder">Project Folder:</label>
                            <input type="file" id="projectFolder" name="projectFolder" required>
                        </div>
                        <div class="form-group">
                            <label for="roleDescription">Enter Your Role:</label>
                            <input type="text" id="roleDescription" name="roleDescription" required>
                        </div>
                        <div class="form-group">
                            <label for="skills">Skills Acquired:</label>
                            <input type="text" id="skills" name="skills" required>
                        </div>
                        <div class="form-group">
                            <button type="submit" class="upload-btn">Upload</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>

</body>
</html>
