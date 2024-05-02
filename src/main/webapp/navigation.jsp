<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="javax.servlet.http.HttpSession" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Navigation Bar</title>

    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f5f5f5;
            margin: 0;
            padding: 0;
        }

        nav {
            background-color: #f0f8ff; /* Light blue */
            padding: 5px;
            text-align: center;
            display: flex;
            justify-content: space-between;
            align-items: center;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
        }

        nav a {
            text-decoration: none;
            color: #333;
            padding: 8px 15px;
            border-radius: 3px;
            background-color: #add8e6; /* Light blue */
            transition: background-color 0.3s, color 0.3s;
            font-size: 14px;
        }

        nav a:hover {
            background-color: #87ceeb; /* Lighter blue on hover */
            color: #fff; /* White text on hover */
        }

        nav button {
            background-color: #ff6347; /* Red */
            color: #fff;
            border: none;
            cursor: pointer;
            padding: 8px 15px;
            border-radius: 3px;
            transition: background-color 0.3s;
            font-size: 14px;
        }

        nav button:hover {
            background-color: #cc4c37; /* Darker red on hover */
        }
    </style>
</head>
<body>

<%
    HttpSession session1 = request.getSession();
    String rollNumber = (String) session1.getAttribute("username");
%>

<nav>
    <div>
        <a href="add.jsp">Add Student</a>
        <a href="CreateorUpdate.jsp">Update Student</a>
        <a href="deleteStudent.jsp">Delete Student</a>
        <a href="ShowData.jsp">My Details</a>
        <a href="viewStudents.jsp">All Students</a>
    </div>
    <form action="Logout" method="post">
        <button type="submit">Logout</button>
    </form>
</nav>

</body>
</html>
