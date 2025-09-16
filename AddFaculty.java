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
import model.AddNewFaculty;

public class AddFaculty extends HttpServlet 
{
    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException
    {
        response.sendRedirect("loginas.html");
    }
    
    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException
    {
        String fid = request.getParameter("fid");
        String fname = request.getParameter("fname");
        String fpass = request.getParameter("fpass");
        String fdept = request.getParameter("fdept");
        String fcon = request.getParameter("fcontact");
        String fcity = request.getParameter("fcity");
        String fadd = request.getParameter("fadd");
        String role = request.getParameter("role");
        
        FacultyDto add = new FacultyDto();
        add.setfID(fid);
        add.setfName(fname);
        add.setfpass(fpass);
        add.setFadd(fadd);
        add.setFcontact(fcon);
        add.setFcity(fcity);
        add.setFdept(fdept);
        add.setRole(role);
        
        AddNewFaculty faculty = new AddNewFaculty();
        boolean added = faculty.isAddNewFaculty(add);
        
        if(added)
        {
            HttpSession session = request.getSession(true);
            session.setAttribute("fname",fname);
            response.sendRedirect("addFacultySuccessful.jsp");
        }
        else
        {
            response.sendRedirect("addfaculty.jsp");
        }
    }
}
