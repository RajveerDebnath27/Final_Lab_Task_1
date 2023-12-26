<%@ page contentType="text/html" %>
<%@ page isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registration Success</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 20px;
        }

        h3 {
            color: #007bff;
        }

        p {
            margin-bottom: 10px;
        }

        hr {
            margin-top: 20px;
            margin-bottom: 20px;
        }

        a {
            margin-right: 10px;
            text-decoration: none;
            color: #007bff;
        }
    </style>
</head>
<body>
<h3>Registration Success</h3>

<p>Your registration is successful. Please visit the login page.</p>

<p>Full Name: <c:out value="${user.fullname}" /></p>
<p>Email: <c:out value="${user.email}" /></p>
<p>Date Of Birth: <c:out value="${user.dateOfBirth}" /></p>

<hr>

<a href="${pageContext.request.contextPath}">Home</a>
<a href="${pageContext.request.contextPath}/students">Student List</a>
</body>
</html>
