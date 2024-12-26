<html>
    <head>
        <title>Login</title>
    </head>
    <body>
        <div class="topnav">
            <a href="index.jsp">Home</a>       
            <a href="login.jsp">Login</a>
            <a href="register.jsp">Register</a>
        </div>
        <h3>Login</h3>
        <form action="data.jsp" method="POST">
            <label for="dbpassword">Database password</label><br>
            <input type="text" id="dbpassword" name="dbpassword"><br>
            <input type="submit" value="submit">
        </form>
        <h3 style="color:green;"><%= new java.util.Date() %></h3>
    </body>
</html>
