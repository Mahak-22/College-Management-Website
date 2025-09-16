/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dto.AdminDto;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.AdminChecker;

/**
 *
 * @author mahak
 */
public class AdminLogin extends HttpServlet 
{
    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException
    {
        response.sendRedirect("loginas.html");
    }
    
    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException
    {
        String id = request.getParameter("id");
        String password = request.getParameter("password");
        System.out.println(password);
        AdminDto admin = new AdminDto();
        admin.setID(id);
        admin.setPassword(password);
        
        AdminChecker check = new AdminChecker();
        
        boolean adminlogin = check.isAdminLogin(admin);
        System.out.println(adminlogin);
        if(adminlogin)
        {
            HttpSession session = request.getSession(true);
            session.setAttribute("id", id);
            response.sendRedirect("adminhome.jsp");
        }
        else
        {
            response.sendRedirect("admin.html");
        }
        
    }
}
