<%@ page contentType="text/html" %>
<%@ page isELIgnored="false" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Student Page</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 20px;
        }

        h3 {
            color: #007bff;
        }

        form {
            margin-top: 20px;
        }

        label {
            display: block;
            margin-bottom: 5px;
        }

        input,
        select {
            margin-bottom: 10px;
        }

        .error-message {
            color: red;
            margin-top: 5px;
        }

        input[type="submit"] {
            background-color: #007bff;
            color: #fff;
            padding: 8px 15px;
            cursor: pointer;
        }
        button[type="button"] {
            background-color: #007bff;
            color: #fff;
            padding: 8px 15px;
            cursor: pointer;
        }
        a {
            margin-top: 10px;
            display: block;
            text-decoration: none;
            color: #007bff;
        }
    </style>
</head>
<body>
<h3>Add Student Page</h3>

<form:form method="post" action="store" modelAttribute="user">

    <fieldset>
        <legend>Student Information</legend>

        <label for="fullname">Full Name</label>
        <form:input path="fullname" id="fullname"/>
        <form:errors path="fullname" cssClass="error-message"/>

        <br>

        <label>Gender</label>
        <form:radiobutton path="gender" value="MALE"/>MALE
        <form:radiobutton path="gender" value="FEMALE"/>FEMALE
        <form:errors path="gender" cssClass="error-message"/>

        <br>

        <label for="dateOfBirth">Date Of Birth</label>
        <form:input type="date" path="dateOfBirth" id="dateOfBirth"/>
        <form:errors path="dateOfBirth" cssClass="error-message"/>

        <br>

        <label for="quotaCheckbox">Quota:</label>
        <input type="checkbox" name="quotaCheckbox" id="quotaCheckbox"/>

        <br>

        <label for="country">Country:</label>
        <select name="country" id="country">
            <option value="Bangladesh">Bangladesh</option>
            <option value="Afghanistan">Afghanistan</option>
            <option value="China">China</option>
            <option value="India">India</option>
            <option value="Indonesia">Indonesia</option>
            <option value="Japan">Japan</option>
            <option value="South Korea">South Korea</option>
            <option value="Malaysia">Malaysia</option>
            <option value="Thailand">Thailand</option>
            <option value="Vietnam">Vietnam</option>
            <!-- Add more options as needed -->
        </select>

        <br><br>

        <label for="email">Email</label>
        <form:input path="email" id="email"/>
        <form:errors path="email" cssClass="error-message"/>

        <br><br>

        <label for="password">Password</label>
        <form:input path="password" id="password"/>
        <form:errors path="password" cssClass="error-message"/>
    </fieldset>

    <br>

    <input type="submit" value="Register" />
    <a href="${pageContext.request.contextPath}"><button type="button">Home</button></a>
    <a href="${pageContext.request.contextPath}/students"><button type="button">Student List</button></a>

</form:form>


</body>
</html>
