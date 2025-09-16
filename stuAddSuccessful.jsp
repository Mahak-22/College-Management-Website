<%-- 
    Document   : stuAddSuccessful
    Created on : 1 Oct, 2024, 9:41:23 PM
    Author     : mahak
--%>

<%@page import="dto.StudentDto"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Student Added</title>
    </head>
    <body>
        <a href="adminLogout.jsp"></a>
        <%
            StudentDto stu = new StudentDto();
            String stuName = (String)session.getAttribute("stuname");
            if(stu!=null)
            {
                %>
                <h3> <%=stuName%> Added Successfully..!</h3>
                <%
            }
        %>
        
    </body>
</html>
