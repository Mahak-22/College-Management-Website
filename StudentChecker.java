/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import dto.StudentDto;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class StudentChecker 
{
    public boolean isStudentLogin(StudentDto student)
    {
        String sid = student.getStuid();
        String spass = student.getSpass();
        
        String stablepass="";
        
        try
        {
            Statement st = db.DBConnection.getStatement();
            
            String query = "SELECT stu_pass FROM stu WHERE stu_id = '"+sid+"'";
            System.out.println("Query = "+query);
            
            ResultSet rs = st.executeQuery(query);
            
            if(rs.next())
            {
                stablepass = rs.getString("stu_pass");
            }
        }
         catch(SQLException e)
            {
               System.out.println(e);
            }
        if(spass.equals(stablepass))
        {
            return true;
        }
        return false;
    }
}
