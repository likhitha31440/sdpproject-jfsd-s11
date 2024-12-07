<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Teacher Home</title>
    <style>
        /* Styling for the welcome message box */
        .welcome-box {
            margin: 20px auto;
            text-align: center;
            background-color: #e0f7fa;
            border: 2px solid #0288d1;
            padding: 15px;
            border-radius: 8px;
            width: 80%;
            font-size: 1.2em;
            color: #004c8c;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.2);
        }

        /* General table formatting */
        table {
            margin: 20px auto;
            max-width: 1200px;
            border-collapse: collapse;
            table-layout: auto;
            background-color: #fff;
        }

        table,
        th,
        td {
            border: 2px solid black;
        }

        th,
        td {
            padding: 10px;
            text-align: center;
            word-wrap: break-word;
        }

        th {
            background-color: black;
            color: white;
        }

        tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        tr:nth-child(odd) {
            background-color: #fff;
        }
    </style>
</head>
<body>
    <%@include file="teachernavbar.jsp" %>

    <!-- Welcome box under navbar -->
    <div class="welcome-box">
        <h3>Welcome Teacher</h3>
        <p>Total Students: <c:out value="${count}" /></p>
    </div>

   
</body>
</html>
