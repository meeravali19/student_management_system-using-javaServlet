<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Insert Student</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f5f5f5;
            padding: 20px;
            text-align: center;
        }
        h2 {
            color: #333;
        }
        form {
            margin-top: 20px;
            background-color: #fff;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
            width: 400px;
            margin: 0 auto;
        }
        label {
            display: block;
            margin-bottom: 10px;
            font-weight: bold;
            text-align: left;
        }
        input[type="text"],
        input[type="date"],
        select,
        input[type="email"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 20px;
            box-sizing: border-box;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
        input[type="submit"] {
            background-color: #4CAF50;
            color: white;
            padding: 12px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            width: 100%;
            font-size: 16px;
        }
        input[type="submit"]:hover {
            background-color: #45a049;
        }
        p {
            margin-top: 20px;
            font-weight: bold;
        }
        p.error {
            color: red;
        }
        p.success {
            color: green;
        }
    </style>
</head>
<body>

<jsp:include page="navigation.jsp" />

<h2>Insert New Student</h2>

<%-- Display success or error messages --%>
<% String message = (String) request.getParameter("message"); %>
<% String error = (String) request.getParameter("error"); %>

<% if (message != null && !message.isEmpty()) { %>
    <p class="success"><%= message %></p>
<% } else if (error != null && !error.isEmpty()) { %>
    <p class="error"><%= error %></p>
<% } %>

<form action="insertStudent" method="post">
    <label for="name">Name:</label>
    <input type="text" id="name" name="name" required>
    <label for="dateOfBirth">Date of Birth:</label>
    <input type="date" id="dateOfBirth" name="dateOfBirth" required>
    <label for="gender">Gender:</label>
    <select id="gender" name="gender" required>
        <option value="Male">Male</option>
        <option value="Female">Female</option>
        <option value="Other">Other</option>
    </select>
    <label for="email">Email:</label>
    <input type="email" id="email" name="email" required>
    <label for="phoneNumber">Phone Number:</label>
    <input type="text" id="phoneNumber" name="phoneNumber" required>
    <label for="address">Address:</label>
    <input type="text" id="address" name="address" required>
    <input type="submit" value="Add Student">
</form>

</body>
</html>
