<%-- 
    Document   : adminLogout
    Created on : 12 Oct, 2024, 6:20:18 PM
    Author     : mahak
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <%
        session.invalidate();
        response.sendRedirect("loginas.html");
        %>
    </body>
</html>
