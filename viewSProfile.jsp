<%-- 
    Document   : viewSProfile
    Created on : 28 Oct, 2024, 11:13:51 PM
    Author     : mahak
--%>
<%@page import="dto.StudentDto"%>
<%@page import="dao.DaoStudent"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View Profile</title>
    </head>
    <body>
        <%
           String sid = (String)session.getAttribute("stuid"); 
           if(sid==null)
           {
               response.sendRedirect("studenthome.html");
           }
           %>
           
        <h1>Welcome Mam/Sir..!</h1>
        <h2>Faculty Id - <%=sid%><></h2>
        
        <%
            String stuid = request.getParameter("stuid");
            
            if(stuid!=null && !stuid.trim().equals(""))
            {
                DaoStudent stuDao = new DaoStudent();
                StudentDto stu = stuDao.getStudentData(stuid);
                
                if(stu==null)
                {
                    %>
                        <h2>No Record Founds for <%=stuid%></h2>
                    <%
                }
                
                else
                {
                    %>
                    
                    <table>
                        <tr>
                            <td><strong>Student Enrollment Number : </strong></td>
                            <td><%=stuid%></td>
                        </tr>
                        
                        <tr>
                            <td><strong>Student Name : </strong></td>
                            <td><%=stu.getStuname()%></td>
                        </tr>
                        
                         <tr>
                            <td><strong>Student Address : </strong></td>
                            <td><%=stu.getStuAdd()%></td>
                        </tr>
                        
                        <tr>
                            <td><strong>Student Contact : </strong></td>
                            <td><%=stu.getStuContact()%></td>
                        </tr>
                        
                        <tr>
                            <td><strong>Student City : </strong></td>
                            <td><%=stu.getStuCity()%></td>
                        </tr>
                        
                        <tr>
                            <td><strong>Student Department : </strong></td>
                            <td><%=stu.getStudept()%></td>
                        </tr>
                    </table>
            <%
                }
            }
            %>
        
    </body>
</html>
