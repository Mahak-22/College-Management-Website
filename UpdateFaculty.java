/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dto.FacultyDto;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.FacultyUpdate;

/**
 *
 * @author mahak
 */
public class UpdateFaculty extends HttpServlet 
{
    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException
    {
        response.sendRedirect("adminhome.jsp");
    }
    
    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException
    {
        String fId = request.getParameter("fid");
        String fName = request.getParameter("fname");
        //String fpass = request.getParameter("fpass");
        String fDept = request.getParameter("fdept");
        String fAdd = request.getParameter("fadd");
        String fContact = request.getParameter("fcontact");
        String fCity = request.getParameter("fcity");
        String role = request.getParameter("role");
        
        FacultyDto faculty = new FacultyDto();
        faculty.setfID(fId);
        //faculty.setfpass(fpass);
        faculty.setfName(fName);
        faculty.setFadd(fAdd);
        faculty.setFcontact(fContact);
        faculty.setFcity(fCity);
        faculty.setFdept(fDept);
        faculty.setRole(role);
        
        FacultyUpdate updateFaculty = new FacultyUpdate();
        boolean update = updateFaculty.isFacultyUpdate(faculty);
        
        if(update)
        {
            HttpSession session = request.getSession(true);
            session.setAttribute("fname",fName);
            response.sendRedirect("facultyUpdateSuccess.jsp");
        }
        else
        {
            response.sendRedirect("updateFaculty.jsp");
        }
    }
}
