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
    </style>
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
        </tr>
        <c:forEach items="${studentList}" var="studentList">
            <tr>
                <td><c:out value="${studentList.id}"/></td>
<td><c:out value="${studentList.name}"/></td>
<td><c:out value="${studentList.gender}"/></td>                
<td><c:out value="${studentList.dateofbirth}"/></td>
<td><c:out value="${studentList.department}"/></td>
<td><c:out value="${studentList.gpa}"/></td>
<td><c:out value="${studentList.location}"/></td>
<td><c:out value="${studentList.email}"/></td>
<td><c:out value="${studentList.contact}"/></td>
<td><c:out value="${studentList.status}"/></td>
                
            </tr>
        </c:forEach>
    </table>
</body>
</html>
