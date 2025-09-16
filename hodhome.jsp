<%-- 
    Document   : hodhome
    Created on : 23 Sep, 2024, 10:32:13 PM
    Author     : mahak
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home</title>
        <style>
        .center
        {
            text-align: center;
        }
        </style>
    </head>
    <body>
        <%
           String hodid = (String)session.getAttribute("hodid"); 
           String hodname = (String)session.getAttribute("hodname"); %>
           
       
       <h2 class="center">Welcome <%=hodname%>...!</h2>
       <h3 class ="center">Login Successful...!</h3>
       
       <h4 class="center">Click below to : </h4>

       
       <p class ="center"><a href = "addFaculty.html">Add Faculty</a></p>
       <p class ="center"><a href = "seefaculty.html">See details of Particular Faculty</a></p>
       <p class ="center"><a href ="seestudent.html">See details of Particular Student</a></p>
 
       <h4 class="center">Click below to : </h4>
       <p class ="center"><a href ="removefaculty.html">Remove a Faculty</a></p>
    </body>
</html>
