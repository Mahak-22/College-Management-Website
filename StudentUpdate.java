/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import db.DBConnection;
import dto.StudentDto;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author mahak
 */
public class StudentUpdate 
{
    public boolean isStuUpdate(StudentDto stu)
    {
        String stuId = stu.getStuid();
        String stuPass = stu.getSpass();
        String stuName = stu.getStuname();
        String stuAdd = stu.getStuAdd();
        String stuContact = stu.getStuContact();
        String stuCity = stu.getStuCity();
        String stuDept = stu.getStudept();
        
        try
        {
            Statement st = DBConnection.getStatement();
            
             String query = "UPDATE stu SET stu_name = '"+stuName+"', stu_add = '"+stuAdd+"', stu_con = '"+stuContact+"' , stu_city = '"+stuCity+"', stu_dept = '"+stuDept+"' WHERE stu_id = '"+stuId+"' ";
            
             int i = st.executeUpdate(query);

             if(i>0)
             {
                 return true;
             }
        }
        catch(SQLException e)
        {
            System.out.println(e);
        }
        return false;
    }
}
