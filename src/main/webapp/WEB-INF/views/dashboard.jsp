<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">
<head>

    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>CyberPro - Dashboard</title>

    <style>

        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
        }

        body {
            background: #f4f6fb;
            color: #333;
        }

        .navbar {
            height: 65px;
            background: #2e3aa1;
            color: white;
            display: flex;
            align-items: center;
            justify-content: space-between;
            padding: 0 30px;
        }

        .navbar h1 {
            font-size: 23px;
        }

        .logout-btn {
            background: white;
            color: #2e3aa1;
            text-decoration: none;
            padding: 9px 18px;
            border-radius: 6px;
            font-weight: 600;
        }

        .logout-btn:hover {
            background: #e9ebff;
        }

        .container {
            padding: 35px;
        }

        .welcome {
            margin-bottom: 30px;
        }

        .welcome h2 {
            font-size: 28px;
            color: #222;
        }

        .welcome p {
            color: #777;
            margin-top: 8px;
        }

        .cards {
            display: grid;
            grid-template-columns: repeat(3, 1fr);
            gap: 20px;
        }

        .card {
            background: white;
            padding: 25px;
            border-radius: 10px;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.08);
        }

        .card h3 {
            color: #2e3aa1;
            margin-bottom: 10px;
        }

        .card p {
            color: #777;
            line-height: 1.5;
        }

        .card a {
            display: inline-block;
            margin-top: 15px;
            text-decoration: none;
            color: #2e3aa1;
            font-weight: 600;
        }

        @media (max-width: 800px) {
            .cards {
                grid-template-columns: 1fr;
            }

            .container {
                padding: 20px;
            }
        }

    </style>

</head>

<body>

    <nav class="navbar">

        <h1>CyberPro</h1>

        <form action="${pageContext.request.contextPath}/logout" method="post">
            <button type="submit" class="logout-btn">
                Logout
            </button>
        </form>

    </nav>


    <main class="container">

        <div class="welcome">
            <h2>Welcome to CyberPro</h2>
            <p>
                Open Source Vulnerability Management Dashboard
            </p>
        </div>


        <div class="cards">

            <div class="card">
                <h3>Vulnerabilities</h3>
                <p>
                    View, track and manage security vulnerabilities
                    identified in your projects.
                </p>
                <a href="#">View Vulnerabilities →</a>
            </div>


            <div class="card">
                <h3>Projects</h3>
                <p>
                    Manage your applications, repositories and
                    security projects.
                </p>
                <a href="#">Manage Projects →</a>
            </div>


            <div class="card">
                <h3>Security Reports</h3>
                <p>
                    Generate vulnerability and security assessment
                    reports.
                </p>
                <a href="#">View Reports →</a>
            </div>


            <div class="card">
                <h3>Scan</h3>
                <p>
                    Start a security scan and identify potential
                    vulnerabilities.
                </p>
                <a href="#">Start Scan →</a>
            </div>


            <div class="card">
                <h3>Users</h3>
                <p>
                    Manage users and their access to the
                    CyberPro system.
                </p>
                <a href="#">Manage Users →</a>
            </div>


            <div class="card">
                <h3>Settings</h3>
                <p>
                    Configure application and security settings.
                </p>
                <a href="#">Open Settings →</a>
            </div>

        </div>

    </main>

</body>
</html>