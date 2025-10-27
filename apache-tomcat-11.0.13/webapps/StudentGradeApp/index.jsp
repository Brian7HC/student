<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Student Grade Calculator</title>
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
            background-color: #f7f9fb;
        }
        .container {
            background-color: #b4f8f5;
            padding: 40px;
            border-radius: 15px;
            box-shadow: 0 15px 35px rgba(0,0,0,0.1);
            width: 500px;
            position: relative;
            overflow: hidden;
        }
        h1 {
            text-align: center;
            color: #4a5568;
            margin-bottom: 30px;
            font-weight: 900;
            font-size: 30px;
            text-decoration: underline;
        }
        form {
            display: flex;
            flex-direction: column;
        }
        label {
            margin-top: 15px;
            font-weight: 600;
            color: #e93d11;
            font-size: 20px;
            text-transform: uppercase;
            letter-spacing: 0.5px;
        }
        .center-label {
            text-align: center;
        }
        .input-group {
            position: relative;
        }
        input[type="text"] {
            padding: 12px 15px;
            margin-top: 5px;
            border: 2px solid #e2e8f0;
            border-radius: 8px;
            font-size: 20px;
            transition: all 0.3s ease;
            background-color: #f8fafc;
        }
        input[type="number"] {
            padding: 12px 15px;
            margin-top: 5px;
            border: 2px solid #e2e8f0;
            border-radius: 8px;
            font-size: 20px;
            transition: all 0.3s ease;
            background: linear-gradient(135deg, #c0abdb 0%, #fab1a0 100%);
        }
        input[type="text"]:focus, input[type="number"]:focus {
            outline: none;
            border-color: #667eea;
            background-color: #ffffff;
            box-shadow: 0 0 0 3px rgba(102, 126, 234, 0.1);
        }
        button {
            margin-top: 30px;
            padding: 15px;
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            color: white;
            border: none;
            border-radius: 8px;
            font-size: 23px;
            font-weight: 600;
            cursor: pointer;
            transition: all 0.3s ease;
            text-transform: uppercase;
            letter-spacing: 0.5px;
        }
        button:hover {
            transform: translateY(-2px);
            box-shadow: 0 5px 15px rgba(0,0,0,0.2);
        }
        button:active {
            transform: translateY(0);
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Enter Student Details</h1>
        <form action="result.jsp" method="post">
            <label for="studentName">Student Name:</label>
            <input type="text" id="studentName" name="studentName" required>

            <label class="center-label"><u><strong>SUBJECTS</strong></u></label>
            <label for="subject1">COP</label>
            <input type="number" id="subject1" name="subject1" min="0" max="100" required>

            <label for="subject2">Project Management</label>
            <input type="number" id="subject2" name="subject2" min="0" max="100" required>

            <label for="subject3">Databases</label>
            <input type="number" id="subject3" name="subject3" min="0" max="100" required>

            <button type="submit">Calculate Grade</button>
        </form>
    </div>
</body>
</html>
