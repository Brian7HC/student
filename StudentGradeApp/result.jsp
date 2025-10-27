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
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .container {
            background-color: #fff;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
            width: 400px;
            text-align: center;
        }
        h1 {
            color: #333;
        }
        .result {
            margin: 20px 0;
            font-size: 18px;
        }
        .label {
            font-weight: bold;
        }
        .value {
            color: #007bff;
        }
        a {
            display: inline-block;
            margin-top: 20px;
            padding: 10px 20px;
            background-color: #007bff;
            color: white;
            text-decoration: none;
            border-radius: 4px;
        }
        a:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Grade Calculation Result</h1>
        <div class="result">
            <p><span class="label">Student Name:</span> <span class="value"><jsp:getProperty name="gradeBean" property="studentName" /></span></p>
            <p><span class="label">Total Marks:</span> <span class="value"><jsp:getProperty name="gradeBean" property="total" /></span></p>
            <p><span class="label">Average:</span> <span class="value"><jsp:getProperty name="gradeBean" property="average" /></span></p>
            <p><span class="label">Grade:</span> <span class="value"><jsp:getProperty name="gradeBean" property="grade" /></span></p>
        </div>
        <a href="index.jsp">Calculate Another Grade</a>
    </div>
</body>
</html>
