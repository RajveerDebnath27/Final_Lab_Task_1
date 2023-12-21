<%--
  Created by IntelliJ IDEA.
  User: apurbadebnath
  Date: 18/12/23
  Time: 7:32 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Student Registration</title>
</head>
<body>
<h2>Student Registration</h2>

<form action="Store" method="post" modelAttribute="student">
  Name: <input type="text" name="name" required><br>
  Email: <input type="email" name="email" required><br>
  Date of Birth: <input type="date" name="dateOfBirth" id="dateOfBirth" required><br>
  Gender:
  <select name="gender" id="gender" required>
    <option value="MALE">Male</option>
    <option value="FEMALE">Female</option>
  </select><br>
  <!--Quota: <input type="text" name="quota" value="N/A" required><br>-->
  Quota: <input type="checkbox" name="checkboxState" value="quota" id="quota" required><br>
  Country: <input type="text" name="country" value="Bangladeshi" id="country" required><br>
  <input type="submit" value="Register">
</form>
</body>
</html>

