<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Student Registration</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f9f9f9;
            margin: 0;
            padding: 0;
        }

        .container {
            width: 50%;
            margin: 50px auto;
            background-color: #fff;
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
<%@include file="adminnavbar.jsp" %>
<div class="container">
    <h2>Student Registration</h2>

    <form action="<spring:url value='/registerStudent' />" method="post">
        <label for="id">Student ID</label>
        <input type="number" id="id" name="id" required="required" placeholder="Enter Student ID">

        <label for="name">Full Name</label>
        <input type="text" id="name" name="name" required="required" placeholder="Enter Full Name">

        <label for="fatherName">Father's Name</label>
        <input type="text" id="fatherName" name="fatherName" required="required" placeholder="Enter Father's Name">

        <label for="motherName">Mother's Name</label>
        <input type="text" id="motherName" name="motherName" required="required" placeholder="Enter Mother's Name">

        <label for="contact">Contact Number</label>
        <input type="text" id="contact" name="contact" required="required" placeholder="Enter Contact Number">

        <label for="address">Address</label>
        <input type="text" id="address" name="address" required="required" placeholder="Enter Address">

        <label for="password">Password</label>
        <input type="password" id="password" name="password" required="required" placeholder="Enter Password">

        <label for="status">Status</label>
        <input type="text" id="status" name="status" required="required" placeholder="Enter Status (e.g., Active)">

        <input type="submit" value="Register">
    </form>

    <div class="back-btn">
        <a href="<spring:url value='/home' />">Back to Home</a>
    </div>
</div>

</body>
</html>
