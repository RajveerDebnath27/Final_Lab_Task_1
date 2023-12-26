<%--
  Created by IntelliJ IDEA.
  User: apurbadebnath
  Date: 27/12/23
  Time: 1:03 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Confirmation Page</title>
  <link rel="stylesheet" href="/path/to/your/custom.css">
  <!-- Optionally, include Bootstrap for better styling -->
  <!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"> -->
  <style>
    body {
      font-family: Arial, sans-serif;
    }

    .confirmation-container {
      text-align: center;
      margin-top: 50px;
    }

    h2 {
      color: #007bff;
    }

    .success-message {
      color: green;
      font-weight: bold;
    }

    .action-link {
      margin-right: 10px;
      text-decoration: none;
      color: #007bff;
    }
    button[type="button"] {
      background-color: #007bff;
      color: #fff;
      padding: 8px 15px;
      cursor: pointer;
    }

    /* Optionally, customize Bootstrap button styles */
    /* .btn {
        background-color: #007bff;
        color: #fff;
    } */
  </style>
</head>
<body>

<div class="confirmation-container">
  <h2>Confirmation</h2>
  <c:if test="${not empty message}">
    <div class="success-message">${message}</div>
  </c:if>
  <p>Thank you for your action!</p>

  <a href="${pageContext.request.contextPath}/../.."><button class="btn" type="button">Student List</button></a>
</div>

</body>
</html>

