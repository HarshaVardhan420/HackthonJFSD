<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Admin Navbar</title>
    <style>
        /* Sidenav Container */
        .sidenav {
            height: 100vh; /* Full height */
            width: 250px; /* Sidebar width */
            position: fixed; /* Fixed position */
            top: 0;
            left: 0;
            background-color: #333; /* Dark background color */
            overflow-x: hidden; /* Disable horizontal scroll */
            padding-top: 20px;
            box-shadow: 2px 0 5px rgba(0, 0, 0, 0.5); /* Subtle shadow */
        }

        /* Sidenav Links */
        .sidenav a {
            padding: 15px 25px;
            text-decoration: none;
            font-size: 18px;
            color: white;
            display: block;
            transition: 0.3s; /* Smooth hover effect */
        }

        /* Hover effect on links */
        .sidenav a:hover {
            background-color: #575757; /* Darker shade on hover */
            color: #f1f1f1;
        }

        /* Content area */
        .main-content {
            margin-left: 250px; /* Same width as the sidenav */
            padding: 20px;
        }

        /* Active link style */
        .sidenav a.active {
            background-color: #4CAF50; /* Highlighted color for active link */
            color: white;
        }
    </style>
</head>
<body>

    <!-- Sidenav -->
    <div class="sidenav">
        <a href="/home" class="active">Home</a>
        <a href="facultyregistration">Faculty Registration</a>
        <a href="studentregistration">Student Registration</a>
        <a href="/viewallfaculty">View All Faculty</a>
        <a href="/displayallstudents">View All Students</a>
        <a href="UpdateFacultyProfile">Update Faculty</a>
        <a href="UpdateStudentProfile">Update Student</a>
        <a href="/deletefaculty">Delete Faculty</a>
        <a href="/deletestudent">Delete Student</a>
        <a href="/logout">Logout</a>
    </div>

    <!-- Main Content -->
    <div class="main-content">
        
    </div>

</body>
</html>
