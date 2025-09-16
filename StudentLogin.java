/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dto.StudentDto;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.StudentChecker;

/**
 *
 * @author mahak
 */
public class StudentLogin extends HttpServlet
{
    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException
    {
        response.sendRedirect("student.html");
    }
    
    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException
    {
        String stuid = request.getParameter("stuid");
        String stupass = request.getParameter("stupass"); 
        
        StudentDto student = new StudentDto();
        student.setStuid(stuid);
        student.setSpass(stupass);
        
        StudentChecker check = new StudentChecker();
        boolean studentLogin = check.isStudentLogin(student);
        
        if(studentLogin)
        {
            HttpSession session = request.getSession(true);
            session.setAttribute("stuid",stuid);
            response.sendRedirect("studenthome.jsp");
        }
        else
        {
            response.sendRedirect("student.html");
        }
        
    }
}
