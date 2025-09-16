<%@page import="dto.FacultyDto"%>
<html>
    <head>
        <title>Add Assignment</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body bgcolor = "Aquamarine">
<%
            FacultyDto faculty = new FacultyDto();
            String fid = request.getParameter("fid");
            if(faculty==null)
            {
                response.sendRedirect("faculty.html");
            }
%>
        
        <h2>Welcome Mam/Sir..!</h2>
        Faculty Id - <%=fid%>
        <form action = "FacultyAddAssignment" method="Post">
            
            <table>
                <tr>
                    <td>Enter Assignment Name : </td>
                    <td><input type="text" name="assignName" placeholder="Enter assignment name "></td>
                </tr>
                
                <tr>
                    <td>Enter Assignment :</td>
                    <td><input type="text" name="assignment" placeholder="Enter assignment"/></td>
                </tr>
                <tr>
                    <td colspan="2"><input type="submit" value="Upload"></td>
                </tr>
            </table>
        </form>
    </body>
</html>
