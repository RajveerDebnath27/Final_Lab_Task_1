<%--
  Created by IntelliJ IDEA.
  User: apurbadebnath
  Date: 26/12/23
  Time: 10:13 PM
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
  <title>Delete User</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      margin: 20px;
    }

    h2 {
      color: #007bff;
    }

    p {
      margin-top: 10px;
    }
    button[type="button"] {
      background-color: #007bff;
      color: #fff;
      padding: 8px 15px;
      cursor: pointer;
    }
  </style>
</head>
<body>
<h2>Delete User</h2>
<p>${message}</p>

</body>
<a href="${pageContext.request.contextPath}/students"><button class="btn" type="button">Student List</button></a>
</html>


