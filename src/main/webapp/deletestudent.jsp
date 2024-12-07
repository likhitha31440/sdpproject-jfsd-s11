<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>View All Students</title>
    <style>
        table {
            width: 100%;
            max-width: 1200px;
            margin: 20px auto;
            border-collapse: collapse;
            table-layout: auto;
            background-color: #fff;
        }

        table, th, td {
            border: 2px solid black;
        }

        th, td {
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

        .delete-button {
            color: red;
            text-decoration: none;
            font-weight: bold;
        }

        .delete-button:hover {
            text-decoration: underline;
        }
    </style>
    <script>
        function confirmDelete(name) {
            return confirm(`Are you sure you want to delete the record for ${name}?`);
        }
    </script>
</head>
<body>
    <%@include file="teachernavbar.jsp" %>
    <h3 style="text-align: center;"><u>View All Students</u></h3>
    <table>
        <tr>
            <th>ID</th>
            <th>NAME</th>
            <th>GENDER</th>
            <th>DATE OF BIRTH</th>
            <th>DEPARTMENT</th>
            <th>GPA</th>
            <th>LOCATION</th>
            <th>EMAIL</th>
            <th>CONTACT</th>
            <th>STATUS</th>
            <th>ACTION</th>
        </tr>
        <c:forEach items="${studentList}" var="student">
            <tr>
                <td><c:out value="${student.id}"/></td>
                <td><c:out value="${student.name}"/></td>
                <td><c:out value="${student.gender}"/></td>
                <td><c:out value="${student.dateofbirth}"/></td>
                <td><c:out value="${student.department}"/></td>
                <td><c:out value="${student.gpa}"/></td>
                <td><c:out value="${student.location}"/></td>
                <td><c:out value="${student.email}"/></td>
                <td><c:out value="${student.contact}"/></td>
                <td><c:out value="${student.status}"/></td>
                <td>
                    <a href='<c:url value="delete?id=${student.id}"/>' 
                       class="delete-button" 
                       onclick="return confirmDelete('${student.name}');">Delete</a>
                </td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>
