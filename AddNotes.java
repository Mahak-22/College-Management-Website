package model;

import db.DBConnection;
import dto.NotesDto;
import java.sql.SQLException;
import java.sql.Statement;

public class AddNotes 
{
    public boolean isNotesAdded(NotesDto dto)
    {
        String subject = dto.getSubject();
        String notes = dto.getNotes();
        
        try
        {
            Statement st = DBConnection.getStatement();
            
            String query = "INSERT INTO notes VALUES ('"+subject+"','"+notes+"')" ;
            System.out.println("Query = "+query);
            
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
