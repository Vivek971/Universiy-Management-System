<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Settings - The Success Point Institute</title>
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

        /* Settings Content */
        .settings-content {
            max-width: 800px;
            margin: 20px auto;
            padding: 20px;
            background-color: #ffffff;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            border-radius: 10px;
        }

        .settings-content h3 {
            color: #333;
            font-size: 24px;
            margin-bottom: 10px;
        }

        .settings-content label {
            font-size: 18px;
            color: #555;
            display: block;
            margin-top: 15px;
        }

        .settings-content input[type="text"], .settings-content input[type="password"] {
            width: 100%;
            padding: 10px;
            margin-top: 5px;
            border: 1px solid #ddd;
            border-radius: 5px;
        }

        .settings-content button {
            margin-top: 20px;
            padding: 10px 20px;
            background-color: #990000;
            color: white;
            border: none;
            border-radius: 5px;
            font-size: 16px;
            cursor: pointer;
        }

        .settings-content button:hover {
            background-color: #cc0000;
        }
        .feedback-message {
            display: none;
            margin-top: 20px;
            padding: 10px;
            background-color: #d4edda;
            color: #155724;
            border: 1px solid #c3e6cb;
            border-radius: 5px;
            text-align: center;
            font-size: 16px;
            }
    </style>
    <script>
        function submitFeedback(event) {
            event.preventDefault(); // Prevent the form from submitting normally
            document.getElementById("feedback-form").style.display = "none"; // Hide the form
            document.getElementById("feedback-message").style.display = "block"; // Show the thank-you message
        }
    </script>
    
</head>
<body>

    <!-- Header -->
    <div class="header">
        <div class="welcome">
            <img src="/Project/images/logo.png" alt="Institute Logo">
            Welcome to Settings
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

    <!-- Settings Content -->
    <div class="settings-content">
        <h3>Account Settings</h3>
        <form id="feedback-form" onsubmit="submitFeedback(event)">

            <label for="username">Change Username:</label>
            <input type="text" id="username" name="username" placeholder="Enter new username">

            <label for="password">Change Password:</label>
            <input type="password" id="password" name="password" placeholder="Enter new password">

            <label for="email">Update Email Address:</label>
            <input type="text" id="email" name="email" placeholder="Enter new email address">

            <button type="submit">Save Changes</button>
        </form>
        
        <div id="feedback-message" class="feedback-message">
            Updated !!
        </div>
    </div>

</body>
</html>
