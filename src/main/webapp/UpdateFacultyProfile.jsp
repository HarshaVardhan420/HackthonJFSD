<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Update Faculty</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f9;
            margin: 0;
            padding: 0;
        }

        .container {
            width: 50%;
            margin: 50px auto;
            background-color: white;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 15px rgba(0, 0, 0, 0.1);
        }

        h2 {
            text-align: center;
            color: #333;
        }

        form {
            display: flex;
            flex-direction: column;
        }

        label {
            font-weight: bold;
            margin: 10px 0 5px;
        }

        input {
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #ccc;
            border-radius: 4px;
            font-size: 14px;
        }

        input[type="submit"] {
            background-color: #4CAF50;
            color: white;
            border: none;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background-color: #45a049;
        }

        .back-btn {
            margin-top: 20px;
            text-align: center;
        }

        .back-btn a {
            text-decoration: none;
            color: #fff;
            background-color: #4CAF50;
            padding: 10px 20px;
            border-radius: 5px;
            font-weight: bold;
        }

        .back-btn a:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
<%@include file="adminnavbar.jsp"%>
<div class="container">
    <h2>Update Faculty</h2>

    <form action="<spring:url value='updateFaculty' />" method="post">
        <!-- Assuming the faculty ID is passed to identify which record to update -->
        <label for="id">ID</label>
        <input type="number" id="id" name="id" value="${faculty.id}">

        <label for="name">Full Name</label>
        <input type="text" id="name" name="name" required="required" value="${faculty.name}" placeholder="Enter Full Name">

        <label for="email">Email</label>
        <input type="email" id="email" name="email" required="required" value="${faculty.email}" placeholder="Enter Email">

        <label for="contactno">Contact Number</label>
        <input type="text" id="contactno" name="contactno" required="required" value="${faculty.contactno}" placeholder="Enter Contact Number">

        <label for="password">Password</label>
        <input type="password" id="password" name="password" required="required" value="${faculty.password}" placeholder="Enter Password">

        <input type="submit" value="Update">
    </form>

    <div class="back-btn">
        <a href="<spring:url value='/home' />">Back to Home</a>
    </div>
</div>

</body>
</html>
