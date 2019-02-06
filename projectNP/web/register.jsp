<%-- 
    Document   : register
    Created on : Aug 4, 2018, 9:02:22 PM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="registerController" method="get">
            <pre>
            Name:       <input type ="text" name="name" required="required">
            Email:      <input type ="text" name="email" required="required">
            Username:   <input type ="text" name="uname" required="required">
            Password:   <input type ="password" name="pass" required="required">
                        
                        <input type ="submit" name="submit">
            </pre>

        </form>
    </body>
</html>
