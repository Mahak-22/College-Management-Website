<%-- 
    Document   : viewFaculty
    Created on : 30 Sep, 2024, 7:20:12 PM
    Author     : mahak
--%>

<%@page import="dto.FacultyDto"%>
<%@page import="dao.DaoFaculty"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Faculty Details</title>
    </head>
    <body bgcolor = "Aquamarine">
        <h2>Hello Admin..!</h2>
        <form action = "viewFaculty.jsp" method ="Post">
            <table>
                <tr>
                    <td><Strong>Enter Faculty ID : </Strong></td>
                    <td><input type ="text" name = "fid" placeholder="Enter Faculty ID : "></td>
                </tr>
                
                <tr>
                    <td></td>
                    <td><input type ="reset" value ="Reset">
                        <input type ="submit" value ="Submit">
                    </td>
                </tr>
            </table>
        </form>

        <%
            String facultyID = request.getParameter("fid");
            
            if(facultyID!=null && !facultyID.trim().equals(""))
            {
                DaoFaculty fDao = new DaoFaculty();
                FacultyDto faculty = fDao.getFacultyData(facultyID);
                
                    if(faculty == null)
                    {
                        %>
                        <h2>No Record Founds for <%=facultyID%></h2>
                        <%
                    }
                
                    else
                    {
                        %>
                        
                        <table>
                            <tr>
                                <td><strong>Faculty ID : </strong></td>
                                <td><%=facultyID%></td>
                            </tr>
                            
                            <tr>
                                <td><strong>Faculty Name : </strong></td>
                                <td><%=faculty.getfName()%></td>
                            </tr>
                            
                            <tr>
                                <td><strong>Faculty Address : </strong></td>
                                <td><%=faculty.getFadd()%></td>
                            </tr>
                            
                            <tr>
                                <td><strong>Faculty Contact : </strong></td>
                                <td><%=faculty.getFcontact()%></td>
                            </tr>
                            
                            <tr>
                                <td><strong>Faculty City : </strong></td>
                                <td><%=faculty.getFcity()%></td>
                            </tr>
                            
                            <tr>
                                <td><strong>Faculty Department : </strong></td>
                                <td><%=faculty.getFdept()%></td>
                            </tr>
                            
                            <tr>
                                <td><strong>Role : </strong></td>
                                <td><%=faculty.getRole()%></td>
                            </tr>
                            
                        </table>
                            <%
                    }
                }
        %>

    </body>
</html>
