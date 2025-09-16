<%-- 
    Document   : facultyUpdateSuccess
    Created on : 5 Oct, 2024, 7:38:14 PM
    Author     : mahak
--%>

<%@page import="dto.FacultyDto"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Faculty Updated</title>
    </head>
    <body>
        
        <a href="adminLogout.jsp"></a>
        
        <%
            FacultyDto faculty = new FacultyDto();
            String fName = (String)session.getAttribute("fname");
            if(faculty!=null)
            {
                %>
                <h3> <%=fName%> Updated Successfully..!</h3>
                <%
            }
         %>
         
    </body>
</html>
