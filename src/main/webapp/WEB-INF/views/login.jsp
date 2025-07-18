<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Login Selection</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            background-color: #f5f9ff;
            font-family: 'Segoe UI', sans-serif;
        }

        .header {
            background-color: #e6f0ff;
            padding: 15px 30px;
            display: flex;
            justify-content: space-between;
            align-items: center;
            box-shadow: 0 2px 5px rgba(0,0,0,0.1);
        }

        .logo {
            font-size: 18px;
            font-weight: bold;
            color: #004080;
        }

        .title {
            font-size: 20px;
            font-weight: bold;
            color: #004080;
        }

        .container {
            display: flex;
            justify-content: center;
            align-items: center;
            margin-top: 100px;
            gap: 50px;
        }

        .card {
            background-color: white;
            padding: 40px;
            border-radius: 15px;
            box-shadow: 0 4px 12px rgba(0,0,0,0.1);
            text-align: center;
            transition: transform 0.3s ease, box-shadow 0.3s ease;
            cursor: pointer;
            width: 220px;
        }

        .card:hover {
            transform: translateY(-8px);
            box-shadow: 0 8px 20px rgba(0,0,0,0.15);
        }

        .card h3 {
            margin-bottom: 10px;
            color: #004080;
        }

        .card a {
            display: inline-block;
            margin-top: 10px;
            padding: 10px 18px;
            background-color: #004080;
            color: white;
            text-decoration: none;
            border-radius: 8px;
        }

        .card a:hover {
            background-color: #0059b3;
        }
    </style>
</head>
<body>

<!-- ✅ Header -->
<div class="header">
    <div class="logo">📘 EduLearn</div>
    <div class="title">Course Enrollment</div>
    <div></div>
</div>

<!-- ✅ Two Login Options -->
<div class="container">
    <div class="card">
        <h3>Student Login</h3>
        <a href="student-login"> Student Login</a>
    </div>

    <div class="card">
        <h3>Admin Login</h3>
        <a href="admin">Admin Login</a>
    </div>
</div>

</body>
</html>
