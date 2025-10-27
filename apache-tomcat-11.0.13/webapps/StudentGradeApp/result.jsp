<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:useBean id="gradeBean" class="com.school.beans.GradeCalculatorBean" scope="page" />
<jsp:setProperty name="gradeBean" property="studentName" param="studentName" />
<jsp:setProperty name="gradeBean" property="subject1" value="<%= Integer.parseInt(request.getParameter(\"subject1\")) %>" />
<jsp:setProperty name="gradeBean" property="subject2" value="<%= Integer.parseInt(request.getParameter(\"subject2\")) %>" />
<jsp:setProperty name="gradeBean" property="subject3" value="<%= Integer.parseInt(request.getParameter(\"subject3\")) %>" />

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Grade Calculation Result</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-image: url('https://images.unsplash.com/photo-1481627834876-b7833e8f5570?ixlib=rb-1.2.1&auto=format&fit=crop&w=1920&h=1080&q=80');
            background-size: cover;
            background-position: center;
            background-attachment: fixed;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            background-color: #f7f9fb; /* fallback */
        }
        .container {
            background-color: #d4d8d7;
            padding: 40px;
            border-radius: 15px;
            box-shadow: 0 15px 35px rgba(0,0,0,0.1);
            width: 500px;
            position: relative;
            overflow: hidden;
            text-align: center;
        }
        h1 {
            color: #4a5568;
            margin-bottom: 30px;
            font-weight: 900;
            font-size: 30px;
        }
        .result {
            margin: 30px 0;
            font-size: 18px;
            line-height: 1.6;
        }
        .result p {
            margin: 15px 0;
        }
        .label {
            font-weight: 600;
            color: #2d3748;
            display: inline-block;
            margin-right: 10px;
        }
        .value {
            font-weight: 700;
            font-size: 30px;
        }
        /* Color coding grades */
        .grade-a { color: #28a745; }
        .grade-b { color: #17a2b8; }
        .grade-c { color: #7d13d3; }
        .grade-f { color: #dc3545; }

        a {
            display: inline-block;
            margin-top: 30px;
            padding: 15px 30px;
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            color: white;
            text-decoration: none;
            border-radius: 8px;
            font-size: 20px;
            font-weight: 600;
            text-transform: uppercase;
            letter-spacing: 0.5px;
            transition: all 0.3s ease;
        }
        a:hover {
            transform: translateY(-2px);
            box-shadow: 0 5px 15px rgba(0,0,0,0.2);
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Grade Calculation Result</h1>
        <div class="result">
            <p><span class="label">Student Name:</span> <span class="value"><jsp:getProperty name="gradeBean" property="studentName" /></span></p>
            <p><span class="label">Total Marks:</span> <span class="value"><jsp:getProperty name="gradeBean" property="total" /></span></p>
            <p><span class="label">Average Marks:</span> <span class="value"><%= String.format("%.2f", gradeBean.getAverage()) %></span></p>
            <p><span class="label">Grade:</span> <span class="value grade-<%= gradeBean.getGrade().toLowerCase() %>"><jsp:getProperty name="gradeBean" property="grade" /></span></p>
        </div>
        <a href="index.jsp">Calculate Another Grade</a>
    </div>
</body>
</html>
