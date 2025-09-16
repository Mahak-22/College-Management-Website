<%@page import="dto.StudentDto"%>
<%@page import="dao.DaoStudent"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Student Details</title>
    </head>
    <body bgcolor="Aquamarine">
        <h1>Welcome Admin..!</h1>
        
        <form action = "viewStudent.jsp" method = "post">
            <table>
                <tr>
                    <td><Strong>Enter Student Enrollment Number : </Strong></td>
                    <td><input type ="text" name = "stuid"/></td>
                </tr>
                
                <tr>
                    <td></td>
                    <td><input type ="reset" value ="Reset"/>
                        <input type ="submit" value="Submit"/>
                    </td>
                </tr>
            </table>
        </form>
        
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
