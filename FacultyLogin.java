package controller;

import dto.FacultyDto;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.FacultyChecker;

/**
 *
 * @author mahak
 */
public class FacultyLogin extends HttpServlet
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
        String fpass = request.getParameter("fpass");
        
        FacultyDto faculty = new FacultyDto();
        faculty.setfID(fid);
        faculty.setfpass(fpass);
        
        FacultyChecker check = new FacultyChecker();
        boolean facultyLogin = check.isFacultyLogin(faculty);
        
        if(facultyLogin)
        {
            HttpSession session = request.getSession(true);
            session.setAttribute("fid",fid);
            response.sendRedirect("facultyhome.jsp");
        }
        else
        {
            response.sendRedirect("faculty.html");
        }
        
    }
    

}
