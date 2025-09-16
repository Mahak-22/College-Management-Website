<%@page import="dto.NotesDto"%>
<%@page import="model.StuViewNotes"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View Notes</title>
    </head>
    <body bgcolor="Aquamarine">
        <h2>Hello Student..!</h2>
        <form action="studentViewNotes.jsp" method="Post">
            <table>
                <tr>
                    <td><Strong>Enter Notes Subject : </strong></td>
                    <td><input type="text" name="subject" placeholder="Enter subject"></td>
                </tr>
                
                <tr>
                    <td></td>
                    <td><input type="submit" value ="Get Notes">
                    <input type="reset" value="Reset">
                    </td>
                </tr>
            </table>
        </form>
        
        <%
            String subject = request.getParameter("subject");
            
            if(subject!=null)
            {
                StuViewNotes view = new StuViewNotes();
                NotesDto dto = view.isViewNotes(subject);
                
                if(subject==null)
                {
                    %>
                        <h3>No Notes found for <%=subject%></h3>
                    <%
                }

                else
                {
                    %>
                    
                    <table>
                        <tr>
                            <td><strong>Assignment Name : </strong></td>
                            <td><%=subject%></td>
                        </tr>
                        
                        <tr>
                            <td><strong>Assignment : </strong></td>
                            <td><%=dto.getNotes()%></td>
                        </tr>    
                    </table>
                        
                        <%
                } 
            }
        
        %>
        
    </body>
</html>
