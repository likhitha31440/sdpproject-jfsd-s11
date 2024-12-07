<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Project Details</title>
    
    <!-- Embedded CSS -->
    <style>
        /* General Reset */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        /* Body & Header Styles */
        body {
            font-family: Arial, Helvetica, sans-serif;
            background-color: #BDEFEF; /* Background color match navigation */
            line-height: 1.6;
        }

        /* Header Styling */
        header {
            background: #3A8C8D;
            color: #ffffff;
            padding: 10px 0;
            text-align: center;
            border-bottom: 4px solid #2A6F6D;
        }

        header h1 {
            font-size: 2.5rem;
        }

        /* Main Section - Project Details Container */
        .project-detail-box {
            background: #ffffff;
            margin: 20px auto;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            max-width: 900px;
            box-sizing: border-box;
        }

        .project-container {
            margin: 20px 0;
        }

        .project-info {
            text-align: left;
            margin: 10px 0;
            font-size: 1rem;
        }

        .project-info p {
            margin: 8px 0;
            line-height: 1.8;
        }

        .project-info a {
            color: #2A6F6D;
            text-decoration: none;
            font-weight: bold;
        }

        /* Navigation button */
        .navigation {
            margin: 20px 0;
            text-align: center;
        }

        .btn {
            display: inline-block;
            padding: 12px 25px;
            background: #3A8C8D;
            color: #fff;
            text-decoration: none;
            font-size: 1rem;
            border-radius: 25px;
            transition: background 0.3s ease;
        }

        .btn:hover {
            background: #2A6F6D;
        }

        /* Media Query for responsiveness */
        @media (max-width: 768px) {
            .project-detail-box {
                padding: 15px;
            }

            header h1 {
                font-size: 2rem;
            }
        }
    </style>
</head>
<body>
    <!-- Header Section -->
    <header>
        <h1>Online Social Media Platform</h1>
    </header>
    
    <!-- Main Content Section -->
    <div class="project-detail-box">
        <h2 style="text-align:center; color: #3A8C8D;">Project Details</h2>
        
        <div class="project-container">
            <!-- Displaying all the details dynamically -->
            <div class="project-info">
                <p><strong>Project Name:</strong> Online Social Media Platform</p>
                <p><strong>Description:</strong> A mobile social media application developed to connect people by allowing users to share posts, photos, join groups, and attend local events. The app focuses on fostering community interaction and social engagement.</p>
                <p><strong>Role:</strong> Lead Developer & UI Designer</p>
                <p><strong>Skills Acquired:</strong> Mobile app development, UI/UX design, JavaScript, React Native, problem-solving, database design, and teamwork skills.</p>
                <p><strong>Team Members:</strong> John Doe, Alice Smith, Bob Brown, Sarah White</p>
                <p><strong>Start Date:</strong> March 1, 2023</p>
                <p><strong>End Date:</strong> August 15, 2023</p>
                <p><strong>Project Folder:</strong> <a href="https://example.com/download/online-social-media-platform.zip" target="_blank">Download</a></p>
            </div>
        </div>

        <div class="navigation">
            <a href="studenthome" class="btn">Back to Dashboard</a>
        </div>
    </div>
    
</body>
</html> 
