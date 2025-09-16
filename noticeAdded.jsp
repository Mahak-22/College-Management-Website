<%@page import="dto.NoticeDto"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Notice Added</title>
    </head>
    <body bgcolor ="Aquamarine">
        <%  
            
            String regarding = (String)session.getAttribute("regarding"); 
        %>
        <H3><%=regarding%> Notice Added Successfully...!</H3>
    </body>
</html>
