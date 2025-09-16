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
public class FacultyRemove 
{
    public boolean isFacultyRemove(FacultyDto faculty)
    {
        String fid = faculty.getfID();
        
        try
        {
            Statement st = DBConnection.getStatement();
            
            String query = "DELETE FROM faculty WHERE faculty_id = '"+fid+"' ";
            System.out.println("query = "+query);
            
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
