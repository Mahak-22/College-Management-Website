<%-- 
    Document   : adminhome
    Created on : 23 Sep, 2024, 8:28:48 PM
    Author     : mahak
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin</title>
        <style>
        .center 
            {
                text-align: center;
            }
            
        </style>
    </head>
    <body>
        <%
           String id = (String)session.getAttribute("id"); 
           String name = (String)session.getAttribute("name"); 
            System.out.println(name);
           if(id== null)
        {
            response.sendRedirect("admin.html");
        }
        %>
           
       
       <h3 class ="center">Welcome Admin...!</h3>
       <h4 class ="center">ID - <%=id%> Login Successful...!</h4><br>
       
       <h3 class ="center">To add a new member : </h3>
       
       <p class ="center"><a href = "addhod.jsp">Add a HOD</a></p>
       <p class ="center"><a href = "addfaculty.jsp">Add a Faculty</a></p>
       <p class ="center"><a href = "addstudent.jsp">Add a Student</a></p><br>
       
       <h3 class ="center">To remove a existing member : </h3>
       
       <p class ="center"><a href = "removeHod.jsp">To Remove a Hod</a></p>
       <p class ="center"><a href = "removefaculty.jsp">To remove a Faculty</a></p>
       <p class ="center"><a href = "removeStudent.jsp">To remove a Student</a></p><br>
       
       <h3 class ="center">Click below to Update : </h3>
       
       <p class ="center"><a href = "updateHod.jsp">Hod Record</a></p>
       <p class ="center"><a href = "updateFaculty.jsp">Faculty Record</a></p>
       <p class ="center"><a href = "updateStudent.jsp">Student Record</a></p><br>
       
       <h3 class ="center">Click below to view : </h3>
       <p class ="center"><a href = "hodDetails.jsp">View Hod Details</a></p>
       <p class ="center"><a href = "viewFaculty.jsp">View Faculty Details</a></p>
       <p class ="center"><a href = "viewStudent.jsp">View Student Details</a></p>
       
    </body>
</html>
