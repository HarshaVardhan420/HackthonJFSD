<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>View All Faculty</title>
    <style>
    body {
    font-family: Arial, sans-serif;
    background-color: #f4f4f9;
    margin: 0;
    padding: 0;
}

.container {
    width: 80%;
    margin: 50px auto;
    background-color: white;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 0 15px rgba(0, 0, 0, 0.1);
    display: flex;
    justify-content: center; /* Centers content horizontally */
    flex-direction: column; /* Keeps the content stacked vertically */
    align-items: center; /* Centers content in the middle */
}

h2 {
    text-align: center;
    color: #333;
}

table {
    width: 90%; /* Slightly smaller to make it visually centered */
    max-width: 100%; /* Prevents overflow */
    border-collapse: collapse;
    margin-top: 20px;
}

th, td {
    padding: 12px;
    text-align: left;
    border: 1px solid #ddd;
}

th {
    background-color: #4CAF50;
    color: white;
}

tr:nth-child(even) {
    background-color: #f2f2f2;
}

tr:hover {
    background-color: #ddd;
}

.back-btn {
    margin-top: 20px;
    display: block;
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
    <h2>All Faculty Members</h2>
    
    <table>
        <thead>
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Username</th>
                
                <th>Email</th>
                <th>Contact No</th>
            </tr>
        </thead>
        <tbody>
            <!-- Loop through the list of faculty members passed from the controller -->
            <c:forEach var="faculty" items="${faculty}">
                <tr>
                    <td>${faculty.id}</td>
                    <td>${faculty.name}</td>
                    <td>${faculty.username}</td>
                    
                    <td>${faculty.email}</td>
                    <td>${faculty.contactno}</td>
                </tr>
            </c:forEach>
        </tbody>
    </table>

    <div class="back-btn">
        <a href="<spring:url value='/home' />">Back to Home</a>
    </div>
</div>

</body>
</html>
