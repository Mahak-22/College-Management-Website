package dao;

import db.DBConnection;
import dto.FacultyDto;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class DaoFaculty 
{
    public FacultyDto getFacultyData(String fid)
    {
        FacultyDto faculty = new FacultyDto();
        try
        {
            Statement st = DBConnection.getStatement();
            String query = "SELECT * FROM faculty WHERE faculty_id  = '"+fid+"'";
            System.out.println("Query = "+query);
            
            ResultSet rs = st.executeQuery(query);
            
            if(rs.next())
            {
                faculty.setfID(rs.getString(1));
                faculty.setfName(rs.getString(2));
                faculty.setfpass(rs.getString(3));
                faculty.setFadd(rs.getString(4));
                faculty.setFcontact(rs.getString(5));
                faculty.setFcity(rs.getString(6));
                faculty.setFdept(rs.getString(7));
                faculty.setRole(rs.getString(8));
                return faculty;
            }
        }
        catch(SQLException e)
        {
            System.out.println(e);
        }
        return null;
    }
}
