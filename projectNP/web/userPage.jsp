<%-- 
    Document   : userPage
    Created on : Aug 5, 2018, 4:40:03 PM
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

        <header>
            <%
                String username = (String) request.getAttribute("username");
                
               // Vector vecObj = (Vector) request.getAttribute("vecBean");
              //  out.println("Servlet to JSP communication of an object: "+vecObj.get(0));
            %>
            
                
                
                    <a  href="HomePage.jsp?">LOGOUT</a>
                
       
    </body>
    
</html>
