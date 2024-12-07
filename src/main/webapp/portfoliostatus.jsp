<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Portfolio Status</title>
    <style>
        /* Container for toggle buttons and sliding content */
        .portfolio-container {
            width: 60%;
            margin: auto;
            border: 1px solid #ccc;
            padding: 20px;
            overflow: hidden;
            position: relative;
            border-radius: 20px; /* Increased rounded corners for the outer container */
        }

        /* Toggle Buttons */
        .toggle-buttons {
            display: flex;
            justify-content: space-around;
            margin-bottom: 20px;
        }

        .toggle-buttons button {
            padding: 12px 25px;
            cursor: pointer;
            border: none;
            background-color: #007bff;
            color: white;
            font-size: 16px;
            transition: background-color 0.3s ease;
            border-radius: 15px; /* Increased border-radius for buttons */
        }

        .toggle-buttons button:hover {
            background-color: #0056b3;
        }

        /* Sliding Container */
        .sliding-content {
            display: flex;
            transition: transform 0.5s ease;
            width: 200%; /* Twice the width to hold two sections side by side */
        }

        /* Individual Section Styling */
        .section {
            width: 50%;
            padding: 20px;
            box-sizing: border-box;
            border: 1px solid #ccc;
            border-radius: 20px; /* Increased border-radius for sections */
            margin: 10px;
        }

        /* Hide form section when not active */
        .section h2 {
            margin-top: 0;
        }

        /* Styling for the photo section */
        .portfolio-details {
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .portfolio-details .left {
            flex: 1;
        }

        .portfolio-details .right {
            max-width: 150px;
            margin-left: 20px;
        }

        .portfolio-details img {
            width: 120px;
            height: 120px;
            border-radius: 50%;
            border: 2px solid #ccc;
        }

        /* Additional field input styles */
        input[type="number"], input[type="text"], textarea {
            border: 1px solid #ccc;
            padding: 10px;
            width: 100%;
            border-radius: 15px; /* Increased border-radius for inputs and textarea */
            margin-bottom: 10px;
        }

        /* Button styling for forms */
        button[type="submit"] {
            padding: 12px 25px;
            background-color: #28a745;
            color: white;
            border: none;
            font-size: 16px;
            cursor: pointer;
            border-radius: 15px; /* Increased border-radius for submit button */
            transition: background-color 0.3s ease;
        }

        button[type="submit"]:hover {
            background-color: #218838;
        }

        /* Styling for milestone slider */
        .slider-container {
            margin-bottom: 10px;
        }

        .slider-container input[type="range"] {
            width: 100%;
            height: 8px;
            border-radius: 10px;
            background: #007bff;
            outline: none;
            transition: background 0.3s ease;
        }

        .slider-container input[type="range"]:hover {
            background: #0056b3;
        }

        .slider-container .slider-value {
            font-size: 16px;
            font-weight: bold;
            text-align: center;
        }
    </style>

    <script>
        function slideToSection(section) {
            const slidingContent = document.querySelector('.sliding-content');

            // Slide to the left for Current Status, right for Update Portfolio
            if (section === 'status') {
                slidingContent.style.transform = 'translateX(0%)';
            } else if (section === 'update') {
                slidingContent.style.transform = 'translateX(-50%)';
            }
        }
    </script>
</head>
<body>

<div class="portfolio-container">
    <!-- Toggle Buttons -->
    <div class="toggle-buttons">
        <button onclick="slideToSection('status')">Current Portfolio Status</button>
        <button onclick="slideToSection('update')">Update Portfolio</button>
    </div>

    <!-- Sliding Content -->
    <div class="sliding-content">
        <!-- Current Portfolio Status Section -->
        <div class="section" id="currentStatusSection">
            <h2>Current Portfolio Status</h2>
            
            <!-- Portfolio Details -->
            <div class="portfolio-details">
                <!-- Left: Portfolio Details -->
                <div class="left">
                    <p><strong>Project Name:</strong> <c:out value="${portfolio.projectName}" /></p>
                    <p><strong>Completion Level:</strong> <c:out value="${portfolio.completionLevel}" />%</p>
                    <p><strong>Skills Acquired:</strong> <c:out value="${portfolio.skills}" /></p>
                    <p><strong>Current Milestone:</strong> <c:out value="${portfolio.currentMilestone}" /></p>
                    <p><strong>Notes:</strong> <c:out value="${portfolio.notes}" /></p>
                </div>

                <!-- Right: User's Photo -->
                <div class="right">
                    <strong>User's Photo:</strong>
                    <img src="<c:out value="images/portfolio_photo.jpg/" />" alt="User's Photo" />
                </div>
            </div>
        </div>

        <!-- Update Portfolio Section -->
        <div class="section" id="updatePortfolioSection">
            <h2>Update Portfolio</h2>
            <form action="uploadPortfolioPhoto" method="post" enctype="multipart/form-data">
                <div>
                    <label for="completionLevel">Update Completion Level (%):</label>
                    <input type="number" id="completionLevel" name="completionLevel" required>
                </div>
                
                <!-- Milestone Slider -->
                <div class="slider-container">
                    <label for="milestoneSlider">Set Milestone Completion (%):</label>
                    <input type="range" id="milestoneSlider" name="milestoneSlider" min="0" max="100" step="1" value="50" oninput="updateSliderValue()">
                    <div class="slider-value" id="sliderValue">50%</div>
                </div>

                <div>
                    <label for="newSkills">Skills Acquired (optional):</label>
                    <input type="text" id="newSkills" name="newSkills">
                </div>
                <div>
                    <label for="notes">Notes:</label>
                    <textarea id="notes" name="notes"></textarea>
                </div>

                <!-- Photo upload for the user's photo -->
                <div class="photo-upload">
                    <label for="userPhoto">Upload Your Photo:</label>
                    <input type="file" id="userPhoto" name="userPhoto" accept="image/*">
                </div>

                <button type="submit">Update Portfolio</button>
            </form>
        </div>
    </div>
</div>

<script>
    // Update slider value display
    function updateSliderValue() {
        const slider = document.getElementById("milestoneSlider");
        const sliderValue = document.getElementById("sliderValue");
        sliderValue.textContent = slider.value + "%";
    }
</script>

</body>
</html>
