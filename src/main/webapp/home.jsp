<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>College ERP Dashboard</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Segoe UI', Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f9;
            background-image: url('images/college-campus.jpg');
            background-size: cover;
            background-attachment: fixed;
            color: #333;
            display: flex;
            flex-direction: column;
            min-height: 100vh;
        }

        .content {
            flex: 1; /* Pushes the footer to the bottom */
        }

        .header {
            background-color: #4CAF50;
            color: white;
            padding: 10px 20px;
            display: flex;
            justify-content: space-between;
            align-items: center;
            position: relative;
            box-shadow: 0px 2px 5px rgba(0, 0, 0, 0.2);
        }

        .header .logo {
            font-size: 24px;
            font-weight: bold;
            text-transform: uppercase;
            letter-spacing: 1px;
        }

        .header a {
            color: white;
            margin: 0 15px;
            text-decoration: none;
            font-weight: bold;
            position: relative;
            font-size: 16px;
        }

        .header a:hover {
            text-decoration: underline;
        }

        .dropdown {
            position: relative;
            display: inline-block;
        }

        .dropdown-content {
            display: none;
            position: absolute;
            background-color: white;
            box-shadow: 0px 8px 16px rgba(0, 0, 0, 0.2);
            z-index: 1;
            border-radius: 4px;
            overflow: hidden;
        }

        .dropdown-content a {
            color: #333;
            padding: 10px 20px;
            text-decoration: none;
            display: block;
            transition: background-color 0.3s;
        }

        .dropdown-content a:hover {
            background-color: #f4f4f4;
        }

        .dropdown:hover .dropdown-content {
            display: block;
        }

        .radial-container {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 70vh;
            position: relative;
            text-align: center;
        }

        .central-logo {
            position: relative;
            width: 200px;
            height: 200px;
            background-color: white;
            border-radius: 50%;
            display: flex;
            justify-content: center;
            align-items: center;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.2);
            overflow: hidden;
        }

        .central-logo img {
            width: 100%;
            height: 100%;
            object-fit: cover;
        }

        .welcome-text {
            margin-top: 20px;
            font-size: 24px;
            color: #333;
            font-weight: bold;
            text-shadow: 0 1px 3px rgba(0, 0, 0, 0.2);
        }
        .footer {
            background-color: #4CAF50;
            color: white;
            text-align: center;
            padding: 10px;
            position: relative;
            bottom: 0;
            width: 100%;
            box-shadow: 0px -2px 5px rgba(0, 0, 0, 0.2);
        }
    </style>
</head>
<body>
    <div class="header">
        <div class="logo">College ERP</div>
        <div>
            <div class="dropdown">
                <a href="#">Login</a>
                <div class="dropdown-content">
                    <a href="/login">Admin</a>
                    <a href="/facultyLogin">Faculty</a>
                    <a href="/studentLogin">Student</a>
                </div>
            </div>
            <a href="/about">About Us</a>
            <a href="/contact">Contact Us</a>
        </div>
    </div>

    <div class="content">
        <div class="radial-container">
            <div class="central-logo">
                <img src="images/university.jpeg" alt="University Logo">
            </div>
            <div class="welcome-text">
                Welcome to the College ERP System<br>
                Streamlining Academic and Administrative Tasks
            </div>
        </div>
    </div>

    <div class="footer">
        &copy; 2024 ABC College. All Rights Reserved.
    </div>
</body>
</html>