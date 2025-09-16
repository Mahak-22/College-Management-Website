package model;

import db.DBConnection;
import java.sql.SQLException;
import java.sql.Statement;
import dto.FacultyDto;

/**
 *
 * @author mahak
 */
public class AddNewFaculty 
{
    public boolean isAddNewFaculty(FacultyDto fdetails)
    {
        String fid = fdetails.getfID();
        String fname = fdetails.getfName();
        String fpass = fdetails.getfpass();
        String fdept = fdetails.getFdept();
        String fcon = fdetails.getFcontact();
        String fcity = fdetails.getFcity();
        String fadd = fdetails.getFadd();
        String role = fdetails.getRole();
        
        
        try
        {
            Statement st = DBConnection.getStatement();
            
            String query = "INSERT INTO faculty VALUES('"+fid+"', '"+fname+"', '"+fpass+"', '"+fadd+"' , '"+fcon+"' , '"+fcity+"' , '"+fdept+"', '"+role+"')";
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
