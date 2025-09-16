<%-- 
    Document   : addfaculty
    Created on : 24 Sep, 2024, 9:19:20 PM
    Author     : mahak
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Faculty</title>
    </head>
    <body bgcolor ="Aquamarine">
        <h3>Enter NEW Faculty details : </h3>
        
        <form action = "AddFaculty" method="Post">
            <table>
                <tr>
                    <td><strong>Faculty ID : </strong></td>
                    <td><input type ="text" name="fid" placeholder ="Enter faculty ID "/></td>
                </tr>
                
                <tr>
                    <td><strong>Faculty Password : </strong></td>
                    <td><input type ="password" name="fpass" placeholder ="Enter faculty password "/></td>
                </tr>
                
                <tr>
                    <td><strong>Faculty Name : </strong></td>
                    <td><input type ="text" name="fname" placeholder ="Enter faculty name "/></td>
                </tr>
                
                <tr>
                    <td><strong>Faculty Address : </strong></td>
                    <td><input type ="text" name="fadd" placeholder ="Enter faculty address "/></td>
                </tr>
                
                <tr>
                    <td><strong>Faculty Contact : </strong></td>
                    <td><input type ="text" name="fcontact" placeholder ="Enter faculty contact "/></td>
                </tr>
                
                <tr>
                    <td><strong>Faculty City : </strong></td>
                    <td><input type ="text" name="fcity" placeholder ="Enter faculty city "/></td>
                </tr>
                
                <tr>
                    <td><strong>Faculty Department : </strong></td>
                    <td><sELECT name = "fdept">
                <option>CSE</option>
                <option>IT</option>
                <option>AIML</option>
                <option>DS</option>
                <option>ECE</option>
                <option>IoT</option>             
                        </select></td>
                </tr>
                
                <tr>
                    <td><Strong>Role : </Strong></td>
                    <td><select name ="role">
                            <option>HOD</option>
                            <option>Faculty</option>
                        </select>
                
                <tr>
                    <td></td>
                    <td><input type = "reset" value ="Reset"/>
                        <input type = "submit" value ="Add"/>
                    </td>
                </tr>
            </table>
        </form>
    </body>
</html>
