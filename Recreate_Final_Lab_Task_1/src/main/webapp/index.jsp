<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Hello Spring!</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 20px;
        }

        h2 {
            color: #007bff;
        }

        button {
            background-color: #007bff;
            color: #fff;
            padding: 8px 15px;
            cursor: pointer;
            border: none;
            margin-right: 10px;
        }
    </style>
</head>
<body>
<h2>Hello Spring!</h2>

<hr>

<a href="${pageContext.request.contextPath}/create">
    <button type="button">ADD Student</button>
</a>
<a href="${pageContext.request.contextPath}/students">
    <button type="button">Student List</button>
</a>
</body>
</html>

