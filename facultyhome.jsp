<%-- 
    Document   : facultyhome
    Created on : 23 Sep, 2024, 10:11:39 PM
    Author     : mahak
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Faculty</title>
        <style>
        .center 
            {
                text-align: center;
            }
            
        </style>
    </head>
    <body>
        <%
           String fid = (String)session.getAttribute("fid"); 
           if(fid==null)
           {
               response.sendRedirect("faculty.html");
           }
         %>
           
       
       <h4 class="center">Welcome Mam/Sir...!</h4>
       <h3 class="center">ID - <%=fid%> Login Successful...!</h3>
       
       <h2 class="center">Click Below to add : </h2>
       
       <p class ="center"><a href = "addAssignment.jsp">Add Assignment</a></p>
       <p class="center"><a href="addNotes.jsp">Add Notes</a></p>
       <p class ="center"><a href = "addNotices.jsp">Add Notices</a></p>
       <p class ="center"><a href="viewFProfile.jsp">View Profile</a></p>
       
    </body>
</html>
