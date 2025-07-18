<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Available Courses</title>
    <style>
        body {
            background-color: #f5f9ff;
            font-family: 'Segoe UI', sans-serif;
            color: #333;
        }
        .container {
            max-width: 800px;
            margin: 50px auto;
            background: white;
            padding: 30px;
            border-radius: 15px;
            box-shadow: 0 4px 12px rgba(0,0,0,0.1);
        }
        h2 {
            color: #004080;
            text-align: center;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }
        th, td {
            border: 1px solid #ccc;
            padding: 10px;
            text-align: center;
        }
        a.button-link {
            background-color: #004080;
            color: white;
            padding: 8px 16px;
            text-decoration: none;
            border-radius: 6px;
        }
        a.button-link:hover {
            background-color: #0059b3;
        }
    </style>
</head>
<body>
<div class="container">
    <h2>Available Courses</h2>
    <table>
        <tr>
            <th>Course Name</th>
            <th>Action</th>
        </tr>
        <c:forEach var="course" items="${courses}">
            <tr>
                <td>${course.courseName}</td>
                <td><a class="button-link" href="enroll?courseName=${course.courseName}">Enroll</a></td>
            </tr>
        </c:forEach>
    </table>
    <br>
    <a class="button-link" href="my-courses">View Enrolled Courses</a><br></br>
    
    <a class="button-link" href="<c:url value='/' />" style="text-align: center; margin-top: 20px;">Back to Home</a>
    
    
    
</div>
</body>
</html>
