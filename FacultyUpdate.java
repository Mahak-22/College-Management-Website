/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import db.DBConnection;
import dto.FacultyDto;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author mahak
 */
public class FacultyUpdate 
{
    public boolean isFacultyUpdate(FacultyDto faculty)
    {
        String fId = faculty.getfID();
        String fName = faculty.getfName();
        String fContact = faculty.getFcontact();
        String fCity = faculty.getFcity();
        String fDept = faculty.getFdept();
        String fAdd = faculty.getFadd();
        String role = faculty.getRole();
        
        try
        {
            Statement st = DBConnection.getStatement();
            
            String query = "UPDATE faculty SET faculty_name = '"+fName+"', faculty_add = '"+fAdd+"', faculty_con = '"+fContact+"', faculty_city = '"+fCity+"', faculty_dept = '"+fDept+"' , role = '"+role+"' WHERE faculty_id = '"+fId+"' ";
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
