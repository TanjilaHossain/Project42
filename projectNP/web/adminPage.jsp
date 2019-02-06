<%-- 
    Document   : adminPage
    Created on : Aug 5, 2018, 4:04:10 PM
    Author     : User
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% response.setHeader("Cache-Control", "no-store, must-revalidate"); %>

        <h1>Hello Admin!</h1>
        
                <table>
                    <tr>
                        <td><a  href="Database.jsp">Database</a></td>
                    </tr>
                </table>
                    <a  href="HomePage.jsp?">LOGOUT</a>
    </body>
</html>
