<%-- 
    Document   : addHodSuccessful
    Created on : 25 Sep, 2024, 10:14:40 PM
    Author     : mahak
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>New Added</title>
    </head>
    <body>
        <a href = "adminLogout.jsp">Logout</a>

         <%
            String fname = (String)session.getAttribute("fname"); 
         %>
         
         <h3><%=fname%> is added...!</h3>
    </body>
</html>
