<%-- 
    Document   : removehod
    Created on : 24 Sep, 2024, 9:27:37 PM
    Author     : mahak
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Hod Details</title>
    </head>
    <body bgcolor ="Aquamarine">
        <h3>Enter HOD ID to get Hod Details : </h3>
        
        <form>
            <table>
                <tr>
                    <td><strong>HOD ID : </strong></td>
                    <td><input type ="text" name="hodid" placeholder ="Enter HOD ID "/></td>
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
