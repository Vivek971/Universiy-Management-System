<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sitemap - The Success Point Institute</title>
    <style>
        /* General styling for consistency */
        body {
            font-family: Arial, sans-serif;
            background-color: #d1e7f0;
            margin: 0;
            padding: 0;
        }

        /* Header styling */
        .header {
            background-color: #990000;
            padding: 10px 20px;
            color: white;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .header img {
            height: 80px;
            margin-right: 10px;
        }

        .header .welcome {
            font-size: 18px;
            font-weight: bold;
        }

        .header .signout {
            background-color: #cc0000;
            padding: 10px 15px;
            color: white;
            text-decoration: none;
            border-radius: 5px;
            font-weight: bold;
        }

        /* Title */
        .title {
            text-align: center;
            font-size: 36px;
            font-weight: bold;
            margin: 10px 0;
            color: #000;
        }

        /* Navbar styling */
        .navbar {
            background-color: #000;
            overflow: hidden;
            text-align: center;
        }

        .navbar a {
            display: inline-block;
            padding: 10px 15px;
            color: white;
            text-decoration: none;
            font-size: 18px;
        }

        .navbar a:hover {
            background-color: #333;
        }

        /* Sitemap Content */
        .sitemap-content {
            max-width: 800px;
            margin: 20px auto;
            padding: 20px;
            background-color: #ffffff;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            border-radius: 10px;
        }

        .sitemap-content h3 {
            color: #333;
            font-size: 24px;
            margin-bottom: 10px;
        }

        .sitemap-content ul {
            list-style-type: none;
            padding: 0;
        }

        .sitemap-content li {
            font-size: 18px;
            margin: 5px 0;
        }

        .sitemap-content li a {
            color: #555;
            text-decoration: none;
        }

        .sitemap-content li a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>

    <!-- Header -->
    <div class="header">
        <div class="welcome">
            <img src="/Project/images/logo.png" alt="Institute Logo">
            Welcome to the Sitemap
        </div>
        <a href="/Project/login.html" class="signout">SIGNOUT</a>
    </div>

    <!-- Title -->
    <div class="title">THE SUCCESS POINT INSTITUTE</div>

    <!-- Navbar -->
    <div class="navbar">
        <a href="/Project/login.html">HOME</a>
        <a href="aboutus.html">ABOUT US</a>
        <a href="fdbck.jsp">FEEDBACK</a>
        <a href="help.jsp">HELP</a>
        <a href="sitemap.jsp">SITE MAP</a>
        <a href="stng.jsp">SETTINGS</a>

    </div>

    <!-- Sitemap Content -->
    <div class="sitemap-content">
        <h3>Sitemap</h3>
        <ul>
            <li><a href="/Project/login.html">Home</a></li>
            <li><a href="aboutus.html">About Us</a></li>
            <li><a href="#courses">Courses</a></li>
            <li><a href="#exams">Exams</a></li>
            <li><a href="#fee-structure">Fee Structure</a></li>
            <li><a href="#results">Results</a></li>
            <li><a href="#library">Library</a></li>
            <li><a href="#notes">Notes</a></li>
            <li><a href="fdbck.jsp">Feedback</a></li>
            <li><a href="help.jsp">Help</a></li>
            <li><a href="stng.jsp">Settings</a></li>
            
        </ul>
    </div>

</body>
</html>
