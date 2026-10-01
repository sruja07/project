<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>CyberPro - User Dashboard</title>

    <style>
        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
        }

        body {
            background: #f4f6fb;
            min-height: 100vh;
        }

        .navbar {
            background: #2e3aa1;
            color: white;
            padding: 18px 35px;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .navbar h1 {
            font-size: 25px;
        }

        .logout {
            background: white;
            color: #2e3aa1;
            padding: 10px 20px;
            border-radius: 6px;
            text-decoration: none;
            font-weight: bold;
        }

        .container {
            padding: 40px;
        }

        .container h2 {
            color: #222;
            margin-bottom: 10px;
        }

        .container p {
            color: #777;
            margin-bottom: 30px;
        }

        .cards {
            display: grid;
            grid-template-columns: repeat(3, 1fr);
            gap: 25px;
        }

        .card {
            background: white;
            padding: 25px;
            border-radius: 10px;
            box-shadow: 0 5px 20px rgba(0,0,0,0.08);
        }

        .card h3 {
            color: #2e3aa1;
            margin-bottom: 12px;
        }

        .card p {
            color: #666;
            line-height: 1.5;
        }

        .btn {
            display: inline-block;
            margin-top: 15px;
            color: #2e3aa1;
            font-weight: bold;
            text-decoration: none;
        }
    </style>

</head>

<body>

    <div class="navbar">

        <h1>CyberPro</h1>

        <a href="${pageContext.request.contextPath}/logout"
           class="logout">
            Logout
        </a>

    </div>

    <div class="container">

        <h2>Welcome to CyberPro</h2>

        <p>
            User Dashboard - Open Source Vulnerability Management
        </p>

        <div class="cards">

            <div class="card">
                <h3>Vulnerabilities</h3>
                <p>
                    View and track vulnerabilities identified in your projects.
                </p>
                <a href="#" class="btn">View Vulnerabilities →</a>
            </div>

            <div class="card">
                <h3>Projects</h3>
                <p>
                    View projects and security information assigned to you.
                </p>
                <a href="#" class="btn">View Projects →</a>
            </div>

            <div class="card">
                <h3>Security Reports</h3>
                <p>
                    View vulnerability and security assessment reports.
                </p>
                <a href="#" class="btn">View Reports →</a>
            </div>

            <div class="card">
                <h3>Scan</h3>
                <p>
                    Start a security scan and identify potential vulnerabilities.
                </p>
                <a href="#" class="btn">Start Scan →</a>
            </div>

            <div class="card">
                <h3>My Profile</h3>
                <p>
                    View your CyberPro account information.
                </p>
                <a href="#" class="btn">View Profile →</a>
            </div>

            <div class="card">
                <h3>Settings</h3>
                <p>
                    Configure your account and security settings.
                </p>
                <a href="#" class="btn">Open Settings →</a>
            </div>

        </div>

    </div>

</body>

</html>