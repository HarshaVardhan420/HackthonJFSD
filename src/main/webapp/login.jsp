<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Login Page</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css">
    <style>
        /* Centering the card in the viewport */
        .container {
            min-height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
        }

        /* Card styling */
        .card {
            border-radius: 12px;
            box-shadow: 0px 4px 12px rgba(0, 0, 0, 0.1);
            padding: 30px;
            max-width: 400px;
            width: 100%;
        }

        /* Form input fields */
        .form-control {
            border-radius: 8px;
        }

        /* Styling for the submit button */
        .btn-primary {
            background-color: #007bff;
            border: none;
            border-radius: 8px;
            transition: background-color 0.3s ease;
            width: 100%;
        }
        
        .btn-primary:hover {
            background-color: #0056b3;
        }

        /* Header styling */
        .card-title {
            font-size: 24px;
            margin-bottom: 20px;
            color: #333;
        }

        /* Label styling */
        label {
            font-weight: 500;
            color: #555;
        }
    </style>
</head>
<body>
    <%@include file="navbar.jsp" %>
    <div class="container">
        <div class="card">
            <div class="card-body">
                <h3 class="card-title text-center">Login</h3>
                <form action="checkadminlogin" method="post">
                    <div class="form-group mb-3">
                        <label for="username">Username:</label>
                        <input type="text" class="form-control" id="username" name="auname" required>
                    </div>
                    <div class="form-group mb-4">
                        <label for="password">Password:</label>
                        <input type="password" class="form-control" id="password" name="apwd" required>
                    </div>
                    <button type="submit" class="btn btn-primary">Login</button>
                </form>
            </div>
        </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
