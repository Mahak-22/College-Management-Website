<%-- 
    Document   : removefaculty
    Created on : 24 Sep, 2024, 9:29:14 PM
    Author     : mahak
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Remove Faculty</title>
    </head>
    <body bgcolor ="Aquamarine">
        <h3>Enter Faculty ID to remove Faculty : </h3>
        
        <form action="RemoveFaculty" method="Post">
            <table>
                <tr>
                    <td><strong>Faculty ID : </strong></td>
                    <td><input type ="text" name="fid" placeholder ="Enter faculty ID "/></td>
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
