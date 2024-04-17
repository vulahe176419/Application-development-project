<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Forgot Password</title>
        <!-- Add your CSS styles here -->
        <style>
            body {
                font-family: Arial, sans-serif;
                margin: 0;
                padding: 0;
                display: flex;
                height: 100vh;
                background-color: #000;
                color: #fff;
            }

            .left-side {
                flex: 7;
                background-color: #000;
                color: #fff;
                z-index: 1;
            }

            .left-side img {
                width: 100%;
                height: auto;
                display: block;
            }

            .right-side {
                flex: 3;
                display: flex;
                align-items: center;
                justify-content: center;
                background-color: #f5f4ed;
                padding: 20px;
                z-index: 2;
            }

            .container {
                width: 70%;
                text-align: center;
            }

            input {
                width: 100%;
                padding: 10px;
                margin: 10px 0;
                box-sizing: border-box;
            }

            button {
                background-color: #000;
                color: #fff;
                padding: 10px 20px;
                margin: 8px 0;
                border: none;
                border-radius: 4px;
                cursor: pointer;
            }
        </style>
    </head>
    <body>


        <div class="right-side">
            <div class="container">
                <% String code = (String) session.getAttribute("code"); %>
                <% boolean isValid = (boolean) request.getAttribute("isValid"); %>
                <h2 style="color: black">Forgot Password</h2>
                <form action="ForgotPassword" method="post">
                    <% if (!code.equals("")) { %>
                    <label style="color: black">Enter Code:</label>
                    <input type="text" id="codeValid" name="codeValid" required>
                    <% } if(code.equals("") && !isValid) { %>
                    <label for="email" style="color: black">Enter your email address:</label>
                    <input type="email" id="email" name="email" required>
                    <% }%>
                    <% if(isValid){ %>
                    <label style="color: black">Enter new password:</label>
                    <input type="text" id="newPassword" name="newPassword" required>
                    <% } %>
                    <button type="submit">Submit</button>
                    <p style="color: red">${error}</p>
                </form>
            </div>
        </div>

    </body>
</html>
