/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dto.NoticeDto;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.AddNotice;


public class FacultyAddNotice extends HttpServlet
{
    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException
    {
        response.sendRedirect("faculty.html");
    }
    
    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException
    {
        String regarding = request.getParameter("regarding");
        String notice = request.getParameter("notice");
        
        NoticeDto dto = new NoticeDto();
        dto.setRegarding(regarding);
        dto.setNotice(notice);
        
        AddNotice add = new AddNotice();
        
        boolean addNotice = add.isNoticeAdded(dto);
        
        if(addNotice)
        {
            HttpSession session = request.getSession(true);
            session.setAttribute("regarding",regarding);
            response.sendRedirect("noticeAdded.jsp");
        }
        else
        {
            response.sendRedirect("addNotices.jsp");
        }
    }
}