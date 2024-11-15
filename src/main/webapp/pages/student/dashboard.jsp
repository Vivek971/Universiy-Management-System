<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>The Success Point Institute</title>
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

        /* Main Content */
        .content {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            padding: 20px;
            background-color: #d1e7f0;
        }

        .content .item {
            width: 200px;
            margin: 15px;
            text-align: center;
        }

        .content .item img {
            width: 100%;
            height: auto;
            cursor: pointer;
            border: 2px solid #000;
            border-radius: 10px;
        }

        .content .item p {
            font-size: 18px;
            font-weight: bold;
            color: #333;
            margin-top: 10px;
        }
    </style>
</head>
<body>

    <!-- Header -->
    <div class="header">
        <div class="welcome">
            <img src="/images/logo.png" alt="Institute Logo">
            Welcome: 1
        </div>
        <a href="#signout" class="signout">SIGNOUT</a>
    </div>

    <!-- Title Section -->
    <div class="title">THE SUCCESS POINT INSTITUTE</div>

    <!-- Navigation Bar -->
    <div class="navbar">
        <a href="#home">HOME</a>
        <a href="#about">ABOUT US</a>
        <a href="#feedback">FEEDBACK</a>
        <a href="#help">HELP</a>
        <a href="#sitemap">SITE MAP</a>
        <a href="#settings">SETTINGS</a>
        <a href="#student-zone">STUDENT ZONE</a>
    </div>

    <!-- Main Content -->
    <div class="content">
        <div class="item">
            <a href="#courses"><img src="/images/stud/course.jpeg" alt="Courses"></a>
            <p>Courses</p>
        </div>
        <div class="item">
            <a href="#exams"><img src="/images/stud/exam.jpg" alt="Exams"></a>
            <p>Exams</p>
        </div>
        <div class="item">
            <a href="#fee-structure"><img src="/images/stud/feestructure.jpg" alt="Fee Structure"></a>
            <p>Fee Structure</p>
        </div>
        <div class="item">
            <a href="#question-papers"><img src="/images/stud/qp.jpg" alt="Question Papers"></a>
            <p>Question Papers</p>
        </div>
        <div class="item">
            <a href="#results"><img src="/images/stud/result.jpg" alt="Results"></a>
            <p>Click to View Your Result</p>
        </div>
        <div class="item">
            <a href="#library"><img src="/images/stud/library.png" alt="Library"></a>
            <p>Library</p>
        </div>
        <div class="item">
            <a href="#notes"><img src="/images/notes.png" alt="Notes"></a>
            <p>Notes</p>
        </div>
        <div class="item">
            <a href="#return"><img src="/images/return.png" alt="Return"></a>
            <p>Return</p>
        </div>
    </div>

</body>
</html>
