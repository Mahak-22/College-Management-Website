<%-- 
    Document   : removeStudent
    Created on : 24 Sep, 2024, 9:29:41 PM
    Author     : mahak
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Remove Student</title>
    </head>
    <body bgcolor ="Aquamarine">
        <h3>Enter Student enrollment to remove Student : </h3>
        
        <form  action="RemoveStudent" method="Post">
            <table>
                <tr>
                    <td><strong>Student ID : </strong></td>
                    <td><input type ="text" name="stuid" placeholder ="Enter student ID "/></td>
                </tr>
                
                <tr>
                    <td></td>
                    <td><input type = "reset" value ="Reset"/>
                        <input type = "submit" value ="Submit"/>
                    </td>
                </tr>
            </table>
        </form>
    </body>
</html>
