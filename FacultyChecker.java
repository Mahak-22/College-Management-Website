package model;
        
import dto.FacultyDto;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author mahak
 */
public class FacultyChecker 
{
     public boolean isFacultyLogin(FacultyDto faculty)
    {
        String fid = faculty.getfID();
        String fpass = faculty.getfpass();
        String ftablePass ="";
        
        try
        {
            Statement st = db.DBConnection.getStatement();
            
            String query ="SELECT faculty_pass FROM faculty WHERE faculty_id = '"+fid+"'";
            
            System.out.println("Query = "+query);
            
            ResultSet rs = st.executeQuery(query);
            
            if(rs.next())
            {
                ftablePass = rs.getString("faculty_pass");
            }   
        }
        catch(SQLException e)
        {
            System.out.println(e);
        }
        
        if(fpass.equals(ftablePass))
        {
            return true;
        }
        return false;
    }
}
