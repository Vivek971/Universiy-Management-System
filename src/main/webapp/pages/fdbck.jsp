<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Feedback - The Success Point Institute</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #d1e7f0;
            margin: 0;
            padding: 0;
        }

        /* Header */
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

        /* Title Section */
        .title {
            text-align: center;
            font-size: 36px;
            font-weight: bold;
            margin: 10px 0;
            color: #000;
        }

        /* Navigation Bar */
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

        /* Feedback Form Content */
        .feedback-content {
            max-width: 600px;
            margin: 20px auto;
            padding: 20px;
            background-color: #ffffff;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            color: #333;
        }

        .feedback-content h2 {
            text-align: center;
            color: #990000;
            font-size: 28px;
            margin-bottom: 20px;
        }

        .feedback-content form {
            display: flex;
            flex-direction: column;
        }

        .feedback-content label {
            font-size: 16px;
            margin-top: 10px;
        }

        .feedback-content input[type="text"],
        .feedback-content input[type="email"],
        .feedback-content textarea {
            padding: 10px;
            font-size: 16px;
            border: 1px solid #ccc;
            border-radius: 5px;
            margin-top: 5px;
            resize: vertical;
        }

        .feedback-content textarea {
            height: 100px;
        }

        .feedback-content button {
            margin-top: 15px;
            padding: 10px 15px;
            font-size: 16px;
            color: white;
            background-color: #990000;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-weight: bold;
        }

        .feedback-content button:hover {
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
            Welcome to Feedback
        </div>
        <a href="/Project/login.html" class="signout">SIGNOUT</a>
    </div>

    <!-- Title Section -->
    <div class="title">THE SUCCESS POINT INSTITUTE</div>

    <!-- Navigation Bar -->
    <div class="navbar">
        <a href="/Project/login.html">HOME</a>
        <a href="aboutus.html">ABOUT US</a>
        <a href="fdbck.jsp">FEEDBACK</a>
        <a href="help.jsp">HELP</a>
        <a href="sitemap.jsp">SITE MAP</a>
        <a href="stng.jsp">SETTINGS</a>

    </div>

    <!-- Feedback Content -->
    <div class="feedback-content">
        <h2>Feedback</h2>
        <p>We value your feedback! Please fill out the form below to help us improve our services.</p>
           <form id="feedback-form" onsubmit="submitFeedback(event)">

            <label for="name">Name:</label>
            <input type="text" id="name" name="name" required>

            <label for="email">Email:</label>
            <input type="email" id="email" name="email" required>

            <label for="feedback">Your Feedback:</label>
            <textarea id="feedback" name="feedback" required></textarea>

            <button type="submit">Submit Feedback</button>
        </form>
        
        <div id="feedback-message" class="feedback-message">
            Thank you for your feedback! We appreciate you taking the time to help us improve our institute.
        </div>
    </div>

</body>
</html>
