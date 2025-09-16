<%-- 
    Document   : studentUpdateSuccess
    Created on : 2 Oct, 2024, 5:58:25 PM
    Author     : mahak
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Student Record Removed</title>
    </head>
    <body>
        <a href="adminLogout.jsp"></a>
        
         <%
            String stuname = (String)session.getAttribute("stuname"); 
         %>
         
         <h3><%= stuname %> is Updated...!</h3>
    </body>
</html>
