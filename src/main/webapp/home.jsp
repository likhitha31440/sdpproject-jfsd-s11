<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Home</title>
    <style>
        .banner {
            background-image: url('images/image1.jpg');
            background-size: cover;
            background-position: center;
            height: 600px; /* Set the height */
            width: 100%;   /* Set the width to 100% of the container or specify a fixed width */
            border-radius: 60px; /* Rounded corners with a 20px radius */
        }
    </style>
</head>
<body>
    <%@ include file="mainnavbar.jsp" %>

    <!-- Image as background with rounded corners -->
    <div class="banner"></div>

</body>
</html>
