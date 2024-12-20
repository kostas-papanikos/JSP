<%@page import="java.util.*"%>
<html>
    <head>
        <title>JSP</title>
        <style>
            table, td {
                border: 1px solid black;
                text-align: center;
            }
        </style>
    </head>
    <body>
        <%-- Java variable declarations --%>
        <%!
        String s = "Hey, who cares about time!";

        String square(int side) {
            String table = "<table>";
                int number = 0;
                String td = "<td>";
            for (int i = 1; i <= side; i++) {
                table += "<tr>";
                for (int j = 1; j <= side; j++) {
                    number = (i - 1) * side + j;
                    if (number % (side + 1) == 1) {
                        td = "<td style=\"background-color: yellow\">";
                    } else {
                        td = "<td>";
                    }
                    table += td + number + "</td>";
                }
                table += "</tr>";
            }
            table += "</table>";
            return table;
        }
        %>
        <h2 style="text-align: center;">Hello World!</h2>
        <h2 style="color:red">The current time is : <%= "unknown!" %></h2>
        <h3 style="color:green;">The current time is <%= new java.util.Date() %>.</h3>
        <h4><%= s %></h4>
        <%=
            square(10)
        %>
    </body>
</html>
