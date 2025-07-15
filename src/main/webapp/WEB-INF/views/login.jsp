<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Login</title>
    <style>
        body {
            background-color: #f5f9ff;
            font-family: 'Segoe UI', sans-serif;
            color: #333;
            margin: 0;
            padding: 0;
        }

        /* Header Bar */
        .header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            background-color: #e6f0ff;
            padding: 15px 30px;
            box-shadow: 0 2px 5px rgba(0,0,0,0.1);
        }

        .header .logo {
            font-size: 18px;
            font-weight: bold;
            color: #004080;
        }

        .header .title {
            font-size: 20px;
            font-weight: bold;
            color: #004080;
        }

        .header .admin-link a {
            background-color: #004080;
            color: white;
            padding: 10px 18px;
            text-decoration: none;
            border-radius: 8px;
            font-size: 14px;
        }

        .header .admin-link a:hover {
            background-color: #0059b3;
        }

        .container {
            max-width: 600px;
            margin: 80px auto;
            padding: 30px;
            background-color: #ffffff;
            border-radius: 15px;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
        }

        h2 {
            color: #004080;
            text-align: center;
        }

        input {
            width: 100%;
            padding: 12px;
            margin-top: 10px;
            margin-bottom: 20px;
            border: 1px solid #ccc;
            border-radius: 8px;
        }

        button {
            background-color: #004080;
            color: white;
            padding: 12px 20px;
            border: none;
            border-radius: 8px;
            cursor: pointer;
            width: 100%;
        }

        button:hover {
            background-color: #0059b3;
        }
    </style>
</head>
<body>

<!-- ✅ Header Section -->
<div class="header">
    <div class="logo">📘 EduLearn</div>
    <div class="title">Course Enrollment</div>
    <div class="admin-link">
        <a href="admin">Admin Login</a>
    </div>
</div>

<!-- ✅ Student Login Form -->
<div class="container">
    <h2>Student Login</h2>
    <form action="login" method="post">
        <input type="text" name="username" placeholder="Enter Username" required>
        <input type="email" name="email" placeholder="Enter Email" required>
        <input type="password" name="password" placeholder="Enter Password" required>
        <button type="submit">Login</button>
    </form>
</div>

</body>
</html>
