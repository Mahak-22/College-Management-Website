/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import db.DBConnection;
import dto.NoticeDto;
import java.sql.SQLException;
import java.sql.Statement;

public class AddNotice 
{
    public boolean isNoticeAdded(NoticeDto dto)
    {
        String regarding = dto.getRegarding();
        String notice = dto.getNotice();
        
        try
        {
            Statement st = DBConnection.getStatement();
            
            String query = "INSERT INTO notices VALUES ('"+regarding+"' , '"+notice+"') ";
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
