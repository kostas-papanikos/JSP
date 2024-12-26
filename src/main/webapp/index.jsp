<html>
    <head>
        <title>JSP</title>
    </head>
    <body>
        <%-- Java variable declarations --%>
        <%!
        String s = "Hey, who cares about time!";
        %>
        <h2>Hello World!</h2>
        <h2 style="color:red">The current time is : <%= "unknown!" %></h2>
        <h3 style="color:green;">The current time is <%= new java.util.Date() %>.</h3>
        <h4><%= s %></h4>
    </body>
</html>