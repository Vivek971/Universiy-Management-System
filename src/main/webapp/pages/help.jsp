<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Help - The Success Point Institute</title>
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

        /* Help Content */
        .help-content {
            max-width: 800px;
            margin: 20px auto;
            padding: 20px;
            background-color: #ffffff;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            border-radius: 10px;
        }

        .help-section {
            margin-bottom: 20px;
        }

        .help-section h3 {
            color: #333;
            font-size: 24px;
            margin-bottom: 10px;
        }

        .help-section p {
            color: #555;
            font-size: 16px;
            margin-bottom: 10px;
        }

        .contact-info, .quick-links {
            margin-top: 20px;
        }

        .contact-info h4, .quick-links h4 {
            font-size: 20px;
            color: #333;
        }

        .contact-info p, .quick-links a {
            font-size: 16px;
            color: #555;
            text-decoration: none;
        }

        .quick-links a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>

    <!-- Header -->
    <div class="header">
        <div class="welcome">
            <img src="/Project/images/logo.png" alt="Institute Logo">
            Welcome to the Help Center
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

    <!-- Help Content -->
    <div class="help-content">
        <h2>Help Center</h2>
        <p>Welcome to The Success Point Institute Help Center! Here you can find answers to frequently asked questions, support resources, and ways to get assistance.</p>

        <div class="help-section">
            <h3>Frequently Asked Questions</h3>
            <p><strong>1. How do I access my course materials?</strong> <br>
            After logging in, navigate to the "Courses" section to view and download available materials.</p>

            <p><strong>2. How can I check my exam results?</strong> <br>
            Go to the "Results" section on your dashboard to view your latest exam results.</p>

            <p><strong>3. Who do I contact for support?</strong> <br>
            You can contact us via the provided phone number or email listed below.</p>
        </div>

        <div class="contact-info">
            <h4>Contact Information</h4>
            <p>Email: support@successpoint.edu</p>
            <p>Phone: +1 (123) 456-7890</p>
            <p>Office Hours: Monday - Friday, 9:00 AM - 5:00 PM</p>
        </div>

        <div class="quick-links">
            <h4>Quick Links</h4>
            <p><a href="#courses">Courses</a></p>
            <p><a href="#results">Exam Results</a></p>
            <p><a href="#feedback">Submit Feedback</a></p>
            <p><a href="#account-settings">Account Settings</a></p>
        </div>
    </div>

</body>
</html>
