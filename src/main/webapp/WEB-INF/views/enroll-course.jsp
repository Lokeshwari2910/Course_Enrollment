<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Enroll in Course</title>
    <style>
        body {
            background-color: #f5f9ff;
            font-family: 'Segoe UI', sans-serif;
            color: #333;
        }
        .container {
            max-width: 600px;
            margin: 60px auto;
            padding: 30px;
            background-color: #fff;
            border-radius: 15px;
            box-shadow: 0 4px 12px rgba(0,0,0,0.1);
        }
        h2 {
            color: #004080;
            text-align: center;
        }
        input[type="email"] {
            width: 100%;
            padding: 12px;
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
<div class="container">
    <h2>Enroll in ${courseName}</h2>
    <form action="enroll" method="post">
        <input type="hidden" name="courseName" value="${courseName}">
        <input type="email" name="email" value="${email}" readonly>
        <button type="submit">Submit Enrollment</button>
    </form>
</div>
</body>
</html>
