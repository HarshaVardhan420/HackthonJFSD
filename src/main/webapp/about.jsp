<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>About ERP System</title>
    <style>
        body {
            margin: 0;
            font-family: Arial, sans-serif;
            background-color: #f9f9f9;
            color: #333;
        }

        .container {
            max-width: 1200px;
            margin: 0 auto;
            padding: 20px;
        }

        h3 {
            font-size: 28px;
            color: #4CAF50;
            text-align: center;
            margin-top: 20px;
        }

        .about-content {
            background: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            margin-top: 20px;
            line-height: 1.8;
        }

        .about-content h4 {
            margin-top: 20px;
            color: #4CAF50;
        }

        .about-content p {
            margin: 10px 0;
        }

        ul {
            margin: 10px 0 20px 20px;
            list-style-type: disc;
        }

        .highlights {
            background: #f1f8e9;
            border-left: 4px solid #4CAF50;
            padding: 15px;
            margin: 20px 0;
            border-radius: 4px;
        }

        .footer {
            text-align: center;
            padding: 15px;
            background-color: #333;
            color: #fff;
            margin-top: 30px;
        }
    </style>
</head>
<body>
    <%@include file="navbar.jsp" %>
    <div class="container">
        <h3>About Us</h3>
        <div class="about-content">
            <h4>Welcome to Our ERP System</h4>
            <p>Our Enterprise Resource Planning (ERP) system is a cutting-edge platform designed to bring operational excellence to educational institutions. By integrating various academic and administrative functions into a unified system, we enable seamless data management, effective communication, and efficient decision-making.</p>
            
            <h4>Why Choose Our ERP System?</h4>
            <ul>
                <li><strong>Comprehensive Features:</strong> Manage student records, attendance, grading, scheduling, and more.</li>
                <li><strong>User-Friendly Design:</strong> Simplified interfaces tailored for administrators, faculty, and students.</li>
                <li><strong>Scalability:</strong> Built to support institutions of all sizes, from schools to universities.</li>
                <li><strong>Data Security:</strong> Industry-standard encryption ensures the confidentiality of sensitive data.</li>
                <li><strong>Customizable:</strong> Adaptable to specific institutional requirements and workflows.</li>
            </ul>

            <h4>Core Modules</h4>
            <div class="highlights">
                <ul>
                    <li><strong>Student Management:</strong> Efficiently track student admissions, personal information, and performance.</li>
                    <li><strong>Attendance Tracking:</strong> Automated attendance records with real-time insights for faculty and parents.</li>
                    <li><strong>Grading and Assessments:</strong> Manage academic grading with customizable assessment templates.</li>
                    <li><strong>Scheduling:</strong> Organize classes, exams, and events with minimal effort.</li>
                    <li><strong>Communication Tools:</strong> Secure messaging and notifications for faculty, students, and parents.</li>
                    <li><strong>Library Management:</strong> Keep track of book inventory, borrowing, and returns.</li>
                    <li><strong>Finance and Fees:</strong> Streamlined fee management, payment tracking, and reporting.</li>
                </ul>
            </div>
            <h4>Benefits of Using Our ERP System</h4>
            <p>By implementing our ERP solution, your institution can:</p>
            <ul>
                <li>Streamline operations, reducing manual effort and errors.</li>
                <li>Enhance collaboration between departments and stakeholders.</li>
                <li>Make data-driven decisions with real-time insights and analytics.</li>
                <li>Provide a  experience for students, faculty, and administrators.</li>
                <li>Ensure compliance with institutional and regulatory standards.</li>
            </ul>

            <h4>Our Vision</h4>
            <p>We envision a future where technology drives the growth and success of educational institutions. Our ERP system is designed to empower educators, administrators, and students, fostering an environment of learning and innovation.</p>
        </div>
    </div>
    <div class="footer">
        © 2024 ERP System | Driving Excellence in Education
    </div>
</body>
</html>