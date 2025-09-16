<%-- 
    Document   : addNotices
    Created on : 17 Oct, 2024, 7:25:09 PM
    Author     : mahak
--%>

<%@page import="dto.FacultyDto"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body bgcolor="Aquamarine">
        <%
            FacultyDto faculty = new FacultyDto();
            String fid = request.getParameter("fid");
            if(faculty==null)
            {
                response.sendRedirect("faculty.html");
            }
        
        %>
        
        <h2>Welcome Sir/Mam</H2>
        <h3><%=fid%> log in Successful..!</h3>
        
        <form action="FacultyAddNotice" method ="Post">
            <table>
                
                <tr>
                    <td>Notice Regarding : </td>
                    <td><input type="text" name="regarding" placeholder="Notice Regarding"></td>
                </tr>
                
                <tr>
                 <td>Add Notice Here : </td>
                <td><input type="text" name="notice" placeholder="Enter Notice here"></td>
                </tr>
                
                <tr>
                <td></td>
                <td><input type="submit" value="Upload"></td>
                </tr>
            </table>
        </form>
    </body>
</html>
