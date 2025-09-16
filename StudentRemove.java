/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import db.DBConnection;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author mahak
 */
public class StudentRemove 
{
    public boolean isStuRemoved(String stuid)
    {
        try
        {
            Statement st = DBConnection.getStatement();
            
            String query = "DELETE FROM stu WHERE stu_id = '"+stuid+"' ";
            System.out.println(query);
            
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
