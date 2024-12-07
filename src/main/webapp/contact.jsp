<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contact Us</title>
    <style>
        /* General Styles */
        body {
            font-family: 'Arial', sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f7fc;
            color: #333;
        }
        
        h3, h4 {
            color: #333;
            margin-bottom: 15px;
        }

        /* Navbar Styles */
        .navbar {
            background-color: #4CAF50;
            padding: 10px 0;
            text-align: center;
        }
        
        .navbar a {
            color: white;
            padding: 14px 20px;
            text-decoration: none;
            font-size: 18px;
            display: inline-block;
        }

        .navbar a:hover {
            background-color: #45a049;
        }

        /* Container */
        .container {
            max-width: 1200px;
            margin: 40px auto;
            padding: 20px;
            background-color: #fff;
            box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
        }

        /* Profile Section */
        .profile-section {
            display: flex;
            align-items: center;
            margin-bottom: 30px;
        }
        
        .profile-section img {
            width: 150px;
            height: 150px;
            object-fit: cover;
            border-radius: 50%;
            margin-right: 20px;
        }
        
        .profile-info h4 {
            font-size: 24px;
            margin-bottom: 5px;
        }
        
        .profile-info p {
            margin: 5px 0;
        }

        /* Contact Info Section */
        .contact-info {
            margin-bottom: 30px;
        }

        .contact-info p {
            font-size: 16px;
            line-height: 1.6;
        }

        .contact-info a {
            color: #4CAF50;
        }

        .contact-info a:hover {
            text-decoration: underline;
        }

        /* Contact Form */
        .contact-form {
            background-color: #f9f9f9;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        .contact-form label {
            display: block;
            font-size: 16px;
            margin-bottom: 8px;
        }

        .contact-form input, .contact-form textarea {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border-radius: 5px;
            border: 1px solid #ddd;
            font-size: 16px;
        }

        .contact-form input[type="email"], 
        .contact-form input[type="text"] {
            max-width: 500px;
        }

        .contact-form button {
            padding: 12px 20px;
            font-size: 18px;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        .contact-form button:hover {
            background-color: #45a049;
        }

        /* Footer */
        .footer {
            text-align: center;
            margin-top: 40px;
            padding: 20px 0;
            background-color: #4CAF50;
            color: white;
        }

        /* Responsive Styles */
        @media screen and (max-width: 768px) {
            .container {
                padding: 15px;
            }

            .profile-section {
                flex-direction: column;
                align-items: flex-start;
            }

            .profile-section img {
                width: 120px;
                height: 120px;
                margin-bottom: 15px;
            }

            .contact-form input, .contact-form textarea {
                max-width: 100%;
            }
        }
    </style>
</head>
<body>
    <div class="navbar">
        <a href="login">Home</a>
        <a href="about">About</a>
       
        <a href="contact">Contact Us</a>
    </div>

    <div class="container">
        <h3>Contact Us</h3>
        <div class="profile-section">
            <img src="admin.jpg" alt="Profile Picture">
            <div class="profile-info">
                <h4>xxxx</h4>
                <p>Role: Developer, ERP Specialist</p>
                <p>Email: <a href="mailto:aff33072@gmail.com">aff33072@gmail.com</a></p>
                <p>Phone: +91 12345 67890</p>
            </div>
        </div>
        <div class="contact-info">
            <h4>Reach Us</h4>
            <p>If you have any questions or need assistance with our ERP system, feel free to reach out:</p>
            <p><strong>Address:</strong> 123, ERP Building, xxx, India</p>
            <p><strong>Support Email:</strong> <a href="mailto:support@erp.com">support@erp.com</a></p>
            <p><strong>Support Phone:</strong> +91 12345 67890</p>
        </div>
        <div class="contact-form">
            <h4>Send Us a Message</h4>
            <form method="post" action="sendEmailHandler">
                <label for="fromEmail">Your Email:</label>
                <input type="email" id="fromEmail" name="fromEmail" placeholder="aff33072@gmail.com" required>
                <label for="toEmail">Recipient Email:</label>
                <input type="email" id="toEmail" name="toEmail" placeholder="Recipient's Email" required>
                <label for="subject">Subject:</label>
                <input type="text" id="subject" name="subject" placeholder="Subject" required>
                <label for="message">Message:</label>
                <textarea id="message" name="message" placeholder="Your Message" rows="5" required></textarea>
                <button type="submit">Send</button>
            </form>
        </div>
    </div>

    <div class="footer">
        © 2024 ERP System | ABC University
    </div>
</body>
</html>
