<%--
  Created by IntelliJ IDEA.
  User: apurbadebnath
  Date: 26/12/23
  Time: 10:11 PM
  To change this template use File | Settings | File Templates.
--%>
<%--<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="java.util.List" %>
<%@ page import="dev.domain.User" %>
<%@ page import="java.util.Iterator" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.Date" %>
<html>
<head>
    <title>User List</title>
</head>
<body>
<h2>User List</h2>
<c:forEach var="user" items="${users}">
    <p>${user.fullname}</p>
</c:forEach>
</body>
</html>--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Student List</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 20px;
        }

        h2 {
            color: #007bff;
        }

        table {
            border-collapse: collapse;
            width: 100%;
            margin-top: 20px;
        }

        th, td {
            border: 1px solid #ddd;
            padding: 8px;
            text-align: left;
        }

        th {
            background-color: #f2f2f2;
        }

        button {
            background-color: #007bff;
            color: #fff;
            padding: 8px 15px;
            cursor: pointer;
            border: none;
        }

        a {
            text-decoration: none;
        }

        .action-buttons {

            display: flex;
            gap: 10px;
        }
    </style>
</head>
<body>

<h2>Student List</h2>

<table>
    <thead>
    <tr>
        <th>ID</th>
        <th>Name</th>
        <th>Email</th>
        <th>Date Of Birth</th>
        <th>Gender</th>
        <th>Quota</th>
        <th>Country</th>
        <!-- Add more columns as needed -->
        <th>Actions</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="user" items="${users}">
        <tr>
            <td>${user.id}</td>
            <td>${user.fullname}</td>
            <td>${user.email}</td>
            <td>${user.dateOfBirth}</td>
            <td>${user.gender}</td>
            <td>${user.quota}</td>
            <td>${user.country}</td>
            <!-- Add more columns as needed -->
            <td class="action-buttons">
                <a href="<c:url value='/students/${user.id}'/>"><button type="button">Details</button></a>
                <a href="<c:url value='/students/${user.id}/edit' />"><button type="button">Update</button></a>
                <a href="<c:url value='/students/${user.id}/delete' />"><button type="button">Delete</button></a>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>

<br/>

<a href="${pageContext.request.contextPath}/create"><button type="button">Add New Student</button></a>

</body>
</html>


