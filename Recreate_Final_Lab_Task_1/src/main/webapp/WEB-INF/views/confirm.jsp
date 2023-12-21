<%--
  Created by IntelliJ IDEA.
  User: apurbadebnath
  Date: 21/12/23
  Time: 6:25 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html" %>
<%@ page isELIgnored="false" %>
<html>
<head></head>
<body>
<h3>Registration Success</h3>

<p>Your registration is successful. Please visit login page.</p>

<p>Full Name: ${student.name}</p>
<p>Email: ${student.email}</p>
<p>Date Of Birth: ${student.dateOfBirth}</p>
<p>Date Of Birth: ${student.gender}</p>
<p>Quota: ${student.quota}</p>
<p>Country: ${student.country}</p>

<hr>

<a href="${pageContext.request.contextPath}">Home</a>

</body>
</html>
