<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html>
<head>

    <meta charset="UTF-8">
    <title>CyberPro - Admin Dashboard</title>

    <style>

        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
        }

        body {
            background: #f4f6fb;
        }

        .navbar {
            height: 70px;
            background: #2e3aa1;
            color: white;
            display: flex;
            align-items: center;
            justify-content: space-between;
            padding: 0 35px;
        }

        .navbar h2 {
            font-size: 24px;
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

        .title {
            margin-bottom: 30px;
        }

        .title h1 {
            color: #222;
            margin-bottom: 8px;
        }

        .title p {
            color: #777;
        }

        .cards {
            display: grid;
            grid-template-columns: repeat(3, 1fr);
            gap: 25px;
        }

        .card {
            background: white;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 5px 20px rgba(0,0,0,0.08);
        }

        .card h2 {
            color: #2e3aa1;
            margin-bottom: 12px;
        }

        .card p {
            color: #666;
            line-height: 1.6;
        }

        .card a {
            display: inline-block;
            margin-top: 20px;
            color: #2e3aa1;
            font-weight: bold;
            text-decoration: none;
        }

    </style>

</head>

<body>

    <div class="navbar">

        <h2>CyberPro - Admin</h2>

        <a href="${pageContext.request.contextPath}/logout"
           class="logout">
            Logout
        </a>

    </div>

    <div class="container">

        <div class="title">

            <h1>Welcome, Administrator</h1>

            <p>CyberPro Administration Dashboard</p>

        </div>

        <div class="cards">

            <div class="card">

                <h2>Users</h2>

                <p>
                    Manage users and their access to the CyberPro system.
                </p>

                <a href="#">Manage Users →</a>

            </div>

            <div class="card">

                <h2>Projects</h2>

                <p>
                    Manage security projects, applications and repositories.
                </p>

                <a href="#">Manage Projects →</a>

            </div>

            <div class="card">

                <h2>Vulnerabilities</h2>

                <p>
                    View and manage vulnerabilities identified in projects.
                </p>

                <a href="#">View Vulnerabilities →</a>

            </div>

            <div class="card">

                <h2>Security Reports</h2>

                <p>
                    Generate and review security assessment reports.
                </p>

                <a href="#">View Reports →</a>

            </div>

            <div class="card">

                <h2>Security Scan</h2>

                <p>
                    Start vulnerability scans for your projects.
                </p>

                <a href="#">Start Scan →</a>

            </div>

            <div class="card">

                <h2>Settings</h2>

                <p>
                    Configure CyberPro application settings.
                </p>

                <a href="#">Open Settings →</a>

            </div>

        </div>

    </div>

</body>
</html>