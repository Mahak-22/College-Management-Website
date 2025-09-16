/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dto.AssignmentDto;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.AddAssignment;

/**
 *
 * @author mahak
 */
public class FacultyAddAssignment extends HttpServlet 
{
    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException
    {
        response.sendRedirect("facultyhome.jsp");
    }
    
    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException , IOException
    {
        String assignName = request.getParameter("assignName");
        String assignment = request.getParameter("assignment");
        
        AssignmentDto dto = new AssignmentDto();
        dto.setAssignName(assignName);
        dto.setAssignment(assignment);
        
        AddAssignment add = new AddAssignment();
        
        boolean addAssign = add.isAssignmentAdded(dto);
        
        if(addAssign)
        {
            HttpSession session = request.getSession(true);
            session.setAttribute(assignName, "assignName");
            response.sendRedirect("assignmentAdded.jsp");
        }
        else
        {
            response.sendRedirect("addAssignment.jsp");
        }
    }
}
