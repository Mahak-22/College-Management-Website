package controller;

import dto.FacultyDto;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.FacultyRemove;

public class RemoveFaculty extends HttpServlet 
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
        
        FacultyDto remove = new FacultyDto();
        remove.setfID(fid);
        
        FacultyRemove removef = new FacultyRemove();
        boolean removed = removef.isFacultyRemove(remove);
        
        if(removed)
        {
            HttpSession session = request.getSession(true);
            session.setAttribute("fid",fid);
            response.sendRedirect("facultyRemoveSuccess.jsp");
        }
        else
        {
            response.sendRedirect("removefaculty.jsp");
        }
    }
}
