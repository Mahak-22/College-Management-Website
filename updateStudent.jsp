<%-- 
    Document   : updateStudent
    Created on : 24 Sep, 2024, 9:36:59 PM
    Author     : mahak
--%>
<%@page import="dao.DaoStudent"%>
<%@page import="dto.StudentDto"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update Student</title>
    </head>
    <body bgcolor ="Aquamarine">
        <h3>Enter Student Enrollment to Update Student Details : </h3>
        
        <form>
            <table>
                <tr>
                    <td><strong>Student Enrollment : </strong></td>
                    <td><input type ="text" name="stuid" placeholder ="Enter Student ID "/></td>
                </tr>
                
                <tr>
                    <td></td>
                    <td><input type = "reset" value ="Reset"/>
                        <input type = "submit" value ="Update"/>
                    </td>
                </tr>
            </table>
        </form>
        
        <%
            String stuid = request.getParameter("stuid");
            if(stuid!=null && !stuid.trim().equals(""))
            {
                DaoStudent stuDao = new DaoStudent();
                StudentDto stu =  stuDao.getStudentData(stuid);
                if(stu == null)
                {
                    %>
                    <h2>No Records Found for <%=stuid%></h2>        
                    <%
                }
                else
                {
                    %>
        <form action="UpdateStudent" method="post">
        <table>
            <tr>
                <td><strong>Student ID: </strong></td>
                <td>
                    <input type="text" name="stuid" disabled="disabled" value="<%=stuid%>" />
                    <input type="hidden" name="stuid" value="<%=stuid%>" />
                </td>
            </tr>
            <tr>
                <td><strong>Student Name: </strong></td>
                <td><input type="text" name="stuname" value="<%=stu.getStuname()%>" /></td>
            </tr>
          
            <tr>
                <td><strong>Student Address: </strong></td>
                <td><input type="text" name="stuadd" value="<%=stu.getStuAdd()%>" /></td>
            </tr>
            <tr>
                <td><strong>Student Contact: </strong></td>
                <td><input type="text" name="stucontact" value="<%=stu.getStuContact()%>" /></td>
            </tr>
            <tr>
                <td><strong>Student City: </strong></td>
                <td><input type="text" name="stucity" value="<%=stu.getStuCity()%>" /></td>
            </tr>
            <tr>
                <td><strong>Student Department: </strong></td>
                <td>
                <SELECT name="studept">
                    <option><strong>CSE</strong></option>
                    <option><strong>IT</strong></option>
                    <option><strong>AIML</strong></option>
                    <option><strong>EC</strong></option>
                </SELECT>
                </td>
            </tr>
            <tr>
                <td></td>
                <td>
                    <input type="reset" value="RESET" />
                    <input type="submit" value="UPDATE" />
                </td>
            </tr>            
        </table>
        </form>      
                    
                    <%
                }
            }
        %>
        
    </body>
</html>
