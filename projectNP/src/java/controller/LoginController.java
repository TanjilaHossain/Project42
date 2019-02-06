/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import com.mysql.cj.Session;
import com.mysql.cj.protocol.Resultset;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.*;
import java.lang.*;

/**
 *
 * @author User
 */
public class LoginController extends HttpServlet {

    Connection conn;
    Statement stmt;
    ResultSet rs;
    ArrayList arr = new ArrayList();
    ArrayList arr1 = new ArrayList();
    
    /**
     *
     * @param req
     * @param res
     * @throws ServletException
     * @throws IOException
     * @throws SQLException
     */
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        
        conn = connect.MySQLConnection.ConnectTo();
        HttpSession s =  req.getSession(true);
       
        String uname = req.getParameter("uname");
        String pass = req.getParameter("pass");
        String type = req.getParameter("type");
        System.out.println(pass);
            
        try {
            if(type.equals("admin"))
            {
                if(pass.equals("admin") && uname.equals("admin"))
                {
                    resp.sendRedirect("adminPage.jsp");
                }
                else
                {
                    resp.sendRedirect("sorry.jsp");
                }
            }
            else if(type.equals("user"))
            {

                stmt = conn.createStatement();

                String query = "select * from login.register where uname='"+req.getParameter("uname")+"'and pass='"+req.getParameter("pass")+"'";
                rs = stmt.executeQuery(query);
                
                if(rs.next())
                {
                    req.setAttribute("username", uname);
                    req.getRequestDispatcher("userPage.jsp").forward(req,resp);
                    resp.sendRedirect("userPage.jsp");
                }
                else
                {
                    resp.sendRedirect("sorry.jsp");
                }
            }
            else
            {
                resp.sendRedirect("sorry.jsp");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
