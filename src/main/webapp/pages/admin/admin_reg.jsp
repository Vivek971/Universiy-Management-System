<%@ include file="/pages/header.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Signup Page</title>

<style>
    /* General body styling and layout */
    body {
        font-family: Arial, sans-serif;
        background-color: #d3e0ea;
        color: #333;
        margin: 0;
        padding: 0;
        
    }

    /* Navbar styles */
    .navbar {
        background-color: #333;
        overflow: hidden;
    }

    .navbar a {
        float: left;
        display: block;
        color: white;
        text-align: center;
        padding: 14px 20px;
        text-decoration: none;
    }

    .navbar a:hover {
        background-color: #555;
    }

    /* Additional header styles */
    .header-title {
        text-align: center;
        color: yellow;
        font-size: 36px;
        font-weight: bold;
        padding: 20px;
    }

    /* Signup page container and form styling */
    .container {
        max-width: 800px;
        margin: 20px auto;
        padding: 20px;
        background-color: #ffffff;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        border-radius: 10px;
    }

    h2 {
        text-align: center;
        color: #000;
        font-weight: bold;
    }

    form {
        display: flex;
        justify-content: space-between;
        gap: 20px;
    }

    .form-section {
        width: 45%;
    }

    label {
        display: block;
        font-weight: bold;
        margin-bottom: 5px;
        color: #000;
    }

    input[type="text"],
    input[type="email"],
    input[type="password"],
    input[type="date"],
    input[type="file"] {
        width: 100%;
        padding: 8px;
        margin-bottom: 10px;
        border: 1px solid #ccc;
        border-radius: 5px;
        box-sizing: border-box;
    }

    input[type="submit"] {
        background-color: #007bff;
        color: white;
        padding: 10px 20px;
        border: none;
        border-radius: 5px;
        cursor: pointer;
        font-size: 16px;
        width: 100%;
    }

    input[type="submit"]:hover {
        background-color: #0056b3;
    }

    .left-section img {
        width: 100%;
        border-radius: 10px;
    }
</style>
</head>
<body>

<% 
    String message = request.getParameter("message");
    if (message != null) { 
%>
    <p style="color: green;"><%= message %></p>
<% 
    } 
%>

<!-- Include the Header -->


<!-- Container for Form and Image -->
<div class="container">
    <h2>Admin Registration Form</h2>
    <form action="/Project/adminReg" method="POST" enctype="application/x-www-form-urlencoded">
        <!-- Left Section: Image -->
        <div class="form-section left-section">
            <img src="<%= request.getContextPath() %>/images/admin.png" alt="Admissions">
        </div>

        <!-- Right Section: Form Inputs -->
        <div class="form-section right-section">
            <label for="Name">Enter Name:</label>
            <input type="text" id="Name" name="Name" required>

            <label for="Email">Enter Email:</label>
            <input type="email" id="Email" name="Email" required>


            <label for="Phone">Enter Contact Number:</label>
            <input type="text" id="Phone" name="Phone" required>


            <label for="Password">Enter Password:</label>
            <input type="password" id="Password" name="Password" required>

            <input type="submit" value="SUBMIT">
        </div>
    </form>
</div>

</body>
</html>
