<%-- 
    Document   : studentRemoveSuccess
    Created on : 2 Oct, 2024, 9:30:21 PM
    Author     : mahak
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Student Removed</title>
    </head>
    <body>
        <a href="adminLogout.jsp"></a>
        <%
            String stuid = (String)session.getAttribute("stuid"); 
         %>
         
         <h3><%=stuid%> is removed...!</h3>
         
    </body>
</html>
