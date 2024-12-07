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
                <h3 class="card-title text-center">Faculty Login</h3>
                <form action="facultylogin" method="post">
                    <div class="form-group mb-3">
                        <label for="username">Username:</label>
                        <input type="text" class="form-control" id="username" name="auname" required>
                    </div>
                    <div class="form-group mb-4">
                        <label for="password">Password:</label>
                        <input type="password" class="form-control" id="password" name="apwd" required>
                    </div>
                    <div class="form-group mb-4">
                        <label for="captcha">Captcha:</label>
                        <img id="captcha" alt="Captcha Image" class="mb-2">
                        <button type="button" class="btn btn-secondary btn-sm" onclick="loadcaptcha()">Reload Captcha</button>
                        <input type="text" class="form-control mt-2" id="captchaInput" name="Captcha" required>
                    </div>
                    <button type="submit" class="btn btn-primary">Login</button>
                </form>
            </div>
        </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
    <script>
        // Captcha loading and handling functions
        function loadcaptcha() {
            var url = "/getcaptcha/6";
            callApi("GET", url, "", getCaptcha);
        }

        function getCaptcha(res) {
            document.getElementById("captcha").src = "data:image/png;base64," + res;
        }

        function callApi(method, url, data, responseHandler) {
            var options;
            if (method == "GET" || method == "DELETE")
                options = { method: method, headers: { 'Content-Type': 'application/json' } };
            else
                options = { method: method, headers: { 'Content-Type': 'application/json' }, body: data };
            
            fetch(url, options)
                .then(response => {
                    if (!response.ok)
                        throw new Error(response.status + ": " + response.statusText);
                    return response.text();
                })
                .then(data => responseHandler(data))
                .catch(error => alert(error));
        }

        // Load captcha on page load
        window.onload = loadcaptcha;
    </script>
</body>
</html>
