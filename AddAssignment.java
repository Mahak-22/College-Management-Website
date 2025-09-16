/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import db.DBConnection;
import dto.AssignmentDto;
import java.sql.Statement;
import java.sql.SQLException;

public class AddAssignment 
{
    public boolean isAssignmentAdded(AssignmentDto assign)
    {
        String assignName = assign.getAssignName();
        String assignment = assign.getAssignment();
        
        try
        {
            Statement st = DBConnection.getStatement();
            
            String query = "INSERT INTO assignments VALUES ('"+assignName+"', '"+assignment+"')";
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
