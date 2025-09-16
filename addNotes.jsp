<%-- 
    Document   : addNotes
    Created on : 24 Oct, 2024, 7:36:55 PM
    Author     : mahak
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Notes</title>
    </head>
    <body bgcolor="Aquamarine">
        <%
           String fid = (String)session.getAttribute("fid"); 
           if(fid==null)
           {
               response.sendRedirect("faculty.html");
           }
        %>
        
        <h2>Welcome...!</h2>
        <h2>Id - <%=fid%></h2>
        
        <form action="FacultyAddNotes" method="Post">
        <table>
            <tr>
                <td><strong>Subject : </strong></td>
                <td><input type="text" name="subject" placeholder="Enter Subject Name"/></td>
            </tr>
            
            <tr>
                <td><strong>Enter Notes : </strong></td>
                <td><input type="text" name="notes" placeholder="Enter notes Here"/></td>
            </tr>
            
            <tr>
                <td></td>
                <td><input type="submit" value="Upload"></td>
            </tr>
        </table>
            </form>
    </body>
</html>
