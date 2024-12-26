<%@page import="java.sql.*"%>
<html>
    <head>
        <title>Data</title>
    </head>
    <body>
        <div class="topnav">
            <a href="index.jsp">Home</a>       
            <a href="login.jsp">Login</a>
            <a href="register.jsp">Register</a>
        </div>
        <h3>Register</h3>
        <%!
        String password;
        %>
        <%
        password = request.getParameter("dbpassword");
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con=DriverManager.getConnection(
                "jdbc:mysql://localhost:3306/company", "root", password);
            Statement stmt=con.createStatement();
            ResultSet rs=stmt.executeQuery("select * from employees");
            while(rs.next()) {
                out.println(rs.getInt(1) + "  " + rs.getString(2) + "  " + rs.getString(3));%>
                <br><%
            }
            con.close();
        } catch(Exception e) {
            out.println(e);
        }
        %>
        <h3 style="color:green;"><%= new java.util.Date() %></h3>
    </body>
</html>
