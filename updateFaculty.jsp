<%-- 
    Document   : updateFaculty
    Created on : 24 Sep, 2024, 9:36:44 PM
    Author     : mahak
--%>

<%@page import="dto.FacultyDto"%>
<%@page import="dao.DaoFaculty"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update Faculty</title>
    </head>
    <body bgcolor ="Aquamarine">
        <h3>Enter Faculty ID to Update Faculty Details : </h3>
        
        <form>
            <table>
                <tr>
                    <td><strong>Faculty ID : </strong></td>
                    <td><input type ="text" name="fid" placeholder ="Enter Faculty ID "/></td>
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
            String fId = request.getParameter("fid");
            if(fId!=null && !fId.trim().equals(""))
            {
                DaoFaculty facultyDao = new DaoFaculty();
                FacultyDto faculty =  facultyDao.getFacultyData(fId);
                if(fId == null)
                {
                    %>
                    <h2>No Records Found for <%=fId%></h2>        
                    <%
                }
                else
                {
                    %>
                    
        <form action="UpdateFaculty" method="post">
        <table>
            <tr>
                <td><strong>Faculty ID: </strong></td>
                <td>
                    <input type="text" name="fid" disabled="disabled" value="<%=fId%>" />
                    <input type="hidden" name="fid" value="<%=fId%>" />
                </td>
            </tr>
            <tr>
                <td><strong>Faculty Name: </strong></td>
                <td><input type="text" name="fname" value="<%=faculty.getfName()%>" /></td>
            </tr>
          
            <tr>
                <td><strong>Faculty Address: </strong></td>
                <td><input type="text" name="fadd" value="<%=faculty.getFadd()%>" /></td>
            </tr>
            <tr>
                <td><strong>Faculty Contact: </strong></td>
                <td><input type="text" name="fcontact" value="<%=faculty.getFcontact()%>" /></td>
            </tr>
            <tr>
                <td><strong>Faculty City: </strong></td>
                <td><input type="text" name="fcity" value="<%=faculty.getFcity()%>" /></td>
            </tr>
            <tr>
                <td><strong>Faculty Department: </strong></td>
                <td>
                <SELECT name="fdept">
                    <option><strong>CSE</strong></option>
                    <option><strong>IT</strong></option>
                    <option><strong>AIML</strong></option>
                    <option><strong>EC</strong></option>
                </SELECT>
                </td>
            </tr>
            
            <tr>
                <td><strong>Role : </strong></td>
                <td>
                    <select name="role">
                        <option><strong>HOD</strong></option>
                    <option><strong>Faculty</strong></option>
                    </select>
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
