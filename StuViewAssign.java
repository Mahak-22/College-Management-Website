/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import db.DBConnection;
import dto.AssignmentDto;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;


public class StuViewAssign 
{
    public AssignmentDto isViewAssign(String assignName)
    {
        AssignmentDto dto = new AssignmentDto();
        
        try
        {
            Statement st = DBConnection.getStatement();
            String query = "SELECT assignment FROM assignments WHERE assignName = '"+assignName+"' ";
            
            System.out.println("Query = "+query);
            
            ResultSet rs = st.executeQuery(query);
            
            if(rs.next())
            {
                dto.setAssignment(rs.getString(1));
                return dto;
            }
        }
        catch(SQLException e)
        {
            System.out.println(e);
        }
        return null;
    }
}
