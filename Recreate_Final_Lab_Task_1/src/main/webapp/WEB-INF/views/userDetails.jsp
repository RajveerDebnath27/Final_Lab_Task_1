<%--
  Created by IntelliJ IDEA.
  User: apurbadebnath
  Date: 26/12/23
  Time: 10:11 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>User Details</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      margin: 20px;
    }

    h2 {
      color: #007bff;
    }

    p {
      margin: 5px 0;
    }

    button {
      background-color: #007bff;
      color: #fff;
      padding: 8px 15px;
      cursor: pointer;
      border: none;
    }
  </style>
</head>
<body>
<h2>User Details</h2>

<p>ID: ${user.id}</p>
<p>Name: ${user.fullname}</p>
<p>Email: ${user.email}</p>
<p>Date Of Birth: ${user.dateOfBirth}</p>
<p>Gender: ${user.gender}</p>
<p>Quota: ${user.quota}</p>
<p>Country: ${user.country}</p>
<!-- Add other user details as needed -->

<br>

<a href="${pageContext.request.contextPath}/students">
  <button type="button">Student List</button>
</a>
</body>
</html>

