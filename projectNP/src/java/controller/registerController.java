  
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class registerController extends HttpServlet {

    Connection conn;
    Statement stmt;
    ResultSet rs;
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String name=req.getParameter("name");
        String email=req.getParameter("email");
        String uname=req.getParameter("uname");
        String pass=req.getParameter("pass");
        
        conn = connect.MySQLConnection.ConnectTo();
        try {
            stmt = conn.createStatement();
            
            String query = "select * from login.register where uname='"+req.getParameter("uname")+"'or email='"+req.getParameter("email")+"'";
            rs = stmt.executeQuery(query);
            
            if(rs.next())
            {
                resp.sendRedirect("sorry.jsp");
            }
            else
            {
                query = "insert into login.register values('"+req.getParameter("name")+"','"+req.getParameter("email")+"','"+req.getParameter("uname")+"','"+req.getParameter("pass")+"')";
                stmt.executeUpdate(query);
                resp.sendRedirect("Login.jsp");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        
    }


}
