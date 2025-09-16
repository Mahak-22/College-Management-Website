/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import db.DBConnection;
import dto.NotesDto;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author mahak
 */
public class StuViewNotes
{
   public NotesDto isViewNotes(String subject)
    {
        NotesDto dto = new NotesDto();
        
        try
        {
            Statement st = DBConnection.getStatement();
            String query = "SELECT note FROM notes WHERE subject = '"+subject+"' ";
            
            System.out.println("Query = "+query);
            
            ResultSet rs = st.executeQuery(query);
            
            if(rs.next())
            {
                dto.setNotes(rs.getString(1));
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

