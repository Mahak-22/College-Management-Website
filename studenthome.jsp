<%-- 
    Document   : studenthome
    Created on : 23 Sep, 2024, 11:12:49 PM
    Author     : mahak
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Student</title>
    </head>
    <body>
          <% String stuid = (String)session.getAttribute("stuid"); %>
          
       <h3>Welcome Student...!</h3>
       <h3>Id - <%=stuid%> Login Successful...!</h3>
       
       <h4>Click below to see : </h4>
       
       <p><a href="studentViewNotes.jsp">Notes</a></p>
       <p><a href="studentViewNotices.jsp">Notices</a></p>
       <p><a href="studentViewAssignment.jsp">Assignments</a></p>
       <p><a href="viewSProfile.jsp">View Profile<a></p>
       
    </body>
</html>
