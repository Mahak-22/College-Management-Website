<%-- 
    Document   : addhod
    Created on : 23 Sep, 2024, 9:06:10 PM
    Author     : mahak
--%>

<%@page import="dto.AddHodDto"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>HOD Details</title>
    </head>
    <body bgcolor ="Aquamarine">
        <h3>Enter NEW HOD details : </h3>
        
        <form action="AddHod" method="Post">
            <table>
                <tr>
                    <td><strong>HOD ID : </strong></td>
                    <td><input type ="text" name="hodid" placeholder ="Enter HOD ID "/></td>
                </tr>
                
                <tr>
                    <td><strong>HOD Name : </strong></td>
                    <td><input type ="text" name="hodName" placeholder ="Enter HOD name "/></td>
                </tr>
                
                <tr>
                    <td><strong>HOD Password : </strong></td>
                    <td><input type ="password" name="hodpass" placeholder ="Enter HOD password "/></td>
                </tr>
                
                <tr>
                    <td><strong>HOD Department : </strong></td>
                    <td><input type ="text" name="hodept" placeholder ="Enter HOD department "/></td>
                </tr>
                
                <tr>
                    <td><strong>HOD Contact number : </strong></td>
                    <td><input type ="text" name="hodcon" placeholder ="Enter HOD contact "/></td>
                </tr>
                
                <tr>
                    <td><strong>HOD Permanent Address : </strong></td>
                    <td><input type ="text" name="hodadd" placeholder ="Enter HOD address "/></td>
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
