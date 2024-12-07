<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Faculty Profile</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
        }

        .profile-container {
            max-width: 800px;
            margin: 20px auto;
            background: white;
            padding: 20px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
        }

        .profile-header {
            text-align: center;
            margin-bottom: 20px;
        }

        .profile-header h1 {
            color: #333;
        }

        .profile-details {
            line-height: 1.8;
        }

        .profile-details label {
            font-weight: bold;
        }

        .actions {
            margin-top: 20px;
            text-align: center;
        }

        .actions a {
            display: inline-block;
            padding: 10px 20px;
            text-decoration: none;
            color: white;
            background: #4CAF50;
            border-radius: 5px;
            margin: 5px;
            transition: background 0.3s;
        }

        .actions a:hover {
            background: #45a049;
        }
    </style>
</head>
<body>
    <div class="profile-container">
        <div class="profile-header">
            <h1>Faculty Profile</h1>
        </div>
        <div class="profile-details">
            <p><label>ID:</label> ${faculty.id}</p>
            <p><label>Name:</label> ${faculty.name}</p>
            <p><label>Email:</label> ${faculty.email}</p>
            <p><label>Department:</label> ${faculty.department}</p>
            <p><label>Phone:</label> ${faculty.phone}</p>
            <p><label>Courses Assigned:</label> ${faculty.courses}</p>
        </div>
        <div class="actions">
            <a href="editFaculty?id=${faculty.id}">Edit Profile</a>
            <a href="viewCourses?id=${faculty.id}">View Courses</a>
        </div>
    </div>
</body>
</html>
