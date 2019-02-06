<%-- 
    Document   : Database
    Created on : Aug 8, 2018, 9:03:21 PM
    Author     : User
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
    </head>
    <body>
        <h1>Hello Admin! These are the registered people</h1>
        <%
            Connection conn;
            Statement stmt;
            ResultSet rs;
        %>
        <%
            try{
                conn = connect.MySQLConnection.ConnectTo();
                stmt = conn.createStatement();
                String query = "select * from login.register";
                rs = stmt.executeQuery(query);

                while(rs.next())
                {%>
                <form action="delete" method="post">
                <pre>
                <table border="1">
                    <tr>
                        <td><input type ="text" name="name"        value="<%=rs.getString("name")%>"      required="required" size="5" ></td>
                        <td><input type ="text" name="email"   value="<%=rs.getString("email")%>" required="required" size="5" ></td>
                        <td><input type ="text" name="uname"          value="<%=rs.getString("uname")%>"        required="required" size="5" ></td>
                        <td><input type ="text" name="pass"         value="<%=rs.getString("pass")%>"       required="required" size="5" ></td>
                        
                            
                        <td><input type ="submit" name="submit" value="DELETE"></td>
                    </tr>
                </table>
            </pre>

            </form>
        <%
                }
                conn.close();
            }catch(Exception e)
            {
                e.printStackTrace();
            }
        %>
    </body>
</html>
