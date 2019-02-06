<%-- 
    Document   : Login
    Created on : Aug 4, 2018, 5:45:02 PM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script type="text/javascript">
            function preback(){window.history.forward();}
            setTimeout("preback()",0);
            window.onunload = function(){null};
            
        </script>
    </head>
    <body>
        

        <form action="LoginController" method="post">
            <pre>
            Username:   <input type ="text" name="uname" required="required">
            Password:   <input type ="password" name="pass" required="required">
                        <input type ="radio" name="type" value="user" required="required">user
                        <input type ="radio" name="type" value="admin"required="required">admin

                        <input type ="submit" name="submit">
            </pre>

        </form>
    </body>
</html>
