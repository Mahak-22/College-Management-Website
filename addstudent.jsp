<%-- 
    Document   : addstudent
    Created on : 24 Sep, 2024, 9:23:12 PM
    Author     : mahak
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Student</title>
    </head>
    <body bgcolor ="Aquamarine">
        <h3>Enter NEW Student details : </h3>
        
        <form action="AddStudent" method ="Post">
            <table>
                <tr>
                    <td><strong>Student Enrollment : </strong></td>
                    <td><input type ="text" name="stuid" placeholder ="Enter student ID "/></td>
                </tr>
                
                <tr>
                    <td><strong>Student Password : </strong></td>
                    <td><input type ="password" name="stupass" placeholder ="Enter student password "/></td>
                </tr>
                
                <tr>
                    <td><strong>Student Name : </strong></td>
                    <td><input type ="text" name="stuname" placeholder ="Enter student name "/></td>
                </tr>
                
                <tr>
                    <td><strong>Student Address : </strong></td>
                    <td><input type ="text" name="stuadd" placeholder ="Enter student address "/></td>
                </tr>
                
                <tr>
                    <td><strong>Student Contact : </strong></td>
                    <td><input type ="text" name="stucontact" placeholder ="Enter student contact "/></td>
                </tr>
                
                <tr>
                    <td><strong>Student City : </strong></td>
                    <td><input type ="text" name="stucity" placeholder ="Enter student city "/></td>
                </tr>
                
                <tr>
                    <td><strong>Student Department : </strong></td>
                    <td><sELECT name = "studept">
                <option>CSE</option>
                <option>IT</option>
                <option>AIML</option>
                <option>DS</option>
                <option>ECE</option>
                <option>IoT</option>             
                        </select></td>
                </tr>
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
