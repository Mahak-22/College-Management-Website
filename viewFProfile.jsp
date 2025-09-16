<%-- 
    Document   : viewFProfile
    Created on : 28 Oct, 2024, 11:07:08 PM
    Author     : mahak
--%>
<%@page import="dto.FacultyDto"%>
<%@page import="dao.DaoFaculty"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View Profile</title>
    </head>
    <body>

        <h1>Welcome Mam/Sir..!</h1>
        <%--<h3>Faculty Id - <%=fid%></h3>--%>
        
        <%
            String fid = request.getParameter("fid");
                DaoFaculty fDao = new DaoFaculty();
                FacultyDto faculty = fDao.getFacultyData(fid);
                        %>
                        
                        <table>
                            <tr>
                                <td><strong>Faculty ID : </strong></td>
                                <td><%=fid%></td>
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
                            
                        </table>
    </body>
</html>
