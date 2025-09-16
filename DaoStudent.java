package dao;

import db.DBConnection;
import dto.StudentDto;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class DaoStudent
{
    public StudentDto getStudentData(String stuid)
    {
        StudentDto stu = new StudentDto();
        try
        {            
            Statement st = DBConnection.getStatement();
            String query = "SELECT * FROM stu WHERE stu_id  = '"+stuid+"'";
            System.out.println("Query = "+query);
            
            ResultSet rs = st.executeQuery(query);
            
            if(rs.next())
            {
                stu.setStuid(rs.getString(1));
                stu.setSpass(rs.getString(2));
                stu.setStuname(rs.getString(3));
                stu.setStuAdd(rs.getString(4));
                stu.setStuContact(rs.getString(5));
                stu.setStuCity(rs.getString(6));
                stu.setStudept(rs.getString(7));
                return stu;
            }
        }
        catch(SQLException e)
        {
            System.out.println(e);
        }
        return null;
    }
}
