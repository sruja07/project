<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>CyberPro - Login</title>

    <style>

        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
        }

        body {
            min-height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            background: #f4f6fb;
        }

        .login-container {
            width: 400px;
            background: white;
            padding: 40px;
            border-radius: 12px;
            box-shadow: 0 8px 30px rgba(0, 0, 0, 0.12);
        }

        .logo {
            text-align: center;
            margin-bottom: 30px;
        }

        .logo h1 {
            color: #2e3aa1;
            font-size: 30px;
        }

        .logo p {
            color: #777;
            margin-top: 8px;
            font-size: 14px;
        }

        .message {
            margin-bottom: 20px;
            padding: 12px;
            border-radius: 6px;
            text-align: center;
            font-size: 14px;
        }

        .error {
            background: #ffe5e5;
            color: #c62828;
        }

        .logout {
            background: #e7f5e9;
            color: #287d35;
        }

        .form-group {
            margin-bottom: 20px;
        }

        .form-group label {
            display: block;
            margin-bottom: 8px;
            color: #333;
            font-weight: 600;
        }

        .form-group input {
            width: 100%;
            padding: 12px;
            border: 1px solid #d5d8e2;
            border-radius: 6px;
            outline: none;
            font-size: 15px;
        }

        .form-group input:focus {
            border-color: #2e3aa1;
        }

        .login-btn {
            width: 100%;
            padding: 13px;
            border: none;
            border-radius: 6px;
            background: #2e3aa1;
            color: white;
            font-size: 16px;
            font-weight: 600;
            cursor: pointer;
        }

        .login-btn:hover {
            background: #1d2b8a;
        }

    </style>

</head>

<body>

    <div class="login-container">

        <!-- LOGO / TITLE -->
        <div class="logo">

            <h1>CyberPro</h1>

            <p>Open Source Vulnerability Manager</p>

        </div>


        <!-- LOGIN ERROR MESSAGE -->
        <% if (request.getParameter("error") != null) { %>

            <div class="message error">
                Invalid User ID or Password
            </div>

        <% } %>


        <!-- LOGOUT MESSAGE -->
        <% if (request.getParameter("logout") != null) { %>

            <div class="message logout">
                You have been logged out successfully.
            </div>

        <% } %>


        <!-- LOGIN FORM -->
        <form
            action="${pageContext.request.contextPath}/process-login"
            method="post"
        >

            <!-- USERNAME -->
            <div class="form-group">

                <label for="username">
                    User ID
                </label>

                <input
                    type="text"
                    id="username"
                    name="username"
                    placeholder="Enter your User ID"
                    required
                >

            </div>


            <!-- PASSWORD -->
            <div class="form-group">

                <label for="password">
                    Password
                </label>

                <input
                    type="password"
                    id="password"
                    name="password"
                    placeholder="Enter your password"
                    required
                >

            </div>


            <!-- LOGIN BUTTON -->
            <button
                type="submit"
                class="login-btn"
            >
                Login
            </button>

        </form>

    </div>

</body>

</html>