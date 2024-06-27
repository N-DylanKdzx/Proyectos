<%-- 
    Document   : index
    Created on : 27 jun. 2024, 14:42:23
    Author     : WIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title> Login</title>
    <style>
        body {
            background-color: #0d0d0d;
            color: #fff;
            font-family: 'Courier New', Courier, monospace;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }

        .login-container {
            background: #1a1a1a;
            padding: 40px;
            border-radius: 10px;
            box-shadow: 0 0 20px 10px #ff00ff, 0 0 30px 20px #00ffff;
            text-align: center;
        }

        .login-container h2 {
            color: #ff00ff;
            margin-bottom: 20px;
            font-size: 2em;
        }

        .login-container input[type="text"], .login-container input[type="password"] {
            background: #000;
            border: 2px solid #00ffff;
            color: #fff;
            padding: 15px;
            margin: 15px 0;
            width: 100%;
            border-radius: 5px;
            font-size: 1em;
        }

        .login-container input[type="submit"] {
            background: #00ffff;
            color: #000;
            border: none;
            padding: 15px;
            width: 100%;
            border-radius: 5px;
            cursor: pointer;
            font-size: 1.2em;
        }

        .login-container input[type="submit"]:hover {
            background: #00cccc;
        }

        .attempts {
            color: #ff00ff;
            margin-top: 10px;
        }

        .blocked-message {
            color: #ff0000;
            margin-top: 20px;
            display: none;
        }
    </style>
</head>
<body>
    <div class="login-container">
        <h2>Iniciar Sesión</h2>
        <form action="Login" method="post" id="loginForm" onsubmit="return authenticateUser(event)" >
            <input type="text" name="username"id="username" placeholder="Nombre de usuario" required><br>
            <input type="password" name="clave"id="password" placeholder="Contraseña" required><br>
            <input type="submit" value="Login">
        </form>
        <div class="attempts" id="attemptsMessage">Intentos disponibles: 3</div>
        <div class="blocked-message" id="blockedMessage">
            Su cuenta ha sido bloqueada, comuníquese con el administrador.
        </div>
    </div>
    <script>
        const correctUsername = 'Damon';
        const correctPassword = '123';
        let attempts = 3;

        function authenticateUser(event) {
            event.preventDefault();
            const username = document.getElementById('username').value;
            const password = document.getElementById('password').value;

            if (username === correctUsername && password === correctPassword) {
                window.location.href = 'home.jsp'; // Redirigir a la página principal
            } else {
                attempts--;
                document.getElementById('attemptsMessage').innerText = 'Intentos disponibles: ' + attempts;
                if (attempts === 0) {
                    document.getElementById('blockedMessage').style.display = 'block';
                    document.getElementById('loginForm').style.display = 'none';
                }
            }
        }
    </script>
</body>
</html>

