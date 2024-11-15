<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login Page</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background: url('/images/indeximage.png') no-repeat center center fixed;
            background-size: cover;
            color: #fff;
        }
        /* Blurring background image */
        body::before {
            content: "";
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: inherit;
            filter: blur(8px);
            z-index: -1;
        }

        /* Navbar */
        .navbar {
            background-color: #333;
            overflow: hidden;
            display: flex;
            align-items: center;  /* Vertically center logo and links */
            padding: 10px 20px;
        }

        .navbar img {
            height: 40px;  /* Adjust logo size */
            margin-right: 20px;  /* Space between logo and links */
        }

        .navbar a {
            display: block;
            color: white;
            text-align: center;
            padding: 14px 20px;
            text-decoration: none;
        }

        .navbar a:hover {
            background-color: #555;
        }

        /* Layout for Welcome Guest and Go Back */
        .top-header {
            display: flex;
            justify-content: space-between;
            padding: 10px 20px;
            position: absolute;
            top: 0;
            width: 98%;
            background-color: rgba(0, 0, 0, 0.6); /* Transparent background */
            z-index: 1;
        }

        .welcome-guest {
            font-size: 18px;
            color: yellow;
            font-weight: bold;
        }

        .go-back {
            font-size: 18px;
            color: blue;
            font-weight: bold;
            text-decoration: none;
        }

        /* Big Header */
        .big-header {
            text-align: center;
            color: yellow;
            font-size: 48px;
            font-weight: bold;
            padding: 80px 0 30px; /* Padding to adjust for top header */
            background-color: rgba(0, 0, 0, 0.5);
        }

        /* Layout for Signup Image and Login Form */
        .main-container {
            display: flex;
            justify-content: space-between;
            padding: 30px;
        }

        .signup {
            width: 48%;
        }

        .signup img {
            width: 100%;
            height: auto;
            cursor: pointer;
        }

        .login-form-container {
            width: 48%;
            background-color: rgba(0, 0, 0, 0.8);
            padding: 20px;
            border-radius: 10px;
            text-align: center;
        }

        .login-form-container h2 {
            font-size: 24px;
            color: yellow;
            margin-bottom: 20px;
        }

        .login-form input[type="text"], .login-form input[type="password"] {
            width: 100%;
            padding: 8px 1px;
            margin: 10px 0;
            border: none;
            border-radius: 5px;
        }

        .login-form .forgot-password {
            display: block;
            color: #ffcc00;
            margin: 10px 0;
            text-decoration: none;
        }

        .login-form .login-button {
            background-color: orange;
            color: black;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 18px;
        }

        .login-form .login-button:hover {
            background-color: #ff9900;
        }

        .tabs {
            display: flex;
            justify-content: center;
            background-color: maroon;
            padding: 10px;
        }

        .tabs button {
            background-color: maroon;
            color: white;
            font-size: 18px;
            border: none;
            cursor: pointer;
            padding: 10px 20px;
            margin: 0 5px;
        }

        .tabs button:hover, .tabs button.active {
            background-color: #b30000;
        }

    </style>
</head>
<body>

    <!-- Top Header with Welcome Guest and Go Back -->
    <div class="top-header">
        <div class="welcome-guest"></div>
        <a href="javascript:history.back()" class="go-back">GO BACK</a>
    </div>

    <!-- Big Header -->
    <div class="big-header">
        Success Point Institute
    </div>

    <!-- Navbar -->
    <div class="navbar">
        <img src="<%= request.getContextPath() %>/images/logo.png" alt="Logo"> <!-- Logo Image -->
        <a href="<%= request.getContextPath() %>/login.html">HOME</a>
        <a href="#about">ABOUT US</a>
        <a href="#feedback">FEEDBACK</a>
        <a href="#help">HELP</a>
        <a href="#sitemap">SITE MAP</a>
        <a href="#settings">SETTINGS</a>
    </div>

</body>
</html>
