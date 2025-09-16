package controller;

import dto.StudentDto;
import java.io.IOException;
import javax.servlet.http.HttpServlet;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.StudentRemove;

public class RemoveStudent extends HttpServlet 
{
    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException
    {
        response.sendRedirect("loginas.html");
    }
    
    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException
    {
        String stuid = request.getParameter("stuid");
        
        StudentDto stu = new StudentDto();
        stu.setStuid(stuid);
        
        StudentRemove remove = new StudentRemove();
        boolean removed = remove.isStuRemoved(stuid);
        
        if(removed)
        {
            HttpSession session = request.getSession(true);
            session.setAttribute("stuid", stuid);
            response.sendRedirect("studentRemoveSuccess.jsp");
        }
        else
        {
            response.sendRedirect("removeStudent.jsp");
        }
        
    }
}
