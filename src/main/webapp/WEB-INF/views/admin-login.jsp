<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Admin Login</title>
    <style>
        body {
            background-color: #f5f9ff;
            font-family: 'Segoe UI', sans-serif;
        }
        .container {
            max-width: 400px;
            margin: 100px auto;
            background: white;
            padding: 30px;
            border-radius: 15px;
            box-shadow: 0 4px 12px rgba(0,0,0,0.1);
        }
        h2 {
            color: #004080;
            text-align: center;
        }
        input {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border-radius: 6px;
            border: 1px solid #ccc;
        }
        button {
            background-color: #004080;
            color: white;
            border: none;
            padding: 12px;
            width: 100%;
            border-radius: 6px;
            cursor: pointer;
        }
        button:hover {
            background-color: #0059b3;
        }
    </style>
</head>
<body>
<div class="container">
    <h2>Admin Login</h2>
    <form action="admin-login" method="post">
        <input type="text" name="username" placeholder="Admin Username" required>
        <input type="password" name="password" placeholder="Password" required>
        <button type="submit">Login</button>
    </form>
</div>
</body>
</html>
