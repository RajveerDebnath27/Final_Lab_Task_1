<%--
  Created by IntelliJ IDEA.
  User: apurbadebnath
  Date: 19/12/23
  Time: 4:03 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Student List</title>
</head>
<body>
<h2>Student List</h2>
<table border="1">
  <thead>
  <tr>
    <th>ID</th>
    <th>Name</th>
    <th>Email</th>
    <!-- Add more columns as needed -->
    <th>Actions</th>
  </tr>
  </thead>
  <tbody>
  <c:forEach var="student" items="${students}">
    <tr>
      <td>${student.id}</td>
      <td>${student.name}</td>
      <td>${student.email}</td>
      <!-- Add more columns as needed -->
      <td>
        <a href="<c:url value='/students/${student.id}'/>">Details</a>
        <a href="<c:url value='/students/${student.id}/edit' />">Edit</a>
        <a href="<c:url value='/students/${student.id}/delete' />">Delete</a>
      </td>
    </tr>
  </c:forEach>
  </tbody>
</table>
<br/>
<a href="<c:url value='/students/new' />">Add New Student</a>
</body>
</html>

