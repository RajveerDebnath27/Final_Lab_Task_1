<%--
  Created by IntelliJ IDEA.
  User: apurbadebnath
  Date: 19/12/23
  Time: 4:04 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Edit Student</title>
</head>
<body>
<h2>Edit Student</h2>
<form action="<c:url value='/students/${student.id}/edit' />" method="post">
  <label for="name">Name:</label>
  <input type="text" id="name" name="name" value="${student.name}" required/><br/>

  <label for="email">Email:</label>
  <input type="email" id="email" name="email" value="${student.email}" required/><br/>

  <!-- Add more fields for other attributes -->

  <button type="submit">Save Changes</button>
</form>
<br/>
<a href="<c:url value='/students/${student.id}' />">Cancel</a>
</body>
</html>
