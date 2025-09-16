<%@page import="dto.NoticeDto"%>
<%@page import="model.StuViewNotice"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View Notices</title>
    </head>
    <body bgcolor="Aquamarine">
        <h2>Hello Student..!</h2>
        <form action="studentViewAssignment.jsp" method="Post">
            <table>
                <tr>
                    <td><Strong>Enter Notice name : </strong></td>
                    <td><input type="text" name="regarding" placeholder="Enter subject"></td>
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
            String regarding = request.getParameter("regarding");
            
            if(regarding!=null)
            {
                StuViewNotice view = new StuViewNotice();
                NoticeDto dto = view.isViewNotice(regarding);
                
                if(regarding==null)
                {
                    %>
                        <h3>No Notice found for <%=regarding%></h3>
                    <%
                }

                else
                {
                    %>
                    
                    <table>
                        <tr>
                            <td><strong>Assignment Name : </strong></td>
                            <td><%=regarding%></td>
                        </tr>
                        
                        <tr>
                            <td><strong>Assignment : </strong></td>
                            <td><%=dto.getNotice()%></td>
                        </tr>    
                    </table>
                        
                        <%
                } 
            }
        
        %>
        
    </body>
</html>
