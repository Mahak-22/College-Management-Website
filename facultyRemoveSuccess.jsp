<%-- 
    Document   : facultyRemoveSuccess
    Created on : 2 Oct, 2024, 9:36:54 PM
    Author     : mahak
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Faculty Removed</title>
    </head>
    <body>
        <a href="adminLogout.jsp"></a>
        <%
            String fid = (String)session.getAttribute("fid"); 
         %>
         
         <h3><%= fid %> is removed...!</h3>
    </body>
</html>
