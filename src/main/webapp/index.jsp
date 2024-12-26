<%-- Comment --%>
<html>
    <head>
        <title>JSP</title>
    </head>
    <body>
        <div class="topnav">
            <a href="index.jsp">Home</a>       
            <a href="login.jsp">Login</a>
            <a href="register.jsp">Register</a>
        </div>
        <h2>Welcome to JSP Application!</h2>
        <%!
        String s = "Use navigation menu!";
        %>
        <h3 style="color:red">This application uses <%= "JSP" %>.</h3>
        <h4><%= s %></h4>
        <h3 style="color:green;"><%= new java.util.Date() %></h3>
    </body>
</html>