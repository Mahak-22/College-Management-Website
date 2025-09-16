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
import model.StudentUpdate;

/**
 *
 * @author mahak
 */
public class UpdateStudent extends HttpServlet 
{
    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException
    {
        response.sendRedirect("adminhome.jsp");
    }
    
    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException
    {
        String stuid = request.getParameter("stuid");
        //String stuPass = request.getParameter("stupass");
        String stuName = request.getParameter("stuname");
        String stuAdd = request.getParameter("stuadd");
        String stuContact = request.getParameter("stucontact");
        String stuCity = request.getParameter("stucity");
        String stuDept = request.getParameter("studept");
        
        StudentDto stu = new StudentDto();
        stu.setStuid(stuid);
        //stu.setSpass(stuPass);
        stu.setStuname(stuName);
        stu.setStuAdd(stuAdd);
        stu.setStuContact(stuContact);
        stu.setStuCity(stuCity);
        stu.setStudept(stuDept);
        
        StudentUpdate stuUpdate = new StudentUpdate();
        boolean update = stuUpdate.isStuUpdate(stu);
        
        if(update)
        {
            HttpSession session = request.getSession(true);
            session.setAttribute("stuname",stuName);
            response.sendRedirect("studentUpdateSuccess.jsp");
        }
        else
        {
            response.sendRedirect("updateStudent.jsp");
        }
    }
}
