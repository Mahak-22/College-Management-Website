<%@page import="dto.AssignmentDto"%>
<%@page import="model.StuViewAssign"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View Assignment</title>
    </head>
    <body bgcolor="Aquamarine">
        <h2>Hello Student..!</h2>
        <form action="studentViewAssignment.jsp" method="Post">
            <table>
                <tr>
                    <td><Strong>Enter Assignment Name : </strong></td>
                    <td><input type="text" name="assignName" placeholder="Enter assignment name"></td>
                </tr>
                
                <tr>
                    <td></td>
                    <td><input type="submit" value ="Get Assignment">
                    <input type="reset" value="Reset">
                    </td>
                </tr>
            </table>
        </form>
        
        <%
            String assignName = request.getParameter("assignName");
            
            if(assignName!=null)
            {
                StuViewAssign view = new StuViewAssign();
                AssignmentDto dto = view.isViewAssign(assignName);
                
                if(assignName==null)
                {
                    %>
                        <h3>No Assignment found for <%=assignName%></h3>
                    <%
                }

                else
                {
                    %>
                    
                    <table>
                        <tr>
                            <td><strong>Assignment Name : </strong></td>
                            <td><%=assignName%></td>
                        </tr>
                        
                        <tr>
                            <td><strong>Assignment : </strong></td>
                            <td><%=dto.getAssignment()%></td>
                        </tr>    
                    </table>
                        
                        <%
                } 
            }
        
        %>
        
    </body>
</html>
