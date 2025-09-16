/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dto.NotesDto;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.AddNotes;


public class FacultyAddNotes extends HttpServlet 
{
    public void doGet(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException
    {
        response.sendRedirect("faculty.html");
    }
    
    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException
    {
        String subject = request.getParameter("subject");
        String notes = request.getParameter("notes");
        
        NotesDto dto = new NotesDto();
        dto.setSubject(subject);
        dto.setNotes(notes);
        
        AddNotes add = new AddNotes();
        boolean added = add.isNotesAdded(dto);
        
        if(added)
        {
            HttpSession session = request.getSession(true);
            session.setAttribute("subject",subject);
            response.sendRedirect("notesAdded.jsp");
        }
        else
        {
            response.sendRedirect("addNotes.jsp");
        }
    }
}